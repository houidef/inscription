unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, frxClass, frxDBSet, DB, ADODB, frxTableObject, frxChart, ImgList,
  frxRich, TeeProcs, TeEngine, Chart, Spin, Mask, DBCtrls, Series, Tabs,Printers;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ToolBar1: TToolBar;
    Timer1: TTimer;
    ToolButton1: TToolButton;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    RFiche: TfrxReport;
    db1: TfrxDBDataset;
    RDoc: TfrxReport;
    N16: TMenuItem;
    N17: TMenuItem;
    StatusBar1: TStatusBar;
    ToolButton2: TToolButton;
    REvaluation: TfrxReport;
    ADOQuery1: TADOQuery;
    db2: TfrxDBDataset;
    frxReportTableObject1: TfrxReportTableObject;
    frxChartObject1: TfrxChartObject;
    TabControl2: TTabControl;
    TabControl1: TTabControl;
    ImageList1: TImageList;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    N18: TMenuItem;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    N19: TMenuItem;
    RInscriptionCounter: TfrxReport;
    N20: TMenuItem;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton7: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton6: TToolButton;
    frxRichObject1: TfrxRichObject;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Chart1: TChart;
    ToolButton18: TToolButton;
    Series1: TBarSeries;
    Series2: TBarSeries;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    frxRichObject2: TfrxRichObject;
    ToolButton19: TToolButton;
    TabSet1: TTabSet;
    RStatistique: TfrxReport;
    Fteste: TfrxReport;
    Db3: TfrxDBDataset;
    procedure Timer1Timer(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Edit35Change(Sender: TObject);
    procedure dataChange(Sender: TObject);
    procedure Edit33Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit117Change(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure TabControl2Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure RFicheGetValue(const VarName: String;
      var Value: Variant);
    procedure ToolButton19Click(Sender: TObject);
    procedure TabSet1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure REvaluationBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    procedure Vider();
    function IsValidChar(Key: Char): Boolean;
    function GenValue(i:integer):string;
    { Public declarations }
  end;

var
  Form1: TForm1;
   DisChange :Boolean=false;
   Isedit:Boolean = false;
   NbrePoste:array[1..8]of integer;
   NbreInscrit:array[1..8]of integer;
   Parcent:array[1..8]of real;
   
implementation
      uses Udm,unit2,UOffres;
{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[2].Text:= DateToStr(Now);
 StatusBar1.Panels[3].Text:= TimeToStr(Now);
end;

procedure TForm1.N10Click(Sender: TObject);
begin
 close;
end;

procedure TForm1.Vider;
begin
{
   NomEdit.Text:='';
   NumInsEdit.Text:='';
   //DateInsEdit.Date;
   PrenomInsEdit.Text;
   GendreEdit.Text:='';
   //DateToStr(DateNaisInsEdit.Date);
   LieuNaisInsEdit.Text:='';
   AdresseInsEdit.Text:='';
   NiveauScoInsEdit.Text:='';
   SpecialiteInsEdit.Text:='';
   ModeFormationEdit.Text:='';
   NiveauFormationEdit.Text:='';
   NumTelInsEdit.Text:='';
   //Dm.Tinscription['DateSorite'] := DateToStr(DateSoriteEdit.Date);
   EcoleEdit.Text:='';
   RemarqueEdit.Text:='';
   DateInsEdit.Date:= Now;
     }
end;

procedure TForm1.Edit35Change(Sender: TObject);
begin
  //programme
end;

procedure TForm1.dataChange(Sender: TObject);
var
  found:Boolean;
  x:Integer;
begin
  while ((not Dm.TOffres.eof)) do
  begin
      if(Dm.TOffres['Specialite']=TabControl1.Tabs[TabControl1.TabIndex])then
      begin
       found :=true;
       break;
      end;
      Dm.TOffres.Next;
  end;
  if(found)then
  begin

   


  end
  else
  begin
    ShowMessage('error n03');
  end;

end;

procedure TForm1.Edit33Change(Sender: TObject);
begin
   //programme
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
 //programme
end;

procedure TForm1.Edit117Change(Sender: TObject);
begin
   //programme
end;


procedure TForm1.TabSheet3Show(Sender: TObject);
begin
 DM.Tinscription.Open;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
 RDoc.ShowReport();
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
 FStagiaire.ShowModal();
end;

procedure TForm1.TabControl1Change(Sender: TObject);
var
title:string;
found:boolean;
begin

 if(tabControl1.TabIndex=tabControl1.Tabs.Count-1 )then
 begin
   if(tabControl2.TabIndex<tabControl2.Tabs.Count-1 )then
   begin
      title:= 'ModeInt='+inttostr(TabControl2.TabIndex+1) ;
      Dm.Tinscription.Filter:=title;
      Dm.Tinscription.Filtered:=true;
   end
   else
   begin
     Dm.Tinscription.Filter:='';
     Dm.Tinscription.Filtered:=false;
   end;
 end
 else
 begin
  title:= 'SpecialiteIns='''+TabControl1.Tabs[TabControl1.TabIndex]+'''' ;
  Dm.Tinscription.Filtered:=false;
  Dm.Tinscription.Filter:=title;
  Dm.Tinscription.Filtered:=true;
  Dm.TOffres.Open;
  Dm.TOffres.first;
  found:=false;
  while ((not Dm.TOffres.eof)) do
  begin
      if(Dm.TOffres['Specialite']=TabControl1.Tabs[TabControl1.TabIndex])then
      begin
       found :=true;
       break;
      end;
      Dm.TOffres.Next;
  end;
  if(found)then
  begin
  Chart1.Series[0].Clear;
  Chart1.Series[0].Add(Dm.TOffres['NbrePoste'],'«·„‰«’»');
  Chart1.Series[1].Clear;
  Chart1.Series[1].Add(Dm.TOffres['NbreInscrite'],'«·„”Ã·Ì‰');
  end
  else
   ShowMessage('error n05');
 end;
end;

procedure TForm1.N11Click(Sender: TObject);
var
   RichView: TfrxRichView;
   p:TfrxReportPage;
begin
   p:=TfrxReportPage(RFiche.FindObject('page1'));
   p.Orientation:= poPortrait;

   RichView := TfrxRichView(RFiche.FindObject('Rich1'));

   if RichView <> nil then
   begin
     RichView.RichEdit.Lines.LoadFromFile('rtf/ficheinscription.rtf');
    if RFiche.PrepareReport then
      RFiche.ShowPreparedReport;
   end;
end;

procedure TForm1.N14Click(Sender: TObject);

begin
  ADOQuery1.Open;
  REvaluation.ShowReport();
end;

procedure TForm1.TabControl2Change(Sender: TObject);
var
title:string;
x:Boolean;
begin

 if(TabControl2.TabIndex=tabControl2.Tabs.Count-1 )then
 begin
   Dm.Tinscription.Filter:='';
   Dm.Tinscription.Filtered:=false;
   Dm.TOffres.Open;
   Dm.TOffres.first;
   TabSet1.Tabs.Clear;
   while ((not Dm.TOffres.eof)) do
   begin
      TabSet1.Tabs.Add(Dm.TOffres['Specialite']);
      Dm.TOffres.Next;
   end;
 end
 else
 begin
  title:= 'ModeInt='+inttostr(TabControl2.TabIndex+1) ;
  Dm.Tinscription.Filtered:=false;
  Dm.Tinscription.Filter:=title;
  Dm.Tinscription.Filtered:=true;

  Dm.TOffres.Open;
  Dm.TOffres.first;
  TabSet1.Tabs.Clear;
  while ((not Dm.TOffres.eof)) do
  begin
    if(Dm.TOffres['ModeInt']=TabControl2.TabIndex+1)then
    begin
      TabSet1.Tabs.Add(Dm.TOffres['Specialite']);
    end;
    Dm.TOffres.Next;

  end;
 end;
 TabSet1.Tabs.Add('«·ﬂ·');
 TabSet1.TabIndex:=0;
 //TabSet1Change(sender,0,x);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
 FOffres.showmodal();
end;

procedure TForm1.N18Click(Sender: TObject);
var
   RichView: TfrxRichView;
begin
  {
   RichView := TfrxRichView(RStatistique.FindObject('Rich1'));

   if RichView <> nil then
   begin
     RichView.RichEdit.Lines.LoadFromFile('rtf/TableauStatistique.rtf');
    if RStatistique.PrepareReport then
      RStatistique.ShowPreparedReport;
   end;
   }
   Fteste.ShowReport();
end;

procedure TForm1.N15Click(Sender: TObject);
begin
   //frxreport5.ShowReport();
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 TabControl2Change(sender);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
 FStagiaire.ShowModal();
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
 FOffres.showmodal();
end;

procedure TForm1.N20Click(Sender: TObject);
var
   RichView: TfrxRichView;
begin
   RichView := TfrxRichView(RInscriptionCounter.FindObject('Rich1'));

   if RichView <> nil then
   begin
     RichView.RichEdit.Lines.LoadFromFile('rtf/InscriptionCounter.rtf');
    if RInscriptionCounter.PrepareReport then
      RInscriptionCounter.ShowPreparedReport;
   end;
end;

procedure TForm1.ToolButton17Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.ToolButton18Click(Sender: TObject);
var
   RichView: TfrxRichView;
   p:TfrxReportPage;
begin
   p:=TfrxReportPage(RFiche.FindObject('page1'));
   p.Orientation:= poLandscape;

   RichView := TfrxRichView(RFiche.FindObject('Rich1'));

   if RichView <> nil then
   begin
     RichView.RichEdit.Lines.LoadFromFile('rtf/AttestationInscription.rtf');
    if RFiche.PrepareReport then
      RFiche.ShowPreparedReport;
   end;
end;

function TForm1.IsValidChar(Key: Char): Boolean;
begin

end;

procedure TForm1.RFicheGetValue(const VarName: String;
  var Value: Variant);
var
  y,m,d:Word;
begin
  if(CompareStr(VarName,'Periode')=0)then
  begin
    DM.TSession.Last;
    Value:=  DM.TSession['Periode'] ;
  end
  else if(CompareStr(VarName,'Wilaya')=0)then
  begin
    DM.TOptions.first;
    while( not DM.TOptions.eof) do
    begin
     if(DM.TOptions['NomOp']='Wilaya' )then
     begin
       Value:=  DM.TOptions['TitreOp'] ;
       Break;
     end;
     DM.TOptions.next;
    end;
  end
  else if(CompareStr(VarName,'NomCfpa')=0)then
  begin
    DM.TOptions.first;
    while( not DM.TOptions.eof) do
    begin
     if(DM.TOptions['NomOp']='NomCfpa' )then
     begin
       Value:= DM.TOptions['TitreOp'] ;
       Break;
     end;
     DM.TOptions.next;
    end;
  end
  else if(CompareStr(VarName,'Day1')=0)then
   begin
        DM.TSession.Last;
        DecodeDate(DM.TSession['DateOrientationDebut'],y,m,d);
        Value:=IntToStr(d);

   end
  else if(CompareStr(VarName,'Day2')=0)then
   begin
        DM.TSession.Last;
        DecodeDate(DM.TSession['DateOrientationDebut']+1,y,m,d);
        Value:=IntToStr(d);

   end
   else if(CompareStr(VarName,'Day3')=0)then
   begin
        DM.TSession.Last;
        DecodeDate(DM.TSession['DateOrientationDebut']+2,y,m,d);
        Value:=IntToStr(d);

   end
   else if(CompareStr(VarName,'MOrientation')=0)then
   begin
        DM.TSession.Last;
        DecodeDate(DM.TSession['DateOrientationDebut']+2,y,m,d);
        case m of
        1:  Value:='Ã«‰›Ì';
        2:  Value:='›Ì›—Ì';
        3:  Value:='„«—”';
        4:  Value:='«›—Ì·';
        5:  Value:='„«Ì';
        6:  Value:='ÃÊ«‰';
        7:  Value:='ÃÊÌ·Ì…';
        8:  Value:='√Ê ';
        9:  Value:='”» „»—';
        10: Value:='«ﬂ Ê»—';
        11: Value:='‰Ê›„»—';
        12: Value:='œÌ”„»—';
        end;
        Value:= Value+' '+inttostr(y);

   end
   else if(CompareStr(VarName,'DateEntre')=0)then
   begin
        DM.TSession.Last;
        Value:=DM.TSession['DateEntree'];
   end
   else if(CompareStr(VarName,'DateResultat')=0)then
   begin
        DM.TSession.Last;
        Value:=DM.TSession['DateResultat'];
   end
   else if(CompareStr(VarName,'Sit1')=0)then
   begin
        if(DM.Tinscription['EtatCivil'] ='√⁄“»' ) then
           Value:='[X]'
        else
          Value:='';
   end
   else if(CompareStr(VarName,'Sit2')=0)then
   begin
        if(DM.Tinscription['EtatCivil'] ='„ “ÊÃ' ) then
           Value:='[X]'
        else
          Value:='';
   end
   else if(CompareStr(VarName,'Sit3')=0)then
   begin
        if(DM.Tinscription['EtatCivil'] ='„ÿ·ﬁ' ) then
           Value:='[X]'
        else
          Value:='';
   end
   else if(CompareStr(VarName,'SitP1')=0)then
   begin
        if(DM.Tinscription['SituationParent'] ='„ÿ·ﬁ«‰' ) then
           Value:='[X]'
        else
          Value:='';
   end
   else if(CompareStr(VarName,'SitP2')=0)then
   begin
        if(DM.Tinscription['SituationParent'] ='«·√» „ Ê›Ì' ) then
           Value:='[X]'
        else
          Value:='';
   end
   else if(CompareStr(VarName,'SitP3')=0)then
   begin
        if(DM.Tinscription['SituationParent'] ='«·√„ „ Ê›Ì…' ) then
           Value:='[X]'
        else
          Value:='';
   end
  else if CompareText(VarName, 'OR') = 0 then
    Value := GenValue(1)
  else if CompareText(VarName, 'OA') = 0 then
    Value := GenValue(2)
  else if CompareText(VarName, 'OS') = 0 then
    Value := GenValue(3)
  else if CompareText(VarName, 'OF') = 0 then
    Value := GenValue(4)
  else if CompareText(VarName, 'OC') = 0 then
    Value := GenValue(5)
  else if CompareText(VarName, 'OCh') = 0 then
    Value := GenValue(6)
  else if CompareText(VarName, 'OSum') = 0 then
    Value := GenValue(7)
  else   if CompareText(VarName, 'IR') = 0 then
    Value := GenValue(8)
  else if CompareText(VarName, 'IA') = 0 then
    Value := GenValue(9)
  else if CompareText(VarName, 'IS') = 0 then
    Value := GenValue(10)
  else if CompareText(VarName, 'IF') = 0 then
    Value := GenValue(11)
  else if CompareText(VarName, 'IC') = 0 then
    Value := GenValue(12)
  else if CompareText(VarName, 'ICh') = 0 then
    Value := GenValue(13)
  else if CompareText(VarName, 'ISum') = 0 then
    Value := GenValue(14)
  else   if CompareText(VarName, 'PR') = 0 then
    Value := GenValue(15)
  else if CompareText(VarName, 'PA') = 0 then
    Value := GenValue(16)
  else if CompareText(VarName, 'PS') = 0 then
    Value := GenValue(17)
  else if CompareText(VarName, 'PF') = 0 then
    Value := GenValue(18)
  else if CompareText(VarName, 'PC') = 0 then
    Value := GenValue(19)
  else if CompareText(VarName, 'PCh') = 0 then
    Value := GenValue(20)
  else if CompareText(VarName, 'PSum') = 0 then
    Value := GenValue(21)
  else if CompareText(VarName, 'R1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'RA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'RB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'RC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'RD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'R1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'AA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'AB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'AC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'AD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'A1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'DA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'DB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'DC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'DD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'D1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'TA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'TB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'TC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'TD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'T1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'SA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'SB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'SC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'SD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'S1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'PA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'PB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'PC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'PD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'P1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'UA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'UB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'UC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'UD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'U1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'CA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'CB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'CC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'CD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'C1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H3') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H4') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H5') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H6') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H7') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H8') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H9') = 0 then
    Value := '00'
  else if CompareText(VarName, 'HA') = 0 then
    Value := '00'
  else if CompareText(VarName, 'HB') = 0 then
    Value := '00'
  else if CompareText(VarName, 'HC') = 0 then
    Value := '00'
  else if CompareText(VarName, 'HD') = 0 then
    Value := '00'
  else if CompareText(VarName, 'H1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'M1') = 0 then
    Value := '00'
  else if CompareText(VarName, 'M2') = 0 then
    Value := '00'
  else if CompareText(VarName, 'M3') = 0 then
    Value := '00'
end;

procedure TForm1.ToolButton19Click(Sender: TObject);
var
   RichView: TfrxRichView;
   p:TfrxReportPage;
begin
   p:=TfrxReportPage(RFiche.FindObject('page1'));
   p.Orientation:= poPortrait;

   RichView := TfrxRichView(RFiche.FindObject('Rich1'));

   if RichView <> nil then
   begin
     RichView.RichEdit.Lines.LoadFromFile('rtf/covocation.rtf');
    if RFiche.PrepareReport then
      RFiche.ShowPreparedReport;
   end;
end;

procedure TForm1.TabSet1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
title:string;
found:boolean;
begin

 if(NewTab=TabSet1.Tabs.Count-1 )then
 begin
   if(tabControl2.TabIndex<tabControl2.Tabs.Count-1 )then
   begin
      title:= 'ModeInt='+inttostr(TabControl2.TabIndex+1) ;
      Dm.Tinscription.Filter:=title;
      Dm.Tinscription.Filtered:=true;
   end
   else
   begin
     Dm.Tinscription.Filter:='';
     Dm.Tinscription.Filtered:=false;
   end;
 end
 else
 begin
  title:= 'SpecialiteIns='''+TabSet1.Tabs[NewTab]+'''' ;
  Dm.Tinscription.Filtered:=false;
  Dm.Tinscription.Filter:=title;
  Dm.Tinscription.Filtered:=true;
  Dm.TOffres.Open;
  Dm.TOffres.first;
  found:=false;
  while ((not Dm.TOffres.eof)) do
  begin
      if(Dm.TOffres['Specialite']=TabSet1.Tabs[NewTab])then
      begin
       found :=true;
       break;
      end;
      Dm.TOffres.Next;
  end;
  if(found)then
  begin
  Chart1.Series[0].Clear;
  Chart1.Series[0].Add(Dm.TOffres['NbrePoste'],'«·„‰«’»');
  Chart1.Series[1].Clear;
  Chart1.Series[1].Add(DM.TOffresNbreInscrite.Value,'«·„”Ã·Ì‰'); //error!
  end
  else
   ShowMessage('error n05');
 end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  DM.Tinscription.Open;
  DM.Toptions.Open;
  DM.TPeriode.Open;
  DM.TSession.Open;
  DM.TOffres.Open;
end;

function TForm1.GenValue(i: integer): string;
begin
  case i of
   1: result := inttostr(NbrePoste[1]);
   2: result := inttostr(NbrePoste[2]);
   3: result := inttostr(NbrePoste[3]);
   4: result := inttostr(NbrePoste[4]);
   5: result := inttostr(NbrePoste[5]);
   6: result := inttostr(NbrePoste[6]);
   7: result := inttostr(NbrePoste[7]);
   8: result := inttostr(NbreInscrit[1]);
   9: result := inttostr(NbreInscrit[2]);
   10: result := inttostr(NbreInscrit[3]);
   11: result := inttostr(NbreInscrit[4]);
   12: result := inttostr(NbreInscrit[5]);
   13: result := inttostr(NbreInscrit[6]);
   14: result := inttostr(NbreInscrit[7]);
   15: result := floattostr(parcent[1]);
   16: result := floattostr(parcent[2]);
   17: result := floattostr(parcent[3]);
   18: result := floattostr(parcent[4]);
   19: result := floattostr(parcent[5]);
   20: result := floattostr(parcent[6]);
   21: result := floattostr(parcent[7]);
  end;
end;

procedure TForm1.REvaluationBeforePrint(Sender: TfrxReportComponent);
var
 k:integer;
begin
      Dm.TOffres.Open;
      Dm.TOffres.First;
      while(not Dm.TOffres.Eof)do
      begin
        k:=  Dm.TOffres['ModeInt'];
        NbrePoste[k]:=NbrePoste[k]+Dm.TOffres['NbrePoste'] ;
        NbreInscrit[k]:=NbreInscrit[k]+Dm.TOffresNbreInscrite.Value ;
        if(NbrePoste[k]<>0)then
            parcent[k]:=NbreInscrit[k]/NbrePoste[k]
        else
            parcent[k]:=0;
         Dm.TOffres.Next;
      end;
end;

end.
