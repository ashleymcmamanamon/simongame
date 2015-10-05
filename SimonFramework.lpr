program SimonFramework;
Uses sysutils;
var ChoiceNum : integer;

Procedure GenLeaderboard();
  begin
  readln;
  end;
Procedure GameSetup();
  begin
  readln;
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
