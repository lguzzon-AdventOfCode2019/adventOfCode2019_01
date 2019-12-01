
import unittest

import adventOfCode2019_01
import adventOfCode2019_01/consts


suite "unit-test suite":
    test "getMessage":
        assert(cHelloWorld == getMessage())
