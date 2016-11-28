#!/bin/bash

test_datum=`date +%d.%m.%Y`
echo $test_datum

heute=`date +%s`
echo $heute

datum_str="2017-01-01"
datum=`date -d "${datum_str}" "+%s"`
echo $datum

