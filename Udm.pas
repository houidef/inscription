unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Tinscription: TADOTable;
    Dinscription: TDataSource;
    TOffres: TADOTable;
    DOffres: TDataSource;
    TOffresNum: TAutoIncField;
    TOffresModeFormation: TWideStringField;
    TOffresModeInt: TIntegerField;
    TOffresSpecialite: TWideStringField;
    TOffresNbrePoste: TIntegerField;
    TOffresEditNom: TWideStringField;
    TOffresTuteur: TWideStringField;
    TOffresNiveau: TIntegerField;
    TPeriode: TADOTable;
    Dperiode: TDataSource;
    TSession: TADOTable;
    Toptions: TADOTable;
    TOffresNumSpecialite: TIntegerField;
    TOffresNbreInscritG: TIntegerField;
    TOffresNbreInscritF: TIntegerField;
    TOffresNbreInscrite: TIntegerField;
    TOffresNbreInscrit: TIntegerField;
    TOffresPercent: TIntegerField;
    TEcoles: TADOTable;
    procedure TOffresPercentGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure TOffresNbreInscriteGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure TinscriptionAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.TOffresPercentGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin

  if(TOffres['NbrePoste']  <>0)then
   Text:=FloatToStr((TOffres['NbreInscritG']+TOffres['NbreInscritF'])/TOffres['NbrePoste'] )
  else Text:='0.0';


end;

procedure TDM.TOffresNbreInscriteGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin

    Text:=intToStr(TOffres.FieldByName('NbreInscritG').Value+TOffres.FieldByName('NbreInscritF').Value  )
end;

procedure TDM.TinscriptionAfterPost(DataSet: TDataSet);
begin
  //update offres table
  TOffres.First;
  while(not TOffres.Eof)do
  begin
     if(TOffres['ModeInt']=Tinscription['ModeInt']  and
     TOffres['Specialite']=Tinscription['SpecialiteIns'])then
     begin
      TOffres.Edit;
      if(Tinscription['Gendre'] ='ÐßÑ')then
             TOffres['NbreInscritG']:=  TOffres['NbreInscritG']+1
      else
             TOffres['NbreInscritF']:=  TOffres['NbreInscritF']+1;
      TOffres['NbreInscrit']:=  TOffres['NbreInscrit']+1;
      TOffres.Post;
     end;
  end;

end;

end.
