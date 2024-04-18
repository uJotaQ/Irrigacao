module exibir_matriz(A, M, B, alarm, valor_0, a7, b7, c7, d7, e7, f7, g7);
	input A, M, B, alarm, valor_0;
	output a7, b7, c7, d7, e7, f7, g7;
	
	not not0(not_a, A);
	not not1(not_m, M);
	not not2(not_b, B);
	not not3(not_alarm, alarm);
	
	// LED (A)
	and and0(aux0, not_a, not_m);
	and and1(aux1, not_a, B);
	or Or0(a7, aux0, aux1);

	// LED (B)
	not not4(b7, valor_0);
	
	// LED (C)
	not not5(c7, valor_0);
	
	// LED (D)
	and And2(d7, not_a, not_b, not_m);
	
	// LED (E)
	and and2(aux2, not_a, not_m);
	and and3(aux3, M, B);
	or Or1(e7, aux2, aux3);
	
	// LED (F)
	and and4(aux4, not_a, not_m);
	and and5(aux5, M, B);
	or Or2(f7, aux4, aux5);
	
	// LED (G)
	and and6(g7, not_a, not_m);
	
endmodule