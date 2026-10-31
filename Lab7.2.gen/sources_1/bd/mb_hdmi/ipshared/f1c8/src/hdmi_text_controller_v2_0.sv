//Provided HDMI_Text_controller_v1_0 for HDMI AXI4 IP 
//Fall 2024 Distribution

//Modified 3/10/24 by Zuofu
//Updated 11/18/24 by Zuofu


`timescale 1 ns / 1 ps

module hdmi_text_controller_v2_0 #
(
    // Parameters of Axi Slave Bus Interface S00_AXI
    // Modify parameters as necessary for access of full VRAM range

    parameter integer C_AXI_DATA_WIDTH	= 32,
    parameter integer C_AXI_ADDR_WIDTH	= 14 
)
(
    // Users to add ports here
    //
    output logic hdmi_clk_n,
    output logic hdmi_clk_p,
    output logic [2:0] hdmi_tx_n,
    output logic [2:0] hdmi_tx_p,

    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface AXI
    input logic  axi_aclk,
    input logic  axi_aresetn,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_awaddr,
    input logic [2 : 0] axi_awprot,
    input logic  axi_awvalid,
    output logic  axi_awready,
    input logic [C_AXI_DATA_WIDTH-1 : 0] axi_wdata,
    input logic [(C_AXI_DATA_WIDTH/8)-1 : 0] axi_wstrb,
    input logic  axi_wvalid,
    output logic  axi_wready,
    output logic [1 : 0] axi_bresp,
    output logic  axi_bvalid,
    input logic  axi_bready,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_araddr,
    input logic [2 : 0] axi_arprot,
    input logic  axi_arvalid,
    output logic  axi_arready,
    output logic [C_AXI_DATA_WIDTH-1 : 0] axi_rdata,
    output logic [1 : 0] axi_rresp,
    output logic  axi_rvalid,
    input logic  axi_rready
);


// wires to get output of memory and process it
// processed output goes into color mapper
logic [31:0] color_mapper_input;
logic [10:0] color_mapper_address;


// BRAM with dual port: Port A for AXI read/write, Port B for display reads
blk_mem_gen_0 vram_reg (
    // Port A: AXI read/write interface
    .addra(axi_bram_addr),
    .clka(axi_aclk),
    .dina(axi_bram_wrdata),
    .douta(axi_bram_rddata),  // Read data for AXI reads
    .wea(axi_bram_we),
    .ena(1'b1),

    // Port B: Display read interface
    .addrb(color_mapper_address),
    .clkb(axi_aclk),
    .dinb(),  // Not used for read-only port
    .doutb(color_mapper_input),
    .web(4'b0),  // Read-only
    .enb(1'b1)
);


//additional logic variables as necessary to support VGA, and HDMI modules.
logic clk_25MHz, clk_125MHz, clk, clk_100MHz;
logic locked;
logic [9:0] DrawX, DrawY;
logic [3:0] red, blue, green;
logic hsync, vsync, vde;
logic [9:0] char_x, char_y;
logic [11:0] char_idx;

logic [1:0] byte_sel;
logic [15:0] character;


// BRAM interface signals (Port A - AXI read/write)
logic [10:0] axi_bram_addr;
logic [31:0] axi_bram_wrdata;
logic [31:0] axi_bram_rddata;
logic [3:0] axi_bram_we;
logic [31:0] color_palette [8];

// Instantiation of Axi Bus Interface AXI
hdmi_text_controller_v1_0_AXI # ( 
    .C_S_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH)
) hdmi_text_controller_v1_0_AXI_inst (
    .frame_clk(vsync),
    .DrawX(DrawX),
    .DrawY(DrawY),

    // BRAM interface (Port A - read/write)
    .bram_addr(axi_bram_addr),
    .bram_wrdata(axi_bram_wrdata),
    .bram_rddata(axi_bram_rddata),
    .bram_we(axi_bram_we),

    .color_palette_regs(color_palette),

    .S_AXI_ACLK(axi_aclk),
    .S_AXI_ARESETN(axi_aresetn),
    .S_AXI_AWADDR(axi_awaddr),
    .S_AXI_AWPROT(axi_awprot),
    .S_AXI_AWVALID(axi_awvalid),
    .S_AXI_AWREADY(axi_awready),
    .S_AXI_WDATA(axi_wdata),
    .S_AXI_WSTRB(axi_wstrb),
    .S_AXI_WVALID(axi_wvalid),
    .S_AXI_WREADY(axi_wready),
    
    .S_AXI_BRESP(axi_bresp),
    .S_AXI_BVALID(axi_bvalid),
    .S_AXI_BREADY(axi_bready),
    .S_AXI_ARADDR(axi_araddr),
    .S_AXI_ARPROT(axi_arprot),

    .S_AXI_ARVALID(axi_arvalid),
    .S_AXI_ARREADY(axi_arready),
    .S_AXI_RDATA(axi_rdata),

    .S_AXI_RRESP(axi_rresp),

    .S_AXI_RVALID(axi_rvalid),
    .S_AXI_RREADY(axi_rready)
);



    
    assign char_x = DrawX >> 3;  // Divide by 8 (each char is 8 pixels wide)
    assign char_y = DrawY >> 4;  // Divide by 16 (each char is 16 pixels tall)
    assign char_idx = char_y * 80 + char_x;  // Index into 80x30 character grid
    assign color_mapper_address = char_idx >> 1;  // Divide by 2 (2 characters per 32-bit word)
    assign byte_sel = char_idx[0];  // Select which character in the word
    
    always_comb begin
        case(byte_sel) 
            1'b0: character = color_mapper_input[15:0];   // Lower 16 bits
            1'b1: character = color_mapper_input[31:16];  // Upper 16 bits
            default: character = 16'h0000;
        endcase
    end
    
    logic [15:0] FGpalette;
    logic [15:0] BGpalette;
    logic [3:0]  FGD_idx;
    logic [3:0]  BGD_idx;
    always_comb begin
        FGD_idx = character[7:4];
        BGD_idx = character[3:0];
        if(FGD_idx[0] == 1'b1)
            FGpalette = color_palette[FGD_idx[3:1]][31:16];
        else
            FGpalette = color_palette[FGD_idx[3:1]][15:0];
        
        if(BGD_idx[0] == 1'b1)
            BGpalette = color_palette[BGD_idx[3:1]][31:16];
        else
            BGpalette = color_palette[BGD_idx[3:1]][15:0];

    end
    
    //Instiante clocking wizard, VGA sync generator modules, and VGA-HDMI IP here. For a hint, refer to the provided
//top-level from the previous lab. You should get the IP to generate a valid HDMI signal (e.g. blue screen or gradient)
//prior to working on the text drawing.
    
    color_mapper color_instance(
       
        .DrawX(DrawX),
        .DrawY(DrawY),

        .character(character),
        .FGpalette(FGpalette),
        .BGpalette(BGpalette),

        .Red(red),
        .Green(green),
        .Blue(blue)
    );
//clock wizard configured with a 1x and 5x clock for HDMI
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(~axi_aresetn),
        .locked(locked),
        .clk_in1(axi_aclk)
    );
    
    //VGA Sync signal generator
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(~axi_aresetn),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .DrawX(DrawX),
        .DrawY(DrawY)
    );    

    //Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        //Clocking and Reset
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        .rst(~axi_aresetn),
        //Color and Sync Signals
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_clk_p),          
        .TMDS_CLK_N(hdmi_clk_n),          
        .TMDS_DATA_P(hdmi_tx_p),         
        .TMDS_DATA_N(hdmi_tx_n)          
    );

// User logic ends

endmodule
