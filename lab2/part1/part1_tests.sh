echo "=========================== Testing Invertor "===========================

actsim cells.act "inv" < test_inv.actscript



echo "=========================== Testing nand2 "===========================

actsim cells.act "nand2" < test_nand2.actscript


echo "=========================== Testing nor2 "===========================

actsim cells.act "nor2" < test_nor2.actscript

echo "=========================== Testing C-element "===========================

actsim cells.act "c2elt" < test_c2elt.actscript