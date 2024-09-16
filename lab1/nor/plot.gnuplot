set style data lines
plot 'test.plot' using ($2*1e9):3 title 'v(in1)', 'test.plot' using ($2*1e9):4 title 'v(in2)', 'test.plot' using ($2*1e9):5 title 'v(out)'
