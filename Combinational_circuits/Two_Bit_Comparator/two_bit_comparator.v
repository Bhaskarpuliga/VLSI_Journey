module two_bit_comparator(input[1:0] a,b, output alb,agb,aeb);
wire a1bar,a0bar,b1bar,b0bar,w5,w6,w7,w8,w9,w10,w11,w12;
not n1(a1bar,a[1]);
not n2(a0bar,a[0]);
not n3(b1bar,b[1]);
not n4(b0bar,b[0] );
and a1(w5,a[0],b1bar,b0bar);
and a2(w6,a[1],b1bar);
and a3(w7,a[1],a[0],b0bar);
xnor xn1(w8,a[0],b[0]);
xnor xn2(w9,a[1],b[1]);
and a4(w10,a1bar,a0bar,b[0]);
and a5(w11,a0bar,b[1],b[0]);
and a6(w12,a1bar,b[1]);
or o1(agb,w5,w6,w7);
or o2(aeb,w8,w9);
or o3(alb,w10,w11,w12);
endmodule