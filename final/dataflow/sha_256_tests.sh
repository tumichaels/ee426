echo "=========================== Final SHA-256 Component Tests "===========================


echo ""
echo "~~~~~~~~~~~~~~~~~ Expander Test (Message Processing) ~~~~~~~~~~~~~~~"

actsim sha256_tests.act -Wall:off "expander_test" < chptest.actscript | grep

