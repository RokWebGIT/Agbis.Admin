unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.ComCtrls, DateUtils, StrUtils, Vcl.Mask;

type

  TSclad = record
    ID: Integer;
    Name: String;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GridPanel1: TGridPanel;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Memo2: TMemo;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    ComboBox3: TComboBox;
    GridPanel3: TGridPanel;
    Label4: TLabel;
    ComboBox4: TComboBox;
    Label6: TLabel;
    ComboBox5: TComboBox;
    TabSheet4: TTabSheet;
    Memo3: TMemo;
    RadioButton1: TRadioButton;
    GridPanel4: TGridPanel;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    Label7: TLabel;
    ComboBox6: TComboBox;
    Label8: TLabel;
    GridPanel5: TGridPanel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    TabSheet5: TTabSheet;
    Main: TPanel;
    Password: TPanel;
    GridPanel6: TGridPanel;
    Label9: TLabel;
    Button2: TButton;
    Edit1: TEdit;
    ComboBox7: TComboBox;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Connection: TFDConnection;
  Query, Query2: TFDQuery;
  DataSource: TDataSource;
  FDB: String;
  Sclads: array of TSclad;

implementation

{$R *.dfm}

uses Unit2;

Function ChangeFieldOrder(DocNum, FieldName, FieldValue: String): String;
begin
Result := '';
  Try
  Query.Open('select * from docs where cast(doc_date as date)>='+#39+'01.01.'+IntToStr(YearOF(now))+#39+' and doc_num = '+#39+DocNum+#39+' order by doc_date desc');
  Except
  on E:Exception do
    begin
    Result := 'Заказ '+DocNum+': произошла ошибка при первом запросе к БД.'+#13#10+E.ClassName+' '+E.Message+#13#10+'Обратитесь к тех. поддержке!';
    exit;
    end;
  End;
  if Query.RecordCount<1 then
  begin
    Result := 'Заказ '+DocNum+': не удалось найти заказ за этот год!';
    exit;
  end;
  Query.SQL.Text := 'Update docs_order set '+FieldName+'='+FieldValue+' where doc_id='+Query.FieldByName('doc_id').AsString;
  Try
  Query.ExecSQL;
  Except
  on E:Exception do
    begin
    Result := 'Заказ '+DocNum+': произошла ошибка при втором запросе к БД.'+#13#10+E.ClassName+' '+E.Message+#13#10+'Обратитесь к тех. поддержке!';
    exit;
    end;
  End;
  Result := 'Заказ '+DocNum+': обработан!';
end;

Function ChangeFiscPay(DocNum: String; Card: Integer = 0; Kassa: Integer = 0; PosTerm: Integer = 0): String;
  Var
  I: Integer;
begin
  Result := '';

  Try
  Query.Open('select * from docs where cast(doc_date as date)>='+#39+'01.01.'+IntToStr(YearOF(now))+#39+' and doc_num = '+#39+DocNum+#39+' order by doc_date desc' );
  Except
  on E:Exception do
    begin
    Result := 'Заказ '+DocNum+': произошла ошибка при первом запросе к БД.'+#13#10+E.ClassName+' '+E.Message+#13#10+'Обратитесь к тех. поддержке!';
    exit;
    end;
  End;

  if Query.RecordCount<1 then
  begin
    Result := 'Заказ '+DocNum+': не удалось найти заказ за этот год!';
    exit;
  end;

  Try
  Query.Open('select * from docs_order where doc_id = '+Query.FieldByName('doc_id').AsString);
  Except
  on E:Exception do
    begin
    Result := 'Заказ '+DocNum+': произошла ошибка при первом запросе к БД.'+#13#10+E.ClassName+' '+E.Message+#13#10+'Обратитесь к тех. поддержке!';
    exit;
    end;
  End;

  if Query.RecordCount<1 then
  begin
    Result := 'Заказ '+DocNum+': не удалось найти заказ за этот год!';
    exit;
  end;

  Try
  Query.Open('select * from doc_order_pays where doc_order_id='+Query.FieldByName('id').AsString);
  Except
  on E:Exception do
    begin
    Result := 'Заказ '+DocNum+': произошла ошибка при втором запросе к БД.'+#13#10+E.ClassName+' '+E.Message+#13#10+'Обратитесь к тех. поддержке!';
    exit;
    end;
  End;

  if Query.RecordCount<1 then
  begin
    Result := 'Заказ '+DocNum+': не удалось найти оплаты!';
    exit;
  end;

  Try

    Query2.ExecSQL('alter trigger DOCS_CARD_BU_FISC inactive');
    Query2.ExecSQL('alter trigger DOCS_KASSA_BU_FISC inactive');

    Try
      for I := 0 to Query.RecordCount-1 do
      begin
        if Query.FieldByName('DOC_CARD_ID').AsString<>'' then
        begin
          if Card=1 then
            Query2.ExecSQL('Update docs_card set is_fiscal=1 where doc_id='+Query.FieldByName('DOC_CARD_ID').AsString);
          if Card=2 then
            Query2.ExecSQL('Update docs_card set is_fiscal=0 where doc_id='+Query.FieldByName('DOC_CARD_ID').AsString);

          if PosTerm=1 then
            Query2.ExecSQL('Update docs_card set payment_posterm=1, IS_POSTERM=1 where doc_id='+Query.FieldByName('DOC_CARD_ID').AsString);
          if PosTerm=2 then
            Query2.ExecSQL('Update docs_card set payment_posterm=0, IS_POSTERM=0 where doc_id='+Query.FieldByName('DOC_CARD_ID').AsString);
        end;
        if Query.FieldByName('DOC_KASSA_ID').AsString<>'' then
        begin
          if Kassa=1 then
            Query2.ExecSQL('Update docs_kassa set is_fiscal=1 where doc_id='+Query.FieldByName('DOC_KASSA_ID').AsString);
          if Kassa=2 then
            Query2.ExecSQL('Update docs_kassa set is_fiscal=0 where doc_id='+Query.FieldByName('DOC_KASSA_ID').AsString);
        end;
        Query.Next;
      end;
    Except
      Result := 'Заказ '+DocNum+': не удалось изменить фискальный призак!';
      exit;
    End;

  Finally
    Query2.ExecSQL('alter trigger DOCS_CARD_BU_FISC active');
    Query2.ExecSQL('alter trigger DOCS_KASSA_BU_FISC active');
  End;

  Result := 'Заказ '+DocNum+': обработан!';

end;

Function ExecSQL(Str: String; Form2Show: Boolean = false): String;
Begin
  Try
    Result := 'Выполняем скрипт:'+#13#10+Str+#13#10;
    if Form2Show then
    Query2.ExecSQL(Str) else
    begin
    Query2.Open(Str);
    Form2.Show;
    DataSource.Dataset := Query2;
    Form2.DBGrid1.DataSource := DataSource;
    end;
    Result := Result+'Скрипт выполнен успешно';
  Except
    On E:Exception do
    begin
      Result := Result+'Скрипт не выполнен из-за ошибки: '+#13#10+E.Message;
    end;
  End;
End;

Function GetPassword: String;
Begin
  Try
    Result := 'Пароль: ';
    Query.SQL.Clear;
    Query.SQL.Add('select USER_PASSWORD from users where description like '+#39+'%'+Form1.ComboBox7.Text+'%'+#39);
    Query.Open;
    if Query.RecordCount>0 then
    Result := Result+Query.FieldByName('USER_PASSWORD').AsString;
  Except
    On E:Exception do
    begin
      Result := 'Произошла ошибка: '+#13#10+E.Message;
    end;
  End;
End;

Function SetPassword: String;
Begin
  Try
    Query.SQL.Clear;
    Query.SQL.Add('update users set USER_PASSWORD='+#39+Form1.Edit2.Text+#39+' where description like '+#39+'%'+Form1.ComboBox7.Text+'%'+#39);
    Query.ExecSQL;
    Result := 'Пароль изменен успешно!';
  Except
    On E:Exception do
    begin
      Result := 'Произошла ошибка: '+#13#10+E.Message;
    end;
  End;
End;

Function GetScladIDByName(Str: String): Integer;
  Var
  I: Integer;
begin
  Result := -1;
  for I := Low(Sclads) to High(Sclads) do
    if AnsiUpperCase(Str)=AnsiUpperCase(Sclads[I].Name) then
  Result := Sclads[I].ID;
end;

Function GetScladNameByID(Str: Integer): String;
  Var
  I: Integer;
begin
  Result := '';
  for I := Low(Sclads) to High(Sclads) do
    if Str=Sclads[I].ID then
  Result := Sclads[I].Name;
end;

procedure TForm1.Button1Click(Sender: TObject);
  Var
  I: Integer;
begin
  case PageControl1.ActivePageIndex of
    0:
      begin
        case ComboBox1.ItemIndex of
          0:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'CURRENT_SCLAD_ID',IntToStr(GetScladIdByName(ComboBox2.Text))));
            end;
          1:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'SCLAD_KREDIT_ID',IntToStr(GetScladIdByName(ComboBox2.Text))));
            end;
          2:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'SCLAD_TO',IntToStr(GetScladIdByName(ComboBox2.Text))));
            end;
        end;
      end;
    1:
      begin
        for I := 0 to Memo1.Lines.Count-1 do
        Memo2.Lines.Add(ChangeFiscPay(Memo1.Lines.Strings[I],ComboBox4.ItemIndex, ComboBox5.ItemIndex, ComboBox6.ItemIndex));
      end;
    2:
      begin
        case ComboBox3.ItemIndex of
          0:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'STATUS_ID','1'));
            end;
          1:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'STATUS_ID','2'));
            end;
          2:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'STATUS_ID','3'));
            end;
          3:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'STATUS_ID','4'));
            end;
          4:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'STATUS_ID','5'));
            end;
          5:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'STATUS_ID','6'));
            end;
          6:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ChangeFieldOrder(Memo1.Lines.Strings[I],'STATUS_ID','7'));
            end;
        end;
      end;
    3:
      begin
        case RadioGroup1.ItemIndex of
          0: Memo2.Lines.Add(GetPassword);
          1: Memo2.Lines.Add(SetPassword);
        end;
      end;
    4:
      begin
        case RadioButton1.Checked of
          True:
            begin
              for I := 0 to Memo1.Lines.Count-1 do
              Memo2.Lines.Add(ExecSQL(StringReplace(Memo3.Text, ':var', Memo1.Lines.Strings[I],[rfReplaceAll, rfIgnoreCase]), RadioButton3.Checked));
            end;
          False:
            begin
              Memo2.Lines.Add(ExecSQL(Memo3.Text, RadioButton3.Checked));
            end;
        end;
      end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text='1237890' then
    Password.Hide;
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_Return then
    Button2.OnClick(Sender);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  If Assigned(Query) then
    Query.Free;
  If Assigned(Query2) then
    Query2.Free;
  if Assigned(DataSource) then
    DataSource.Free;
  If Assigned(Connection) then
    Connection.Free;
end;

procedure TForm1.FormShow(Sender: TObject);
  var
  OpenDialog: TOpenDialog;
  I: Integer;
begin
  Password.Show;
  Password.BringToFront;
  Edit1.SetFocus;
  FDB := '';
  OpenDialog := TOpenDialog.Create(nil);
  if FileExists(ExtractFilePath(Application.ExeName)+'\DB\Arm.fdb')=True then
    FDB := ExtractFilePath(Application.ExeName)+'\DB\Arm.fdb' else
      try
      OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
      OpenDialog.DefaultExt := '.fdb';
      OpenDialog.Filter := 'Firebird DataBase|*.fdb';
      OpenDialog.FilterIndex := 1;
      OpenDialog.Execute;
      FDB := OpenDialog.FileName;
      finally
        FreeAndNil(OpenDialog);
      end;
  if FDB='' then
  begin
    ShowMessage('Не указан путь до базы!');
    Application.Terminate;
  end;

    Try
      Connection := TFDConnection.Create(nil);
      Connection.DriverName := 'FB';
      with Connection.Params as TFDPhysFBConnectionDefParams do
        begin
          Server := '127.0.0.1';
          Database := fdb;
          UserName := 'sysdba';
          Password := 'masterkey';
          IBAdvanced := 'config=WireCompression=false';
        end;
      Connection.Connected := True;
    Except
    on E:Exception do
      begin
        ShowMessage('Произошла ошибка при подключении к БД.'+#13#10+E.ClassName+' '+E.Message+#13#10+'Обратитесь к тех. поддержке!');
        Application.Terminate;
      end;
    End;

    Query := TFDQuery.Create(nil);
    Query.Connection := Connection;
    Query2 := TFDQuery.Create(nil);
    Query2.Connection := Connection;

    DataSource := TDataSource.Create(nil);

  try
    Query.Open('select * from sclads');
    Query.FetchAll;
  except
    ShowMessage('Не удалось загрузить названия складов!');
    Application.Terminate;
  end;

  if Query.RecordCount<=0 then
  begin
    ShowMessage('Не удалось загрузить названия складов!');
    Application.Terminate;
  end else
  begin
    SetLength(Sclads,Query.RecordCount);
    for I := 0 to Query.RecordCount-1 do
      begin
        Sclads[I].ID := Query.FieldByName('ID').AsInteger;
        Sclads[I].Name := Query.FieldByName('NAME').AsString;
        Query.Next;
      end;
  Combobox2.Items.Clear;
  for I := Low(Sclads) to High(Sclads) do
    Combobox2.Items.Add(Sclads[I].Name);

  try
    Query.Open('select * from users order by description');
    Query.FetchAll;
  except
    ShowMessage('Не удалось загрузить пользователей');
    Application.Terminate;
  end;

  if Query.RecordCount<=0 then
  begin
    ShowMessage('Не удалось загрузить пользователей!');
    Application.Terminate;
  end else
  begin
    SetLength(Sclads,Query.RecordCount);
    Query.First;
    for I := 0 to Query.RecordCount-1 do
    begin
    Combobox7.Items.Add(Query.FieldByName('description').AsString);
    Query.Next;
    end;
  end;

  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox5.ItemIndex:=0;
  ComboBox6.ItemIndex:=0;
  ComboBox7.ItemIndex:=0;
end;


end;

end.
