module full_adder ( input a,b,Cin, output sum,carry);
wire w1,w2,w3;
xor x1(s,a,b,Cin);
and a1(w1,a,b);
and a2(w2,b,Cin);
or o1(carry,w1,w2,w3);
and a3(w3,a,Cin);
endmodule
