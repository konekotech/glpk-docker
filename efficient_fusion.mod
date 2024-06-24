param i_max;
set I := 1..i_max;
param b{I};

param j_max;
set J := 1..j_max;
param e{J};

param c;

var x{I, J} binary;

minimize WASTED_EXP: sum{i in I}(b[i] + sum{j in J}(e[j] * x[i, j]) - c);
s.t. COUNTER_STOP{i in I}: b[i] + sum{j in J}(e[j] * x[i, j]) >= c;
s.t. UNIQUE{j in J}: sum{i in I}(x[i, j]) <= 1;

end;

