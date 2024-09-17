set style data lines
plot 'test.plot' using ($2*1e9):3 title 'v(in)', 'test.plot' using ($2*1e9):4 title 'v(out)'
