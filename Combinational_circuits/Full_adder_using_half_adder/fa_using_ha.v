module fa_using_ha(input a_fa,b_fa,cin_fa, output sum_fa,carry_fa);
wire w1,w2,w3;
half_adder ha1 (.a(a_fa),.b(b_fa),.sum(w1),.carry(w2));
half_affer ha2 (.a(w1),.b(cin_fa),.sum(sum_fa),.carry(w3));
or o1(carry_fa,w3,w2);
endmodule
