module ledTest
(
    CLK, RSTn, LED_Out, BUZZER
);

    input CLK;
	 input RSTn;
	 output BUZZER;
	 output [4:0]LED_Out;
	 
	 /*******************************/
	 
	 wire LED0_Out;
	 
	 led0_module U1
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED0_Out )
	 );
	 
	 /*********************************/
	 
	 wire LED1_Out;
	 
	 led1_module U2
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED1_Out )
	 );
	 
	 /*********************************/
	 
	 wire LED2_Out;
	 
	 led2_module U3
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED2_Out )
	 );
	 
	 /*********************************/
	 
	 wire LED3_Out;
	 
	 led3_module U4
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED3_Out )
	 );
	 
	 /**********************************/
	 	 	 
	 wire LED4_Out;
	 
	 led4_module U5
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .LED_Out( LED4_Out )
	 );
	 
	 /**********************************/
	 
	 wire BUZZER;
	 assign BUZZER = 1;
	 
	 assign LED_Out = { LED4_Out, LED3_Out, LED2_Out, LED1_Out, LED0_Out };
	 
	 /***********************************/

endmodule