module main_joao(A, M, B, AL, VE, US, UA, T, GT, AS);

	input A, M, B, US, UA, T;
	output AL, VE, GT, AS;
	
	Alarme alarm_inst(A, M, B, AL);
	Valvula valvula_inst(AL, A, B, VE);
	Gotejamento gotejamento_inst(US, UA, T, M, AL, GT);
	Aspersao aspersao_inst(AS, GT, US);
	
endmodule
