
# import adventOfCode2019_01/consts

import strutils

proc fuelFromMass(aMass: int64): int64 =
    return ((aMass div 3) - 2)

proc fuelFromMass(aMass: string): int64 =
    return int64(aMass.parseInt).fuelFromMass

proc partOne =
    var lResult: int64 = 0
    for line in lines "input":
        lResult += line.fuelFromMass
    echo "partOne $1"%[$lResult]

proc totalFuel(aMass: string): int64 =
    var lResult = aMass.fuelFromMass
    var lLastMass = lResult
    while true:
        lLastMass = lLastMass.fuelFromMass
        if (lLastMass <= 0):
            break
        lResult += lLastMass
    return lResult

proc partTwo =
    var lResult: int64 = 0
    for line in lines "input":
        lResult += line.totalFuel
    echo "partTwo $1"%[$lResult]

assert("14".totalFuel == 2)
assert("1969".totalFuel == 966)
assert("100756".totalFuel == 50346)

partOne()
partTwo()
