// Generated by Classiq.
// Classiq version: 0.49.0
// Creation timestamp: 2024-09-23T18:28:18.803151+00:00
// Random seed: 971360044

OPENQASM 2.0;
include "qelib1.inc";
gate apply_to_all_expanded___4 q0,q1,q2,q3 {
  h q0;
  h q1;
  h q2;
  h q3;
}

gate main_hadamard_transform q0,q1,q2,q3 {
  apply_to_all_expanded___4 q0,q1,q2,q3;
}

gate arithmetic_adder q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14 {
  cx q0,q4;
  cx q1,q5;
  cx q2,q6;
  cx q3,q7;
  x q9;
  x q10;
  cx q9,q4;
  cx q9,q14;
  ccx q14,q4,q9;
  cx q10,q5;
  cx q10,q9;
  ccx q9,q5,q10;
  ccx q10,q6,q11;
  ccx q11,q7,q12;
  cx q12,q8;
  ccx q11,q7,q12;
  cx q12,q11;
  cx q11,q7;
  ccx q10,q6,q11;
  cx q11,q10;
  cx q10,q6;
  ccx q9,q5,q10;
  cx q10,q9;
  cx q9,q5;
  ccx q14,q4,q9;
  cx q9,q14;
  cx q14,q4;
  x q9;
  x q10;
}

gate arithmetic_bitwisexor q0,q1,q2,q3,q4,q5,q6,q7,q8 {
  cx q0,q4;
  cx q1,q5;
  cx q2,q6;
  cx q3,q7;
}

gate main_arithmetic q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14 {
  arithmetic_adder q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14;
  arithmetic_bitwisexor q0,q1,q2,q3,q4,q5,q6,q7,q8;
}

qreg q[15];
main_hadamard_transform q[0],q[1],q[2],q[3];
main_arithmetic q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14];
