unit Exploring_Arrays;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmIntroToArrays = class(TForm)
    sedMonthNumber: TSpinEdit;
    lblPrompt: TLabel;
    pnlMonthName: TPanel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    btnAllMonths: TButton;
    btnHuntingSeason: TButton;
    procedure sedMonthNumberChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIntroToArrays: TfrmIntroToArrays;

implementation

{$R *.dfm}





procedure TfrmIntroToArrays.FormCreate(Sender: TObject);
begin
   sedMonthNumber.Value := 1;
end;

procedure TfrmIntroToArrays.sedMonthNumberChange(Sender: TObject);
var
   arrMonths : Array[1..12] of String;
   intMonthNumber : Integer;
begin
   arrMonths[1] := 'January';
   arrMonths[2] := 'February';
   arrMonths[3] := 'March';
   arrMonths[4] := 'April';
   arrMonths[5] := 'May';
   arrMonths[6] := 'June';
   arrMonths[7] := 'July';
   arrMonths[8] := 'August';
   arrMonths[9] := 'September';
   arrMonths[10] := 'October';
   arrMonths[11] := 'November';
   arrMonths[12] := 'December';

   intMonthNumber := sedMonthNumber.Value;

   pnlMonthName.Caption := arrMonths[intMonthNumber];
end;

end.
