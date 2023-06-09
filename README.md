# TimeTrak
A program to calculate the total time for songs from a CD, LP, or whatever.

## Background
I wrote this Turbo Pascal 3.x program for calculating the length of time when recording a CD to cassette or creating a mixtape, and have edited it over the years as my programming skills improved, even modifying it to compile with Turbo Pascal for Windows 1.0 when it was released.

## Files (Newest to Oldest)

### [TIMETRAK.PAS](TIMETRAK.PAS)
The most up-to-date version, compatible with Turbo Pascal 3.x. To compile with version 4.0 or newer, either add a "uses Crt;" statement, or remove "ClrScr;".

- Fixed output issue for seconds.
- Removed need for number of tracks and instead prompts the user to enter zero for the next track time to sum up totals.

### [TIMETRAK.M2](TIMETRAK.M2)
Playing around with a simple conversion to [Turbo Modula-2](https://techtinkering.com/2013/03/12/if-only-borland-had-stuck-with-turbo-modula-2-for-cpm/).

### [TIMETRAK (7/26/1993)](TIMETRAK.19930726.PAS)
Further enhancement for Turbo Pascal (MS-DOS).

- Still has output issue with seconds.

### [TIMETRAK (9/24/1992)](TIMETRAK.19920924.PAS)
Added statements to compile as a 16-bit Windows 3.x application with Turbo Pascal for Windows 1.x.

- [**Resource file**](TIMETRAK.19920924.RES) includes a custom icon.
- Still has output issue with seconds.

### [TIMETRAK (6/10/1992)](TIMETRAK.19920610.PAS)
Improved logic and compatible with Turbo Pascal 4.x and newer.

- Still has output issue with seconds.
- Why did I become a fan of the spacing between end of statement and semicolon? Yuck!

### [TIMETRAK (3/02/1987)](TIMETRAK.19870302.PAS)
The original program code written for Turbo Pascal 3.x.

- Unnecessary use of procedures.
- Use of global variables in procedures.
- Unnecessary calculations.
- Poor output formatting including leading space instead of zero for seconds if less than 10.

## Dedication
This program is dedicated to the public domain of software to be freely used and distributed without charge. Program code may be changed, copied, or otherwise mangled freely without risk of violating my copyright. Of course, I as the author, do retain the credit for originating this piece of work - but I promise not to get too vain about it. Have fun with it!

_Copyright (C) 1987, 1992, 2023 Erik W. Anderson_
