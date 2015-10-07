program simonframework;
Uses sysutils, Crt, Classes;
var ChoiceNum : integer;
  name : string;
  score : integer;
  scores: array[1..10,1..2] of string;
  Colors : Array[1..4] of string;
  i : integer;
  p: integer;
  k: integer;
  numberofscores: integer;
  tempsort: string;
  repeatneeded: boolean;

procedure setupsort();
begin
  //Can get rid of this
  scores[1][1] := 'Sample Player One';
  scores[1][2] := '1';

  scores[2][1] := 'Sample Player Two';
  scores[2][2] := '7';

  scores[3][1] := 'Sample Player Three';
  scores[3][2] := '3';

  scores[4][1] := 'Sample Player Four';
  scores[4][2] := '2'
end;
Procedure StartRound(round : integer);
begin
end;
Procedure spaces(spacesentry:string);
begin
    for i := 1 to 30-length(spacesentry) do
    begin
      write(' ');
    end;
end;
procedure highscore();
begin
 for k := 1 to 3 do
 begin
   for i :=3 to 15 do
   begin
     clrscr();
     textcolor(i);
     writeln(' _    _ _____ _____ _    _    _____  _____ ____  _____  ______ _ ');
     writeln('| |  | |_   _/ ____| |  | |  / ____|/ ____/ __ \|  __ \|  ____| |');
     writeln('| |__| | | || |  __| |__| | | (___ | |   | |  | | |__) | |__  | |');
     writeln('|  __  | | || | |_ |  __  |  \___ \| |   | |  | |  _  /|  __| | |');
     writeln('| |  | |_| || |__| | |  | |  ____) | |___| |__| | | \ \| |____|_|');
     writeln('|_|  |_|_____\_____|_|  |_| |_____/ \_____\____/|_|  \_\______(_)');
     delay(100);
   end;
 end;
end;

procedure sort();
begin
  repeatneeded := false;
  for i := 1 to numberofscores-1 do
  begin
    if strtoint(scores[i][2]) < strtoint(scores[i+1][2]) then
    begin
         tempsort := scores[i+1][2];
         scores[i+1][2] := scores[i][2];
         scores[i][2] := tempsort;

         tempsort := scores[i+1][1];
         scores[i+1][1] := scores[i][1];
         scores[i][1] := tempsort;
         repeatneeded := true;
    end;
  end;
  if repeatneeded = true then
    begin
         sort();
    end
    else
    begin
       for p := 1 to numberofscores do
       begin
            write(scores[p][1]);
            spaces(scores[p][1]);
            write(scores[p][2]);
            writeln();
       end;
    end;
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

 setupsort();
 writeln();

 for p := 1 to numberofscores do
 begin
      write(scores[p][1]);
      spaces(scores[p][1]);
      write(scores[p][2]);
 end;

 numberofscores := 0;

  //Counts how many scores there are
  for i := 1 to Length(scores) do
  begin
    if scores[i][2] <> '' then
    begin
         numberofscores := numberofscores + 1;
    end;
  end;

  //Sorts
  Sort();

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
