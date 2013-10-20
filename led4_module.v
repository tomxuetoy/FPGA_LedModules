module led4_module
(
    CLK, RSTn, LED_Out
);

    input CLK;
    input RSTn;
    output LED_Out;
    
    /*************************************/
    
    parameter T100MS = 24'd16_000_000;
    
    /*************************************/
    
    reg [23:0]Count1;
    
    always @ ( posedge CLK or negedge RSTn )
      if( !RSTn )	
	        Count1 <= 24'd0;
	    else if( Count1 == T100MS )
	        Count1 <= 24'd0;
	    else
	        Count1 <= Count1 + 1'b1;
	        
	/*************************************/
	
	reg rLED_Out;
	
	always @ ( posedge CLK or negedge RSTn )
        if( !RSTn ) 
            rLED_Out <= 1'b0;
        else if( Count1 >= 24'd10_500_000 && Count1 < 24'd16_000_000 )
            rLED_Out <= 1'b1;
        else 
            rLED_Out <= 1'b0;
            
     /***************************************/
     
     assign LED_Out = rLED_Out;
     
     /***************************************/
              
    
endmodule