          // © Sacret'09 )))
unit Note;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, SynEdit, Printers;

type
  TForm1 = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    Dshtpfnm1: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    SynEdit1: TSynEdit;
    // из вкалдки Dialogs
    FindDialog1: TFindDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    ReplaceDialog1: TReplaceDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    N4: TMenuItem;
    N26: TMenuItem;
    procedure Dshtpfnm1Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure StatusBar(Sender: TObject; var Done:Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N26Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  EditFile: string;   // для создания/сохранения файла
  Stroka: string;     // сохраняемая строчка

implementation

{$R *.dfm}

// Вырезать
procedure TForm1.Dshtpfnm1Click(Sender: TObject);
begin
  SynEdit1.CutToClipboard;
end;
// Копировать
procedure TForm1.N22Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
end;
// Вставить
procedure TForm1.N23Click(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;
// Удалить (Очистить)
procedure TForm1.N24Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;
// Выделить всё
procedure TForm1.N25Click(Sender: TObject);
begin
  SynEdit1.SelectAll;
end;
// Правка - Вырезать
procedure TForm1.N11Click(Sender: TObject);
begin
  SynEdit1.CutToClipboard;
end;
// Правка - Копировать
procedure TForm1.N12Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
end;
// Правка - Вставить
procedure TForm1.N13Click(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;
// Правка - Удалить
procedure TForm1.N14Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;
// Правка - Выделить всё
procedure TForm1.N15Click(Sender: TObject);
begin
  SynEdit1.SelectAll;
end;
// Правка - Найти
procedure TForm1.N16Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;
// Правка - Найти - связка с текстом (через Форму)
procedure TForm1.FindDialog1Find(Sender: TObject);
var
  Buff,P,FT: PChar;
  BuffLen: Word;
begin
  with Sender as TFindDialog do
  begin
   GetMem(FT, Length(FindText) + 1);
   StrPCopy(FT, FindText);
   BuffLen:= SynEdit1.GetTextLen + 1;
   GetMem(Buff, BuffLen);
   SynEdit1.GetTextBuf(Buff, BuffLen);
   P:= Buff + SynEdit1.SelStart + SynEdit1.SelLength;
   P:= StrPos(P, FT);
   if P=nil then MessageBeep(0)
   else
    begin
     SynEdit1.SelStart:= P - Buff;
     SynEdit1.SelLength:= Length(FindText);
    end;
   FreeMem(FT, Length(FindText) + 1);
   FreeMem(Buff, BuffLen);
  end;  
end;
// Правка - Заменить
procedure TForm1.N17Click(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;
// Правка - Заменить - связка с текстом (через Форму)
procedure TForm1.ReplaceDialog1Find(Sender: TObject);
begin
  with Sender as TReplaceDialog do
  while True do
   begin
    if SynEdit1.SelText <> FindText then
    FindDialog1Find(Sender);
    if SynEdit1.SelLength = 0 then Break;
    SynEdit1.SelText:= ReplaceText;
    if not (frReplaceAll in Options) then Break;
   end;
end;
// Само перемещение
procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
label 10;
begin
 SynEdit1.HideSelection:=true;
 10:
  if pos(ReplaceDialog1.FindText,SynEdit1.Text)<>0 then
   begin
    SynEdit1.SelStart:=pos(ReplaceDialog1.FindText,SynEdit1.Text)-1;
    SynEdit1.SelLength:=Length(ReplaceDialog1.FindText);
    SynEdit1.SelText:=ReplaceDialog1.ReplaceText;
    goto 10;
   end;
 SynEdit1.HideSelection:=false;
end;
// Файл - Создать
procedure TForm1.N2Click(Sender: TObject);
begin
  SynEdit1.Lines.Clear;
end;
// Файл - Открыть
procedure TForm1.N3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
   EditFile:=OpenDialog1.FileName;
   SynEdit1.Lines.LoadFromFile(EditFile);
   Form1.Caption:='Документ - '+ExtractFileName(EditFile);
  end;
end;
// Файл - Выход
procedure TForm1.N9Click(Sender: TObject);
begin
  Close;
end;
// Файл - Сохранить
procedure TForm1.N5Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  SynEdit1.Lines.SaveToFile(EditFile);
  if SynEdit1.Modified then SynEdit1.Modified:=false;
end;
// Файл - Сохранить как
procedure TForm1.N6Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
   EditFile:=SaveDialog1.FileName;
   SynEdit1.Lines.SaveToFile(EditFile);
   Form1.Caption:='Документ - '+ExtractFileName(EditFile);
   if SynEdit1.Modified then SynEdit1.Modified:=false;
  end;
end;
// Файл - Настрояка печати
procedure TForm1.N7Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;
// Файл - Печать
procedure TForm1.N8Click(Sender: TObject);
var
 Stroka:System.TextFile;
 i:integer;
begin
 if PrintDialog1.Execute then
  begin
   AssignPrn(Stroka);
   Rewrite(Stroka);
   Printer.Canvas.Font:=SynEdit1.Font;
   for i:=0 to SynEdit1.Lines.Count-1 do
    Writeln(Stroka,SynEdit1.Lines[i]);
   System.CloseFile(Stroka);
  end;
end;
// Формат - Шрифт
procedure TForm1.N19Click(Sender: TObject);
begin
  if FontDialog1.Execute then SynEdit1.Font:=FontDialog1.Font;
end;
// Формат - Цвет текста
procedure TForm1.N20Click(Sender: TObject);
begin
  if ColorDialog1.Execute then SynEdit1.Font.Color:=ColorDialog1.Color;
end;
// Формат - Цвет фона
procedure TForm1.N21Click(Sender: TObject);
begin
  if ColorDialog1.Execute then SynEdit1.Color:=ColorDialog1.Color;
end;
// Нижнее меню - вывод часов
procedure TForm1.StatusBar(Sender: TObject; var Done:Boolean);
begin
  StatusBar1.Panels[0].Text:='  Время: ' + TimeToStr(Time);
end;
// Чтобы предыдущее работало
procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.OnIdle:=StatusBar;
end;
// При закрытии Формы - запрос на сохранение
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if SynEdit1.Modified then
 if MessageDlg('Файл '+ ExtractFileName(EditFile)+' был изменён. Перед выходом он не был сохранён '+#10#13'Уверены, что хотите выйти?',
   mtConfirmation,[mbYes,mbNo],0)=mrYes
   then Action:=caFree
   else Action:=caNone;
end;
// типа копирайта)
procedure TForm1.N26Click(Sender: TObject);
begin
  showmessage ('Привет))) Это снова я, всеми любимая и многих раздражающая Sacret! Эту и другие программы смотрите на www.sacret.ru');
end;

end.
