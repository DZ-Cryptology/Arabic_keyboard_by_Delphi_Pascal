unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls , clipbrd ;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i : cardinal ;
Const aaa : array [1..40] of ansistring = ('د','ج','ح','خ','ه','ع','غ','ف','ق','ث','ئ','ش','ذ','ط','ك','م','ن','ت','ا','ل','ب','ي','س','ض','ظ','ز','و','ة','ى','ر','ؤ','ء','ص','أ','آ','ـ','؟','!','.','،');

implementation

{$R *.dfm}

Function str2hex(S:ansiString):ansiString;
var n : cardinal ;
begin
result:='';
if length(S)>0 then
begin
for n:=1 to length(S) do result:=result+LowerCase(IntToHex(integer(S[n]),2));
end;
end;

function deleteLast(s:ansistring):ansistring;
begin
if length(s)>0 then
begin
result:='';
for i:=1 to (length(s)-1) do result:=result+S[i];
end;
end;

function tag2button(i:cardinal):tbutton;
begin
case i of
1:begin result := FORM1.button1; end;
2:begin result := form1.button2; end;
3:begin result := form1.button3; end;
4:begin result := form1.button4; end;
5:begin result := form1.button5; end;
6:begin result := form1.button6; end;
7:begin result := form1.button7; end;
8:begin result := form1.button8; end;
9:begin result := form1.button9; end;
10:begin result := form1.button10; end;
11:begin result := FORM1.button11; end;
12:begin result := form1.button12; end;
13:begin result := form1.button13; end;
14:begin result := form1.button14; end;
15:begin result := form1.button15; end;
16:begin result := form1.button16; end;
17:begin result := form1.button17; end;
18:begin result := form1.button18; end;
19:begin result := form1.button19; end;
20:begin result := form1.button20; end;
21:begin result := FORM1.button21; end;
22:begin result := form1.button22; end;
23:begin result := form1.button23; end;
24:begin result := form1.button24; end;
25:begin result := form1.button25; end;
26:begin result := form1.button26; end;
27:begin result := form1.button27; end;
28:begin result := form1.button28; end;
29:begin result := form1.button29; end;
30:begin result := form1.button30; end;
31:begin result := FORM1.button31; end;
32:begin result := form1.button32; end;
33:begin result := form1.button33; end;
34:begin result := form1.button34; end;
35:begin result := form1.button35; end;
36:begin result := form1.button36; end;
37:begin result := form1.button37; end;
38:begin result := form1.button38; end;
39:begin result := form1.button39; end;
40:begin result := form1.button40; end;
end;
end;

function IsReturnKeyPressed: Boolean;
begin
  Result := GetKeyState(VK_RETURN) < 0;
end;

function IsSpaceKeyPressed: Boolean;
begin
  Result := GetKeyState(VK_SPACE) < 0;
end;

procedure addcaption(o:Tobject;s:string);
begin
(o as TButton).Caption:=s;
end;

procedure add2memo(o:Tobject);
begin
if not IsReturnKeyPressed then FORM1.MEMO1.Text:=form1.Memo1.Text+(o as TButton).Caption;
end;

procedure GestionClicks (Key: Word) ;
begin
  case Key of
    VK_Return:begin form1.Memo1.Text:=form1.Memo1.Text+#13#10; end; // form1.Caption:='VK_Return';  end;
    //VK_ESCAPE:begin form1.Memo1.Text:=form1.Memo1.Text+#13#10;  end;
    VK_SPACE: begin form1.memo1.Text:=(form1.memo1.Text)+' ';  end;
    VK_DELETE:begin form1.memo1.Text:=deleteLast(form1.memo1.Text);  end;
    //VK_CLEAR: begin form1.Caption:='VK_CLEAR';  end;
    //VK_CANCEL:begin form1.Caption:='VK_CANCEL';  end;
    VK_BACK:  begin form1.memo1.Text:=deleteLast(form1.memo1.Text);  end;
  end;
end;

procedure GestionClicks2 (Key: char) ;
begin
  case Key of
    #$0D:begin form1.Memo1.Text:=form1.Memo1.Text+#13#10; end; // form1.Caption:='VK_Return';  end;
    //VK_ESCAPE:begin form1.Caption:='VK_ESCAPE';  end;
    //#$20:begin form1.memo1.Text:=(form1.memo1.Text)+' ';  end;
    #$08:begin form1.memo1.Text:=deleteLast(form1.memo1.Text);  end;
    //VK_CLEAR: begin form1.Caption:='VK_CLEAR';  end;
    //VK_CANCEL:begin form1.Caption:='VK_CANCEL';  end;
    #$2E:  begin form1.memo1.Text:=deleteLast(form1.memo1.Text);  end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
add2memo(sender);
end;

procedure TForm1.Button1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
GestionClicks(key);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
add2memo(sender);
end;

procedure TForm1.Button41Click(Sender: TObject);
begin
memo1.Text:=memo1.Text+' ';
end;

procedure TForm1.Button42Click(Sender: TObject);
begin
Clipboard.AsText := memo1.Text ;
end;

procedure TForm1.Button43Click(Sender: TObject);
begin
memo1.Text:=deleteLast(memo1.Text);
end;

procedure TForm1.Button44Click(Sender: TObject);
begin
form1.Memo1.Text:=form1.Memo1.Text+#13#10;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
for i:=1 to 40 do addcaption(tag2button(i),aaa[i]);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
timer1.Enabled:=false;
form1.Height:=500;
form1.Width:=830;
form1.Top:=40;
form1.Left:=219;
end;

end.
