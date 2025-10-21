#!/bin/sh

./sum_prod < ./tests/001.dat > output.txt
cmp output.txt ./tests/001.ans && echo "test 1 - OK" || exit 1

./sum_prod < ./tests/002.dat > output.txt
cmp output.txt ./tests/002.ans && echo "test 2 - OK" || exit 1

./sum_prod < ./tests/003.dat > output.txt
cmp output.txt ./tests/003.ans && echo "test 3 - OK" || exit 1

./sum_prod < ./tests/004.dat > output.txt
cmp output.txt ./tests/004.ans && echo "test 4 - OK" || exit 1

./sum_prod 123 < ./tests/005.dat > output.txt
cmp output.txt ./tests/005.ans && echo "test 5 - OK" || exit 1

./sum_prod 99< ./tests/001.dat > output.txt
cmp output.txt ./tests/001.ans && echo "test 6 - OK" || exit 1

./sum_prod 0< ./tests/001.dat > output.txt
cmp output.txt ./tests/001.ans && echo "test 7 - OK" || exit 1

./sum_prod 101< ./tests/001.dat > output.txt
cmp output.txt ./tests/001.ans && echo "test 8 - OK" || exit 1
