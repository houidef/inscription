unit UOffres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFOffres = class(TForm)
    GroupBox4: TGroupBox;
    a1: TEdit;
    a2: TEdit;
    a3: TEdit;
    a11: TEdit;
    a10: TEdit;
    a4: TEdit;
    a15: TEdit;
    a9: TEdit;
    a14: TEdit;
    a5: TEdit;
    a8: TEdit;
    a6: TEdit;
    a7: TEdit;
    a13: TEdit;
    a12: TEdit;
    a16: TEdit;
    a17: TEdit;
    pa1: TEdit;
    pa2: TEdit;
    pa3: TEdit;
    pa4: TEdit;
    pa5: TEdit;
    pa6: TEdit;
    pa7: TEdit;
    pa8: TEdit;
    pa9: TEdit;
    pa10: TEdit;
    pa11: TEdit;
    pa12: TEdit;
    pa13: TEdit;
    pa14: TEdit;
    pa15: TEdit;
    pa16: TEdit;
    pa17: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    b1: TEdit;
    b2: TEdit;
    b3: TEdit;
    b11: TEdit;
    b10: TEdit;
    b4: TEdit;
    b15: TEdit;
    b9: TEdit;
    b14: TEdit;
    b5: TEdit;
    b8: TEdit;
    b6: TEdit;
    b7: TEdit;
    b13: TEdit;
    b12: TEdit;
    b16: TEdit;
    b17: TEdit;
    pb1: TEdit;
    pb2: TEdit;
    pb3: TEdit;
    pb4: TEdit;
    pb5: TEdit;
    pb6: TEdit;
    pb7: TEdit;
    pb8: TEdit;
    pb9: TEdit;
    pb10: TEdit;
    pb11: TEdit;
    pb12: TEdit;
    pb13: TEdit;
    pb14: TEdit;
    pb15: TEdit;
    pb16: TEdit;
    pb17: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    c1: TEdit;
    c2: TEdit;
    c3: TEdit;
    c4: TEdit;
    c5: TEdit;
    c8: TEdit;
    c6: TEdit;
    c7: TEdit;
    pc1: TEdit;
    pc2: TEdit;
    pc3: TEdit;
    pc4: TEdit;
    pc5: TEdit;
    pc6: TEdit;
    pc7: TEdit;
    pc8: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    GroupBox5: TGroupBox;
    d1: TEdit;
    d2: TEdit;
    d3: TEdit;
    d4: TEdit;
    d5: TEdit;
    d8: TEdit;
    d6: TEdit;
    d7: TEdit;
    pd1: TEdit;
    pd2: TEdit;
    pd3: TEdit;
    pd4: TEdit;
    pd5: TEdit;
    pd6: TEdit;
    pd7: TEdit;
    pd8: TEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    GroupBox7: TGroupBox;
    f1: TEdit;
    f2: TEdit;
    f3: TEdit;
    f4: TEdit;
    f5: TEdit;
    f8: TEdit;
    f6: TEdit;
    f7: TEdit;
    pf1: TEdit;
    pf2: TEdit;
    pf3: TEdit;
    pf4: TEdit;
    pf5: TEdit;
    pf6: TEdit;
    pf7: TEdit;
    pf8: TEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    GroupBox6: TGroupBox;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e8: TEdit;
    e6: TEdit;
    e7: TEdit;
    pe1: TEdit;
    pe2: TEdit;
    pe3: TEdit;
    pe4: TEdit;
    pe5: TEdit;
    pe6: TEdit;
    pe7: TEdit;
    pe8: TEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Button1: TButton;
    procedure pa1Change(Sender: TObject);
    procedure a1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InitialiserData;
    { Public declarations }
  end;

var
  FOffres: TFOffres;
  DisChange:Boolean=False;

implementation
     uses udm;
{$R *.dfm}

procedure TFOffres.pa1Change(Sender: TObject);
var
  Find:Boolean;
  s: string;
  Mode:string;
begin
  if(DisChange )then Exit;
  s:=TEdit(Sender).Name;
 if(s[2]='a') then Mode := 'Õ÷Ê—Ì'
 else  if(s[2]='b') then Mode := ' „ÂÌ‰'
 else  if(s[2]='c') then Mode := 'œ—Ê” „”«∆Ì…'
 else  if(s[2]='d') then Mode := '⁄»— «·„⁄«»—'
 else  if(s[2]='e') then Mode := '«·„—«… «·„«ﬂÀ… ›Ì «·»Ì '
 else  if(s[2]='f') then Mode := '⁄»— «· ⁄«ﬁœ' ;
 Dm.TOffres.Open;
 Find:= False;
 while ((not Dm.TOffres.eof)) do
 begin
   if(s[1]+Dm.TOffres['EditNom']= TEdit(Sender).Name) then
   begin
     Find:= True;
     Break;
   end;

   Dm.TOffres.Next;
 end;
 if(Find)then
 begin
  Dm.TOffres.edit;
  Dm.TOffres['NbrePoste']:=TEdit(Sender).text;
  Dm.TOffres.post;
 end
 else
 begin
 ShowMessage('«œŒ· «”„ «· Œ’’ «Ê·« √Ê Â‰«ﬂ Œÿ√ „«');
 end;
end;

procedure TFOffres.a1Change(Sender: TObject);
var
  N:integer;
  Find : Boolean;
    s: string;
  Mode:string;
  imode:integer;
begin
 //programme
 if(DisChange )then Exit;
  s:=TEdit(Sender).Name;
 if(s[1]='a') then Mode := 'Õ÷Ê—Ì'
 else  if(s[1]='b') then Mode := ' „ÂÌ‰'
 else  if(s[1]='c') then Mode := 'œ—Ê” „”«∆Ì…'
 else  if(s[1]='d') then Mode := '⁄»— «·„⁄«»—'
 else  if(s[1]='e') then Mode := '«·„—«… «·„«ﬂÀ… ›Ì «·»Ì '
 else  if(s[1]='f') then Mode := '⁄»— «· ⁄«ﬁœ';
 if(s[1]='a') then iMode := 1
 else  if(s[1]='b') then iMode := 2
 else  if(s[1]='c') then iMode := 3
 else  if(s[1]='d') then iMode := 4
 else  if(s[1]='e') then iMode := 5
 else  if(s[1]='f') then iMode := 6;
 Dm.TOffres.Open;
 Find:= False;
 while ((not Dm.TOffres.eof)) do
 begin
   if(Dm.TOffres['EditNom']= TEdit(Sender).Name) then
   begin
     Find:= True;
     Break;
   end;

   Dm.TOffres.Next;
 end;
 if(Find)then
 begin
  Dm.TOffres.edit;
  Dm.TOffres['Specialite']:=TEdit(Sender).text;
  Dm.TOffres['ModeFormation']:=Mode;
  Dm.TOffres['ModeInt']:=iMode;
  Dm.TOffres.post;
 end
 else
 begin
  Dm.TOffres.Insert;
  Dm.TOffres['Specialite']:=TEdit(Sender).text;
  Dm.TOffres['ModeFormation']:=Mode;
  Dm.TOffres['EditNom']:=TEdit(Sender).name;
  Dm.TOffres.post;
 end;
end;

procedure TFOffres.InitialiserData;
var
  ValSpec : array[1..8,1..17] of string;
  ValSpec2 : array[1..8,1..17] of string;
  ind : array[1..8] of integer;
  i,k:Integer;
begin
 //
 DisChange :=True;
 Dm.TOffres.Open;
 Dm.TOffres.first;
 i:=1;
 for i:=1 to 8 do
  ind[i]:=1;
 while ((not Dm.TOffres.eof)) do
 begin
    k:= Dm.TOffres['ModeInt'];
    ValSpec[k,ind[k]]:= Dm.TOffres['Specialite'];
    ValSpec2[k,ind[k]]:= Dm.TOffres['NbrePoste'];
    Dm.TOffres.Next;
    ind[k]:=ind[k]+1;

 end;
 a1.Text := ValSpec[1,1];
 a2.Text := ValSpec[1,2];
 a3.Text := ValSpec[1,3];
 a4.Text := ValSpec[1,4];
 a5.Text := ValSpec[1,5];
 a6.Text := ValSpec[1,6];
 a7.Text := ValSpec[1,7];
 a8.Text := ValSpec[1,8];
 a9.Text := ValSpec[1,9];
 a10.Text := ValSpec[1,10];
 a11.Text := ValSpec[1,11];
 a12.Text := ValSpec[1,12];
 a13.Text := ValSpec[1,13];
 a14.Text := ValSpec[1,14];
 a15.Text := ValSpec[1,15];
 a16.Text := ValSpec[1,16];
 a17.Text := ValSpec[1,17];

 b1.Text := ValSpec[2,1];
 b2.Text := ValSpec[2,2];
 b3.Text := ValSpec[2,3];
 b4.Text := ValSpec[2,4];
 b5.Text := ValSpec[2,5];
 b6.Text := ValSpec[2,6];
 b7.Text := ValSpec[2,7];
 b8.Text := ValSpec[2,8];
 b9.Text := ValSpec[2,9];
 b10.Text := ValSpec[2,10];
 b11.Text := ValSpec[2,11];
 b12.Text := ValSpec[2,12];
 b13.Text := ValSpec[2,13];
 b14.Text := ValSpec[2,14];
 b15.Text := ValSpec[2,15];
 b16.Text := ValSpec[2,16];
 b17.Text := ValSpec[2,17];

 c1.Text := ValSpec[3,1];
 c2.Text := ValSpec[3,2];
 c3.Text := ValSpec[3,3];
 c4.Text := ValSpec[3,4];
 c5.Text := ValSpec[3,5];
 c6.Text := ValSpec[3,6];
 c7.Text := ValSpec[3,7];
 c8.Text := ValSpec[3,8];

 d1.Text := ValSpec[4,1];
 d2.Text := ValSpec[4,2];
 d3.Text := ValSpec[4,3];
 d4.Text := ValSpec[4,4];
 d5.Text := ValSpec[4,5];
 d6.Text := ValSpec[4,6];
 d7.Text := ValSpec[4,7];
 d8.Text := ValSpec[4,8];

 e1.Text := ValSpec[5,1];
 e2.Text := ValSpec[5,2];
 e3.Text := ValSpec[5,3];
 e4.Text := ValSpec[5,4];
 e5.Text := ValSpec[5,5];
 e6.Text := ValSpec[5,6];
 e7.Text := ValSpec[5,7];
 e8.Text := ValSpec[5,8];

 f1.Text := ValSpec[6,1];
 f2.Text := ValSpec[6,2];
 f3.Text := ValSpec[6,3];
 f4.Text := ValSpec[6,4];
 f5.Text := ValSpec[6,5];
 f6.Text := ValSpec[6,6];
 f7.Text := ValSpec[6,7];
 f8.Text := ValSpec[6,8];


 pa1.Text := ValSpec2[1,1];
 pa2.Text := ValSpec2[1,2];
 pa3.Text := ValSpec2[1,3];
 pa4.Text := ValSpec2[1,4];
 pa5.Text := ValSpec2[1,5];
 pa6.Text := ValSpec2[1,6];
 pa7.Text := ValSpec2[1,7];
 pa8.Text := ValSpec2[1,8];
 pa9.Text := ValSpec2[1,9];
 pa10.Text := ValSpec2[1,10];
 pa11.Text := ValSpec2[1,11];
 pa12.Text := ValSpec2[1,12];
 pa13.Text := ValSpec2[1,13];
 pa14.Text := ValSpec2[1,14];
 pa15.Text := ValSpec2[1,15];
 pa16.Text := ValSpec2[1,16];
 pa17.Text := ValSpec2[1,17];

 pb1.Text := ValSpec2[2,1];
 pb2.Text := ValSpec2[2,2];
 pb3.Text := ValSpec2[2,3];
 pb4.Text := ValSpec2[2,4];
 pb5.Text := ValSpec2[2,5];
 pb6.Text := ValSpec2[2,6];
 pb7.Text := ValSpec2[2,7];
 pb8.Text := ValSpec2[2,8];
 pb9.Text := ValSpec2[2,9];
 pb10.Text := ValSpec2[2,10];
 pb11.Text := ValSpec2[2,11];
 pb12.Text := ValSpec2[2,12];
 pb13.Text := ValSpec2[2,13];
 pb14.Text := ValSpec2[2,14];
 pb15.Text := ValSpec2[2,15];
 pb16.Text := ValSpec2[2,16];
 pb17.Text := ValSpec2[2,17];

 pc1.Text := ValSpec2[3,1];
 pc2.Text := ValSpec2[3,2];
 pc3.Text := ValSpec2[3,3];
 pc4.Text := ValSpec2[3,4];
 pc5.Text := ValSpec2[3,5];
 pc6.Text := ValSpec2[3,6];
 pc7.Text := ValSpec2[3,7];
 pc8.Text := ValSpec2[3,8];

 pd1.Text := ValSpec2[4,1];
 pd2.Text := ValSpec2[4,2];
 pd3.Text := ValSpec2[4,3];
 pd4.Text := ValSpec2[4,4];
 pd5.Text := ValSpec2[4,5];
 pd6.Text := ValSpec2[4,6];
 pd7.Text := ValSpec2[4,7];
 pd8.Text := ValSpec2[4,8];

 pe1.Text := ValSpec2[5,1];
 pe2.Text := ValSpec2[5,2];
 pe3.Text := ValSpec2[5,3];
 pe4.Text := ValSpec2[5,4];
 pe5.Text := ValSpec2[5,5];
 pe6.Text := ValSpec2[5,6];
 pe7.Text := ValSpec2[5,7];
 pe8.Text := ValSpec2[5,8];

 pf1.Text := ValSpec2[6,1];
 pf2.Text := ValSpec2[6,2];
 pf3.Text := ValSpec2[6,3];
 pf4.Text := ValSpec2[6,4];
 pf5.Text := ValSpec2[6,5];
 pf6.Text := ValSpec2[6,6];
 pf7.Text := ValSpec2[6,7];
 pf8.Text := ValSpec2[6,8];

 DisChange :=False;
end;

procedure TFOffres.FormShow(Sender: TObject);
begin
 InitialiserData;
end;

end.
