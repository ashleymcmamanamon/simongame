program SimonFramework;
Uses sysutils, crt;
var ChoiceNum : integer;
  name : string;
  score : integer;
  scores: array[1..10,1..2] of integer;
  Colors : Array[1..4] of string;

Procedure StartRound(round : integer);
begin
end;
Procedure GenLeaderboard();
  begin
 clrscr();
 writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.');
 writeln();
 writeln(' _      ______          _____  ______ _____  ');
 writeln('| |    |  ____|   /\   |  __ \|  ____|  __ \');
 writeln('| |    | |__     /  \  | |  | | |__  | |__) | ');
 writeln('| |    |  __|   / /\ \ | |  | |  __| |  _  /');
 writeln('| |____| |____ / ____ \| |__| | |____| | \ \');
 writeln('|______|______/_/    \_\_____/|______|_|  \_\');
 writeln(' ____   ____          _____  _____');
 writeln('|  _ \ / __ \   /\   |  __ \|  __ \');
 writeln('| |_) | |  | | /  \  | |__) | |  | |');
 writeln('|  _ <| |  | |/ /\ \ |  _  /| |  | |');
 writeln('| |_) | |__| / ____ \| | \ \| |__| |');
 writeln('|____/ \____/_/    \_\_|  \_\_____/ ');
 writeln();
 writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.');



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
  begin
  writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.'+#13#10);
  writeln('  ___  ___ _____ _   _ _   _'+#13#10+'  |  \/  ||  ___| \ | | | | |'+#13#10+'  | .  . || |__ |  \| | | | |'+#13#10+'  | |\/| ||  __|| . ` | | | |'+#13#10+'  | |  | || |___| |\  | |_| |'+#13#10+'  \_|  |_/\____/\_| \_/\___/'+#13#10);
  writeln('    (1) Play'+#13#10+'    (2) Leaderboards '+#13#10);
  writeln('.:*~*:._.:*~*:._.:*~*:._.:*~*:.'+#13#10);
  end;
Procedure MenuChoice;
  begin
  write('Enter your option as a integer: ');
  readln(ChoiceNum);
  if ChoiceNum = 1 then
  begin
    GameSetup()
  end
  else if ChoiceNum = 2 then
  begin
    GenLeaderboard()
  end
  else
  begin
    writeln('Invalid entry, please check your input.'+#13#10);
    MenuChoice();
  end;
  end;
begin
GenMenu();
MenuChoice();
readln;
end.
