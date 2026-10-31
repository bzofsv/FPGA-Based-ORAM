//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Zuofu Cheng   08-19-2023                               --
//                                                                       --
//    Fall 2023 Distribution                                             --
//                                                                       --
//    For use with ECE 385 USB + HDMI                                    --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------


module  color_mapper ( input  logic [9:0]  DrawX, DrawY, 
                       input  logic [15:0] character,
                       input  logic [15:0] FGpalette,
                       input  logic [15:0] BGpalette, 
                       output logic [3:0]  Red, Green, Blue );
    
	
    /* Old Ball: Generated square box by checking if the current pixel is within a square of length
    2 x BallS, centered at (BallX, BallY).  Note that this requires unsigned comparisons.
	 
    if ((DrawX >= BallX - Ball_size) &&
       (DrawX <= BallX + Ball_size) &&
       (DrawY >= BallY - Ball_size) &&
       (DrawY <= BallY + Ball_size))
       )

     New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
     this single line is quite powerful descriptively, it causes the synthesis tool to use up three
     of the 120 available multipliers on the chip!  Since the multiplicants are required to be signed,
	  we have to first cast them from logic to int (signed by default) before they are multiplied). 
	  
    int DistX, DistY, Size;
    assign DistX = DrawX - BallX;
    assign DistY = DrawY - BallY;
    assign Size = Ball_size;
  
    always_comb
    begin:Ball_on_proc
        if ( (DistX*DistX + DistY*DistY) <= (Size * Size) )
            ball_on = 1'b1;
        else 
            ball_on = 1'b0;
     end 
     */
    
    logic [10:0] font_address;
    assign font_address = 16 * character[14:8] + DrawY % 16;
    logic [7:0] charLine;
    font_rom fontstore(
        .addr(font_address),
        .data(charLine)
       );
    logic [3:0] fgR, fgG, fgB, bgR, bgG, bgB;
    always_comb
    begin:RGB_Display
        fgR = FGpalette[11:8];
        fgG = FGpalette[7:4];
        fgB = FGpalette[3:0];
        
        bgR = BGpalette[11:8];
        bgG = BGpalette[7:4];
        bgB = BGpalette[3:0]; 
       
        Red   = bgR;
        Green = bgG;
        Blue  = bgB;
        
        if ((charLine[7-DrawX%8] == 1'b1)) begin 
            Red   = character[15] == 1 ? bgR : fgR;
            Green = character[15] == 1 ? bgG : fgG;
            Blue  = character[15] == 1 ? bgB : fgB;
        end       
        else begin 
            Red   =  character[15] == 1 ? fgR : bgR;
            Green =  character[15] == 1 ? fgG : bgG;
            Blue  =  character[15] == 1 ? fgB : bgB;
        end      
    end 
    
endmodule
