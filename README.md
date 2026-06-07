# sid2analyzer by J.Wassermann / Spider Jerusalem

## Description:
    Converts a SID file into a native C64 executable with my sidanalyzer.
    1x speed, Raster IRQ tunes only.
    Load address must be >= $1000.

## Usage:

       sid2analyzer [options] {file}

## Usage examples:
    sid2analyzer -o Game_On_1993_06.prg Game_On_1993_06.sid
    sid2analyzer -nc -o Game_On_1993_06.prg Game_On_1993_06.sid

## Command line options:

       -nc          : do not exomizer compress output file
       -o {filename}: specify output filename [default: out.prg]

Have fun!
