program TimeTrack ;

   uses
      Crt ;

   var
      TrackTime,
      TotalSeconds  : real ;
      i, NumTracks,
      TotalMinutes  : integer ;

   begin
      clrscr ;
      textcolor (Cyan) ;
      writeln ('  This is a program to calculate the total amount of time for') ;
      writeln ('a collection of songs. First, you''ll be prompted to enter the') ;
      writeln ('number of songs to total; then, enter the time for each song') ;
      writeln ('in the format MM.SS where MM = minutes & SS = seconds.') ;
      writeln ;
      writeln ('To exit, enter a zero for the number of tracks...') ;
      writeln ;

      repeat
         write ('Number of tracks:  ') ; readln (NumTracks) ;

         TotalSeconds := 0 ;
         TotalMinutes := 0 ;

         if NumTracks > 0 then
            begin
               for i := 1 to NumTracks do
                  begin
                     write ('Time for track ', i:2, ': ') ;
                     readln (TrackTime) ;
                     TotalMinutes := TotalMinutes + trunc (TrackTime) ;
                     TotalSeconds := TotalSeconds + frac (TrackTime) ;
                  end ;

               TotalSeconds := TotalSeconds / 0.6 ;
               TotalMinutes := TotalMinutes +  trunc (TotalSeconds) ;
               TotalSeconds := 0.6 * (100 * frac (TotalSeconds)) ;

               writeln ;
               writeln ('The total time is ', TotalMinutes:0, ':', TotalSeconds:0:0) ;
               writeln ;
            end ;

      until NumTracks < 1 ;
   end.
