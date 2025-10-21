#!/bin/sh

./sumprod < ./tests/001.dat > output.txt
cmp output.txt ./tests/001.ans && echo "test 1 - OK" || exit 1

./sumprod < ./tests/002.dat > output.txt
cmp output.txt ./tests/002.ans && echo "test 2 - OK" || exit 1

./sumprod < ./tests/003.dat > output.txt
cmp output.txt ./tests/003.ans && echo "test 3 - OK" || exit 1

./sumprod < ./tests/004.dat > output.txt
cmp output.txt ./tests/004.ans && echo "test 4 - OK" || exit 1

./sumprod 123  > output.txt
cmp output.txt ./tests/001.ans && echo "test 5 - OK" || exit 1

./sumprod 99 > output.txt
cmp output.txt ./tests/002.ans && echo "test 6 - OK" || exit 1

./sumprod 0 > output.txt
cmp output.txt ./tests/003.ans && echo "test 7 - OK" || exit 1

./sumprod 101  > output.txt
cmp output.txt ./tests/004.ans && echo "test 8 - OK" || exit 1
