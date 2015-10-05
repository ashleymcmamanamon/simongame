program SimonFramework;

Uses sysutils, Crt, Classes;

var ChoiceNum : integer;
  name : string;
  score : integer;
  scores: array[1..10,1..2] of integer;
<<<<<<< HEAD
  Colors : Array[1..4] of string;
  ColorTally : string;
  TempString, TempString2 : string;
  time : LongWord;
  menu : integer;

Procedure GenSettings; forward;
Procedure GenLeaderboard; forward;
Procedure GenMenu; forward;
Procedure ChangeDelay();
begin
  write('Enter the time in seconds you wish to change the Delay Time to: ');
  readln(time);
  time:=time*1000;
  GenSettings();
end;
Procedure ShowColor(color : string; no : integer);
begin
   ClrScr();
  if color = 'Green' then
    TextColor(Green);
  if color = 'Red' then
    TextColor(Red);
  if color = 'Yellow' then
    TextColor(Yellow);
  if color = 'Blue' then
    TextColor(Blue);
  writeln('('+IntToStr(no)+')'+color+#13#10);
  Sleep(time);
  ClrScr();
end;
function OccurrencesOfChar(const S: string; const C: char): integer;
    var
      i: Integer;
    begin
      result := 0;
      for i := 1 to Length(S) do
        if S[i] = C then
          inc(result);
    end;
Procedure StartRound(round : integer);
  var color : string;
    ColorInput : string;
    index : integer;
  begin
  Randomize;
  color := Colors[Random(4)+1];
  if round = 1 then
  begin
    ColorTally:=color;
  end
  else
=======
  Colors : Array[1..4] of string; 
  
Procedure StartRound(round : integer);
begin
end;
Procedure GenLeaderboard();
  begin
  readln;
  end;
Procedure GameSetup();
  var round : integer = 1;
  begin
  Colors[1]:='Green';
  Colors[2]:='Red';
  Colors[3]:='Yellow';
  Colors[4]:='Blue';   
  StartRound(round);
  end;
Procedure GenMenu;
>>>>>>> master
  begin
    ColorTally:= Concat(ColorTally,',',color);

  end;
  writeln(#13#10+'Round '+IntToStr(round));
  Sleep(time);
  for index := 1 to (OccurrencesOfChar(ColorTally, ',')+1) do
    begin
      if round > 1 then
      begin
        if index = 1 then
        begin

          TempString:=Copy(ColorTally, 0, Pos(',', ColorTally)-1);
          TempString2:=Copy(ColorTally, Pos(',', ColorTally)+1, Length(ColorTally)-Pos(',', ColorTally));
          TempString2:=Concat(TempString2,',',color);
          ShowColor(TempString, index);
        end
        else
        begin
          TempString:=Copy(TempString2, 0, Pos(',', TempString2)-1);
          TempString2:=Copy(TempString2, Pos(',', TempString2)+1, Length(TempString2)-Pos(',', TempString2));
          ShowColor(TempString, index);
        end;
      end
      else if round = 1 then
        TempString:=ColorTally;
        ShowColor(TempString, index);
    end;
  TextColor(White);
  if round = 1 then
  begin
    write('Enter color(e.g. Blue): ')
  end
  else
  begin
    write('Enter colors(e.g. Blue,Green): ')
  end;
  readln(ColorInput);
  if ColorInput = ColorTally then
  begin
    round:= round + 1;
    StartRound(round)
  end
  else
  begin
    writeln('Wrong!')
  end;
  end;
Procedure GameSetup();
  var round : integer = 1;
  begin
  Colors[1]:='Green';
  Colors[2]:='Red';
  Colors[3]:='Yellow';
  Colors[4]:='Blue';
  StartRound(round);
  end;
Procedure MenuChoice();

  begin
  if menu = 1 then
  begin
    write('Enter your option as a integer: ');
    readln(ChoiceNum);
    if ChoiceNum = 1 then
    begin
      GameSetup()
    end
    else if ChoiceNum = 2 then
    begin
      GenSettings()
    end
    else if ChoiceNum = 3 then
    begin
      GenLeaderboard()
    end
    else
    begin
      writeln('Invalid entry, please check your input.'+#13#10);
      MenuChoice();
    end;
  end;
  if menu = 2 then
  begin
    write('Enter the setting you wish to change as a integer or type 0 to return '+#13#10+'to the Menu: ');
    readln(ChoiceNum);
    if ChoiceNum = 0 then
    begin
      GenMenu();
      MenuChoice()
    end
    else if ChoiceNum = 1 then
    begin
      ChangeDelay()
    end
    else if ChoiceNum = 2 then
    begin
      GenSettings()
    end
    else if ChoiceNum = 3 then
    begin
      GenLeaderboard()
    end
    else
    begin
      writeln('Invalid entry, please check your input.'+#13#10);
      MenuChoice();
    end;
  end;
  end;
Procedure GenSettings();
  begin
    clrscr();
    menu:=2;
    writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.'+#13#10);
    writeln(' _____      _   _   _'+#13#10+'/  ___|    | | | | (_)'+#13#10+'\ `--.  ___| |_| |_ _ _ __   __ _ ___'+#13#10+' `--. \/ _ \ __| __| | ''_ \ / _` / __|'+#13#10+'/\__/ /  __/ |_| |_| | | | | (_| \__ \'+#13#10+'\____/ \___|\__|\__|_|_| |_|\__, |___/'+#13#10+'                             __/ |'+#13#10+'                            |___/     ');
    writeln('    (1) Delay Time (Time color is shown before dissapearing.) : '+FloatToStr(time/1000)+' Secs'+#13#10+'    (2) N/A '+#13#10+'    (3) N/A '+#13#10);
    writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.'+#13#10);
    MenuChoice();
  end;
Procedure GenLeaderboard();
  begin
  readln;
  end;
Procedure GenMenu();
  begin
  menu:=1;
  writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.'+#13#10);
  writeln('  ___  ___ _____ _   _ _   _'+#13#10+'  |  \/  ||  ___| \ | | | | |'+#13#10+'  | .  . || |__ |  \| | | | |'+#13#10+'  | |\/| ||  __|| . ` | | | |'+#13#10+'  | |  | || |___| |\  | |_| |'+#13#10+'  \_|  |_/\____/\_| \_/\___/'+#13#10);
  writeln('    (1) Play'+#13#10+'    (2) Settings '+#13#10+'    (3) Leaderboards '+#13#10);
  writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.'+#13#10);
  end;
begin
time:= 1000;
GenMenu();
MenuChoice();
readln;
end.
