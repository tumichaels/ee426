echo "=========================== Final SHA-256 Component Tests "===========================


echo ""
echo "~~~~~~~~~~~~~~~~~ Expander Test (Message Processing) ~~~~~~~~~~~~~~~"
echo "Bytes Inputed in ascii: 1234567891011121314151617181912021224241"

actsim sha256_tests.act -Wall:off "expander_test" < chptest.actscript | grep "value"

echo "Exepected Results:"
echo "825373492,892745528,959524913,825307697,858862641,892417585,925972529,959525424,842084914,875705393,2147483648,0,0,0,0,320,1617366825,3742777698,3361914523,1122511948,1696449449,1937003021,3166854460,1805833415,1614863588,1047970524,954128491,509069550,715857615,3660559951,3634868152,723514309, 251626524,2696966547,3038021173,3538598452,323608889,1345530744,3946090639,1599801837,3933425298,1087947807,137959516,150087611,2473080018,2648223053,3365865169,830495239, 3801524665,730758500,491769131,1600736614,13788344,3463279184,2930679928,1149357856,2713202269,999157538,2035340070,247445608,2039681629,4076381211,393155780,3756278319"


echo ""
echo "~~~~~~~~~~~~~~~~~ Compressor Test (Message Processing) ~~~~~~~~~~~~~~~"
echo "Input is expander test."

actsim sha256_tests.act -Wall:off "compressor_test" < chptest.actscript | grep "value"


echo ""
echo "~~~~~~~~~~~~~~~~~ sha_256 Test (Message Processing) ~~~~~~~~~~~~~~~"
echo "Input is expander test."

actsim sha256_tests.act -Wall:off "sha_256_test" < chptest.actscript | grep "value"
