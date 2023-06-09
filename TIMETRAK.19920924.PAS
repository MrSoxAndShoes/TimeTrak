Program TimeTrack ;

{$R timetrak.res}

uses
  Strings, WinCrt ;

var
  TotalSeconds,
  TotalMinutes,
  i, k, NumTracks : integer ;

  TrackTime       : real ;

begin
  StrCopy (WindowTitle, 'TimeTrak') ;

  clrscr ;
  writeln ('  This is a program to track the total amount of time for a') ;
  writeln ('collection of songs. First, you''ll have to enter the number') ;
  writeln ('of tracks. Second, enter the time for each song in the format') ;
  writeln ('MM.SS where MM = minutes & SS = seconds. To exit, enter a zero') ;
  writeln ('for the number of tracks.') ;
  writeln ;

  repeat
     write ('Number of tracks: ') ; readln (NumTracks) ;

     TotalSeconds := 0 ;
     TotalMinutes := 0 ;

     if NumTracks > 0 then
        begin
           for I := 1 to NumTracks do
              begin
                 write ('Time for track ', I:2, ': ') ;
                 readln (TrackTime) ;
                 TotalMinutes := TotalMinutes + trunc (TrackTime) ;
                 TotalSeconds := TotalSeconds + round (100 * frac (TrackTime)) ;
              end ;

           TotalMinutes := TotalMinutes + TotalSeconds div 60 ;
           TotalSeconds := TotalSeconds mod 60 ;

           writeln ;
           writeln ('The total time is ', TotalMinutes:0, ':', TotalSeconds:0) ;
           writeln ;
        end ;
  until Numtracks < 1 ;

  DoneWinCrt ;
end.