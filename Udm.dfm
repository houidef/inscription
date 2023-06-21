object DM: TDM
  OldCreateOrder = False
  Left = 354
  Top = 133
  Height = 338
  Width = 423
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Persist Se' +
      'curity Info=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 56
  end
  object Tinscription: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = TinscriptionAfterPost
    TableName = 'TInscription'
    Left = 168
    Top = 88
  end
  object Dinscription: TDataSource
    DataSet = Tinscription
    Left = 256
    Top = 96
  end
  object TOffres: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Toffres'
    Left = 176
    Top = 152
    object TOffresNum: TAutoIncField
      FieldName = 'Num'
      ReadOnly = True
    end
    object TOffresModeFormation: TWideStringField
      FieldName = 'ModeFormation'
      Size = 50
    end
    object TOffresModeInt: TIntegerField
      FieldName = 'ModeInt'
    end
    object TOffresSpecialite: TWideStringField
      FieldName = 'Specialite'
      Size = 255
    end
    object TOffresNbrePoste: TIntegerField
      FieldName = 'NbrePoste'
    end
    object TOffresEditNom: TWideStringField
      FieldName = 'EditNom'
      Size = 255
    end
    object TOffresTuteur: TWideStringField
      FieldName = 'Tuteur'
      Size = 255
    end
    object TOffresNiveau: TIntegerField
      FieldName = 'Niveau'
    end
    object TOffresNumSpecialite: TIntegerField
      FieldName = 'NumSpecialite'
    end
    object TOffresNbreInscritG: TIntegerField
      FieldName = 'NbreInscritG'
    end
    object TOffresNbreInscritF: TIntegerField
      FieldName = 'NbreInscritF'
    end
    object TOffresNbreInscrite: TIntegerField
      DefaultExpression = '12'
      FieldKind = fkCalculated
      FieldName = 'NbreInscrite'
      OnGetText = TOffresNbreInscriteGetText
      Calculated = True
    end
    object TOffresNbreInscrit: TIntegerField
      FieldName = 'NbreInscrit'
    end
    object TOffresPercent: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Percent'
      OnGetText = TOffresPercentGetText
      Calculated = True
    end
  end
  object DOffres: TDataSource
    DataSet = TOffres
    Left = 256
    Top = 160
  end
  object TPeriode: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TOptions'
    Left = 96
    Top = 160
  end
  object Dperiode: TDataSource
    DataSet = TPeriode
    Left = 256
    Top = 224
  end
  object TSession: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TSession'
    Left = 32
    Top = 160
  end
  object Toptions: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TOptions'
    Left = 160
    Top = 240
  end
  object TEcoles: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'TEcoles'
    Left = 80
    Top = 232
  end
end
