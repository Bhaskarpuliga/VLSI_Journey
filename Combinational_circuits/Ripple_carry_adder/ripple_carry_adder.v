module ripple_carry_adder(input a_rca [3:0],b_rca [3:0], input cin,
 output sum_rca [3:0],cout)
wire w1,w2,w3;
// connection by order
full_adder fa1(a_rca[0],b_rca[0],cin,sum_rca[0],w1);