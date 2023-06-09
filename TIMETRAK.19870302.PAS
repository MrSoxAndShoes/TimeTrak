program TimeTracks;
var
   Time,
   Seconds,
   Minutes    : real;
   NumTrks,
   Counter    : integer;

procedure InitScreen;
   begin
      clrscr;
      writeln;
      writeln('Disc Track Time':30);
      writeln;
      writeln('To use this program, just  simply  enter  the');
      writeln('appropriate track time in the format of HH.MM');
      writeln('After all the track times are  received,  the');
      writeln('program  will  display  the  total  amount of');
      writeln('disc time. To exit, enter a zero.');
      writeln;
   end;

procedure ProcessTrack;
   begin
      write('Length of Track ', Counter:2, ': ');
      readln(Time);
      Seconds := Seconds + int(frac(Time) * 100);
      Minutes := Minutes + int(Time);
   end;

Begin
   InitScreen;
   repeat
      writeln;
      write('Enter the number of song tracks: ');
      readln(NumTrks);
      if NumTrks > 0 then begin
         writeln;
         for Counter := 1 to NumTrks do
            ProcessTrack;
         Minutes := Minutes + Seconds / 60;
         Seconds := int(frac(Seconds)) * 100;
         writeln;
         write('Total Disc Length is ', Minutes:3:0,':');
         writeln(Seconds:2:0);
      end;
      Minutes := 0; Seconds := 0
   until NumTrks <= 0;
End.
