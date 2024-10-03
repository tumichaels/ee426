## Testing 10-place buffer

echo "=========================== Testing 10-place buffer"===========================

echo "~~~~~ Test 1 ~~~~~~"
actsim testbuf.act "test" < cycle

echo "~~~~~ Test 2 ~~~~~~"
actsim testbuf.act "test2" < cycle


echo "=========================== Testing 10-place prioqueue"===========================

actsim testpque.act "test" < cycle