module main(A, M, B, Alarm);
    input A, M, B;
    output Alarm;
	 
    nand Nand0(aux0, B, M);
	 and And0(Alarm0, A, aux0);
	 
    //and And1(Alarm1, A, B);
	 
    //or Or0(Alarm, Alarm0, Alarm1);

endmodule
 
