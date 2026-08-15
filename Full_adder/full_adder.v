module full_adder ( input a,b,Cin output sum,carry);
wire w1,w2;
xor x1(s,a,b,Cin);
and a1(w1,a,b);
and a2(w2,b,Cin);
or o1(carry,wi,w2);
end module
