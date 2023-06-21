unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin;

type
  TFStagiaire = class(TForm)
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    NomEdit: TLabeledEdit;
    Panel5: TPanel;
    PrenomInsEdit: TLabeledEdit;
    Panel6: TPanel;
    DateNaisInsEdit: TDateTimePicker;
    Panel7: TPanel;
    LieuNaisInsEdit: TLabeledEdit;
    Panel1: TPanel;
    GendreEdit: TComboBox;
    Panel9: TPanel;
    AdresseInsEdit: TLabeledEdit;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    EtatCivilEdit: TComboBox;
    Panel10: TPanel;
    Panel8: TPanel;
    SituationParentEdit: TComboBox;
    Panel11: TPanel;
    GroupBox4: TGroupBox;
    Panel12: TPanel;
    ModeFormationEdit: TComboBox;
    Panel13: TPanel;
    SpecialiteInsEdit: TComboBox;
    Panel14: TPanel;
    DateInsEdit: TDateTimePicker;
    Panel15: TPanel;
    NiveauFormationEdit: TComboBox;
    GroupBox5: TGroupBox;
    Panel16: TPanel;
    NiveauScoInsEdit: TComboBox;
    Panel17: TPanel;
    GroupBox6: TGroupBox;
    Panel18: TPanel;
    RemarqueEdit: TLabeledEdit;
    Panel19: TPanel;
    NumTelInsEdit: TLabeledEdit;
    NumInsEdit: TLabeledEdit;
    Panel20: TPanel;
    PeriodeEdit: TEdit;
    Panel21: TPanel;
    MPereEdit: TEdit;
    Panel22: TPanel;
    MMereEdit: TEdit;
    NGarconEdit: TSpinEdit;
    NFilleEdit: TSpinEdit;
    Label1: TLabel;
    NRangEdit: TSpinEdit;
    GroupBox1: TGroupBox;
    Panel24: TPanel;
    Panel23: TPanel;
    Panel25: TPanel;
    sp1edit: TComboBox;
    sp2edit: TComboBox;
    sp3edit: TComboBox;
    EcoleEdit: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpecialiteInsEditDropDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EcoleEditDropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStagiaire: TFStagiaire;

implementation
      uses udm, DateUtils;
{$R *.dfm}

procedure TFStagiaire.BitBtn1Click(Sender: TObject);
var
   NumSes:Integer;
   found:boolean;
  y :word;
begin
  y:=YearsBetween(date,DateNaisInsEdit.Date);
  if( y<=15)then ShowMessage('„·«ÕŸ…:«·„ ﬂÊ‰ ”‰Â «ﬁ· „‰ «·”‰ «·ﬁ«‰Ê‰Ì')
  else if(y>30)then  ShowMessage('„·«ÕŸ…:«· ﬂÊ‰ ”‰Â «ﬂ»— „‰ «·”‰ «·ﬁ«‰Ê‰Ì');
  //------------------
  Dm.TEcoles.Open;
  found:=false;
 while ((not Dm.TEcoles.eof)) do
 begin
    if(Dm.TEcoles['Ecole']=EcoleEdit.Text)then
    begin
      found:=true;
      break;
    end;
    Dm.TEcoles.Next;
 end;
 if(not found)then
 begin
   Dm.TEcoles.Insert;
   Dm.TEcoles['Ecole']:=EcoleEdit.Text ;
   Dm.TEcoles.Post;
 end;
  //------------------
   NumSes :=1;
   Dm.Tinscription.Open;
   try
   Dm.Tinscription.Insert;
   Dm.Tinscription['NomIns'] := NomEdit.Text;
   Dm.Tinscription['NumSes'] := NumSes;
   Dm.Tinscription['NumIns'] := NumInsEdit.Text;
   Dm.Tinscription['DateIns'] := DateToStr(DateInsEdit.Date);
   Dm.Tinscription['PrenomIns'] := PrenomInsEdit.Text;
   Dm.Tinscription['Gendre'] := GendreEdit.Text;
   Dm.Tinscription['DateNaisIns'] := DateToStr(DateNaisInsEdit.Date);
   Dm.Tinscription['LieuNaisIns'] := LieuNaisInsEdit.Text;
   Dm.Tinscription['AdresseIns'] := AdresseInsEdit.Text;
   Dm.Tinscription['NiveauScoIns'] := NiveauScoInsEdit.Text;
   Dm.Tinscription['SpecialiteIns'] := SpecialiteInsEdit.Text;
   Dm.Tinscription['ModeFormation'] := ModeFormationEdit.Text;
   Dm.Tinscription['NiveauFormation'] := NiveauFormationEdit.Text;
   Dm.Tinscription['NumTelIns'] := NumTelInsEdit.Text;
   //Dm.Tinscription['DateSorite'] := DateToStr(DateSoriteEdit.Date);
   Dm.Tinscription['Ecole'] := EcoleEdit.Text;
   Dm.Tinscription['Remarque'] := RemarqueEdit.Text;
   Dm.Tinscription['Periode'] := PeriodeEdit.Text;
   Dm.Tinscription['MPere'] := MPereEdit.Text;
   Dm.Tinscription['MMere'] := MMereEdit.Text;
   Dm.Tinscription['NGarcon'] := NGarconEdit.Value;
   Dm.Tinscription['NFille'] := NFilleEdit.Value;
   Dm.Tinscription['NRang'] := NRangEdit.Value;
   Dm.Tinscription['EtatCivil'] := EtatCivilEdit.Text;
   Dm.Tinscription['SituationParent'] := SituationParentEdit.Text;
   Dm.Tinscription['sp1'] := sp1Edit.Text;
   Dm.Tinscription['sp2'] := sp2Edit.Text;
   Dm.Tinscription['sp3'] := sp3Edit.Text;
   Dm.Tinscription.Post;
   ShowMessage(' „ «·Õ›Ÿ »‰Ã«Õ');
  //------------------
  Dm.TOffres.Open;
  found:=false;
 while ((not Dm.TOffres.eof)) do
 begin
    if(Dm.TOffres['ModeFormation']=ModeFormationEdit.Text)then
    begin
      found:=true;
      break;
    end;
    Dm.TOffres.Next;
 end;
 if(not found)then
 begin
   Dm.TOffres.Edit;
   Dm.TEcoles['Ecole']:=EcoleEdit.Text ;
   Dm.TEcoles.Post;
 end;
  //------------------
   ModalResult :=1;
   except
       ShowMessage('Â‰«ﬂ „‘ﬂ·… ›Ì ﬁ«⁄œ… «·»Ì«‰«  —ﬁ„ 001')
   end;
end;

procedure TFStagiaire.SpecialiteInsEditDropDown(Sender: TObject);
begin

TcomboBox(Sender).Items.Clear;
Dm.TOffres.Open;
Dm.TOffres.First;
 while ((not Dm.TOffres.eof)) do
 begin

    TcomboBox(Sender).Items.Add(Dm.TOffres['Specialite']);
   Dm.TOffres.Next;
 end;
end;

procedure TFStagiaire.FormShow(Sender: TObject);
var
  y,d,m :word;
begin
 DateInsEdit.Date:=Date;
 DM.Tperiode.first;
 PeriodeEdit.text := '' ;
 while( not DM.Tperiode.eof) do
 begin
     if(DM.Tperiode['NomOp']='Periode' )then
     begin
       PeriodeEdit.text := '”» „»— 2023' ;
       Break;
     end;

     DM.Tperiode.Next;
 end;


end;

procedure TFStagiaire.EcoleEditDropDown(Sender: TObject);
begin
EcoleEdit.Items.Clear;
Dm.TEcoles.Open;
Dm.TEcoles.First;
 while ((not Dm.TEcoles.eof)) do
 begin
    EcoleEdit.Items.Add(Dm.TEcoles['Specialite']);
   Dm.TOffres.Next;
 end;
end;

end.
