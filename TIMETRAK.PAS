program TimeTrack;

{ TIMETRAK.PAS - A program to calculate the total time for songs }
{                from a CD, LP, or whatever.                     }

{ Copyright (C) 1987, 1992, 2023 Erik W. Anderson                }

{   This program is dedicated to the public domain of software   }
{ to be freely used and distributed without charge. Program code }
{ may be changed, copied, or otherwise mangled freely without    }
{ risk of violating my copyright. Of course, I as the author, do }
{ retain the credit for originating this piece of work - but I   }
{ promise not to get too vain about it. Have fun with it!        }

var
   trackTime,
   totalSeconds  : real;
   numberTracks,
   totalMinutes  : integer;
   runAgain      : char;

begin
   Writeln('TimeTrak - Copyright (C) 1987, 1992, 2023 Erik W. Anderson');
   Writeln;
   Writeln('  This is a program to calculate the total amount of time for');
   Writeln('a collection of songs. Enter the time for each song in the');
   Writeln('format MM.SS where MM = minutes and SS = seconds.');
   Writeln;
   Writeln('  When fiinished, enter a zero for current track time and the');
   Writeln('total time will be reported in minutes and seconds.');
   Writeln;

   repeat
      numberTracks := 0;
      totalSeconds := 0;
      totalMinutes := 0;

      repeat
         Write('Time for track ', numberTracks+1:2, ': ');
         Readln(trackTime);
         trackTime := Abs(trackTime);

         if trackTime > 0 then
            begin
               numberTracks := numberTracks + 1;
               totalMinutes := totalMinutes + Trunc(trackTime);
               totalSeconds := totalSeconds + Frac(trackTime);
            end
      until trackTime = 0;

      if numberTracks > 0 then
         begin
            totalSeconds := totalSeconds / 0.6;
            totalMinutes := totalMinutes + Trunc(totalSeconds);
            totalSeconds := Frac(totalSeconds) * 60;

            Writeln;
            Write('The total time for ', numberTracks, ' track(s) is ', totalMinutes:0, ':');
            if totalSeconds < 10 then
               Write('0');
            Writeln(totalSeconds:0:0, '.');
         end;

      Writeln;
      Write('Run again (Y/N)? ');
      Readln(runAgain);
   until UpCase(runAgain) <> 'Y';
end.
