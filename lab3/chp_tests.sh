## Testing 10-place buffer

echo "=========================== CHP TESTS "===========================
echo ""
echo "~~~~~~~~~~~~~~~~~ Buffer Test ~~~~~~~~~~~~~~~"

actsim chp_tests.act -Wall:off "buf_test" < chptest.actscript


# echo "~~~~~~~~~~~~~~~~~ Buffer Test ~~~~~~~~~~~~~~~"
# actsim chp_tests.act -Wall:off "init_buf_test" < chptest.actscript
echo ""
echo "~~~~~~~~~~~~~~~~~ Source Test ~~~~~~~~~~~~~~~"
actsim chp_tests.act -Wall:off "source_test" < chptest.actscript
echo ""
echo "~~~~~~~~~~~~~~~~~ Sink Test ~~~~~~~~~~~~~~~"
actsim chp_tests.act -Wall:off "sink_test" < chptest.actscript
echo ""
echo "~~~~~~~~~~~~~~~~~ Copy Test ~~~~~~~~~~~~~~~"
actsim chp_tests.act -Wall:off "copy_test" < chptest.actscript
echo ""
echo "~~~~~~~~~~~~~~~~~ Split Test ~~~~~~~~~~~~~~~"
actsim chp_tests.act -Wall:off "split_test" < chptest.actscript

echo ""
echo "~~~~~~~~~~~~~~~~~ Merge Test ~~~~~~~~~~~~~~~"
actsim chp_tests.act -Wall:off "merge_test" < chptest.actscript

echo ""
echo "~~~~~~~~~~~~~~~~~ Adder Test ~~~~~~~~~~~~~~~"
actsim chp_tests.act -Wall:off "adder_test" < chptest.actscript | grep -E -i "Received|sending"