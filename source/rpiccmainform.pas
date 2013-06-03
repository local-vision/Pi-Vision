{
This file (rpiCCMainForm) is part of Pi Vision.

What is Pi Vision?

     Pi Vision is a Graphics User Interface for the Raspberry Pi Camera.
     It allows you to controll the camera functions throught the camera's
     native apps. It also displays the terminal commands sent.

Copyright

     Pi Vision Copyright 2013 B.J.Rao. All Rights Reserved.

     This program is free software; you can redistribute it and/or
     modify it under the terms of the GNU General Public License version 2
     as published by the Free Software Foundation.

     This program is distributed in the hope that it will be useful,
     but WITHOUT ANY WARRANTY; without even the implied warranty of
     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
     GNU General Public License for more details.

     You should have received a copy of the GNU General Public License
     along with this program; if not, write to the Free Software
     Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

Attributions

     videopageimage.jpg:
     Under the CC BY-NC "Fir0002/Flagstaffotos" http://www.flagstaffotos.com.au/

     infopageimage.jpg:
     Under the CC BY-NC B.J.Rao

     mainpageimage.jpg:
     Under the CC BY-NC B.J.Rao

Trademarks

     All trademarks are the property of their respective owners
     - Raspberry Pi is a trademark owned by the Raspberry Pi Foundation

Disclaimer

     Provider=B.J.Rao

     IN NO EVENT SHALL Provider BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
     SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS,
     ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF
     REGENTS HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

     Provider SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED
     TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
     PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED
     HEREUNDER IS PROVIDED "AS IS". Provider HAS NO OBLIGATION TO PROVIDE
     MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS

}

unit rpiCCMainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls, ExtCtrls, ExtDlgs;

type

  { TMainForm }

  TMainForm = class(TForm)
    Button1: TButton;
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
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox2: TComboBox;
    ComboBox20: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    procedure Button10Click(Sender: TObject);
    procedure Button10MouseEnter(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button11MouseEnter(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button12MouseEnter(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button13MouseEnter(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button14MouseEnter(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button16MouseEnter(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button17MouseEnter(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button18MouseEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button1MouseEnter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button2MouseEnter(Sender: TObject);
    procedure Button2MouseLeave(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button3MouseEnter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button4MouseEnter(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button5MouseEnter(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button6MouseEnter(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button7MouseEnter(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button8MouseEnter(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button9MouseEnter(Sender: TObject);
    procedure CheckBox10Change(Sender: TObject);
    procedure CheckBox10MouseEnter(Sender: TObject);
    procedure CheckBox1MouseEnter(Sender: TObject);
    procedure CheckBox2MouseEnter(Sender: TObject);
    procedure CheckBox3MouseEnter(Sender: TObject);
    procedure CheckBox4MouseEnter(Sender: TObject);
    procedure CheckBox5MouseEnter(Sender: TObject);
    procedure CheckBox6MouseEnter(Sender: TObject);
    procedure CheckBox7MouseEnter(Sender: TObject);
    procedure CheckBox8MouseEnter(Sender: TObject);
    procedure CheckBox9Change(Sender: TObject);
    procedure CheckBox9MouseEnter(Sender: TObject);
    procedure ComboBox10Change(Sender: TObject);
    procedure ComboBox10MouseEnter(Sender: TObject);
    procedure ComboBox11Change(Sender: TObject);
    procedure ComboBox11MouseEnter(Sender: TObject);
    procedure ComboBox12Change(Sender: TObject);
    procedure ComboBox12MouseEnter(Sender: TObject);
    procedure ComboBox13Change(Sender: TObject);
    procedure ComboBox13MouseEnter(Sender: TObject);
    procedure ComboBox14Change(Sender: TObject);
    procedure ComboBox14MouseEnter(Sender: TObject);
    procedure ComboBox15Change(Sender: TObject);
    procedure ComboBox15MouseEnter(Sender: TObject);
    procedure ComboBox16Change(Sender: TObject);
    procedure ComboBox16MouseEnter(Sender: TObject);
    procedure ComboBox17Change(Sender: TObject);
    procedure ComboBox17MouseEnter(Sender: TObject);
    procedure ComboBox18Change(Sender: TObject);
    procedure ComboBox18MouseEnter(Sender: TObject);
    procedure ComboBox19Change(Sender: TObject);
    procedure ComboBox19MouseEnter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1MouseEnter(Sender: TObject);
    procedure ComboBox20Change(Sender: TObject);
    procedure ComboBox20MouseEnter(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox2MouseEnter(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox3MouseEnter(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox4MouseEnter(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox5MouseEnter(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox6MouseEnter(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure ComboBox7MouseEnter(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure ComboBox8MouseEnter(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
    procedure ComboBox9MouseEnter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit1MouseEnter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit2MouseEnter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
    procedure Edit3MouseEnter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: char);
    procedure Edit4MouseEnter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: char);
    procedure Edit5MouseEnter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: char);
    procedure Edit6MouseEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
  private
    procedure LoadComboBoxsItems;
    procedure InitializeAllControls;
    procedure ReadAllControls;
    procedure CleanUpForClosingApplication;
    procedure InitializeApplication;

    procedure UpdateStatusMemoText(lMemo:TMemo; const MemoText:String; const ClearMemoText:Boolean; const SetAtEnd:Boolean);
    procedure UpdateLabelText(lLabel:TLabel; const HintText:String);
    procedure HighLightSelectedButton(lButton:TButton; const PC:Integer);

    function SelectUserDirectory:Boolean;
    procedure SaveCapturedPictureAs;
    procedure SaveCapturedVideoAs;
    function LoadCurrentPictureToImage:Boolean;
    function LoadCurrentVideoToImage:Boolean; //non functional
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

{$IFDEF LINUX}
  uses rpiccBackEndManager, lclintf, baseunix;
{$ELSE}
  uses rpiccBackEndManager, lclintf;
{$ENDIF}

{$REGION 'Main Form Events'}

procedure TMainForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CleanUpForClosingApplication;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  InitializeApplication;
end;

procedure TMainForm.FormShow(Sender: TObject);
var localText1,localText2,localText3,localText4:String;
    {$IFDEF LINUX}
      SystemInformation: UtsName;
      s:String;
    {$ENDIF}
begin
  localText1:='Started';
  localText2:='Client Screen Size';
  localText3:='All Rights Reserved.';
  localText4:='is an open source project created by';

  UpdateStatusMemoText(Memo1,'',True,True);
  UpdateStatusMemoText(Memo1,c_Application_Title+c_Space+localText1,False,True);

  UpdateStatusMemoText(Memo1,localText2+c_DoublePoint+c_Space+rpiGetScreenSize,False,True);

  {$ifdef CPU32}
    //UpdateStatusMemoText(Memo1,'32-bit System',False);
  {$ENDIF}

  {$ifdef CPU64}
    //UpdateStatusMemoText(Memo1,'64-bit System',False);
  {$ENDIF}

  {$IFDEF UNIX}
     //UpdateStatusMemoText(Memo1,'Unix',False);
  {$ENDIF}

  {$IFDEF LINUX}
    {try
      fpuname(SystemInformation);

      s:='OS:'+SystemInformation.sysname;
      UpdateStatusMemoText(Memo1,s,False);
      s:='Name    '+SystemInformation.nodename;
      UpdateStatusMemoText(Memo1,s,False);
      s:='Release:'+SystemInformation.release;
      UpdateStatusMemoText(Memo1,s,False);
      s:='Version:'+SystemInformation.version;
      UpdateStatusMemoText(Memo1,s,False);
      s:='Machine:'+SystemInformation.machine;
      UpdateStatusMemoText(Memo1,s,False);
    except
      //
    end;}
  {$ENDIF}

  {$IFDEF DARWIN}
     UpdateStatusMemoText(Memo1,'OS: Darwin',False,True);
  {$ENDIF}

  {$IFDEF WIN32}
     UpdateStatusMemoText(Memo1,'OS: Windows 32 Bit',False,True);
  {$ENDIF}

  {$IFDEF WIN64}
     UpdateStatusMemoText(Memo1,'OS: Windows 64 Bit',False,True);
  {$ENDIF}

  UpdateLabelText(Label32,c_Application_Title);
  UpdateLabelText(Label33,c_Aplication_About);

  UpdateLabelText(Label34,c_Application_Title);
  UpdateLabelText(Label35,c_Aplication_About);
  UpdateLabelText(Label36,localText3+c_Space+c_Application_Title+c_Space+localText4+c_Space+c_Project_Creator);

  v_ApplicationStarted:=True;
end;

{$ENDREGION 'Main Form Events'}

{$REGION 'Controls'}

  {$REGION 'LabelTextDefault'}

procedure TMainForm.Label2Click(Sender: TObject);
begin
  ComboBox1.ItemIndex:=c_Default_Image_Ext_Index;
end;

procedure TMainForm.Label4Click(Sender: TObject);
begin
  ComboBox3.ItemIndex:=c_Default_Image_Size_Index;
end;

procedure TMainForm.Label5Click(Sender: TObject);
begin
  ComboBox4.ItemIndex:=c_Default_Image_Effect_Index;
end;

procedure TMainForm.Label6Click(Sender: TObject);
begin
  Edit1.Text:=IntToStr(c_Default_Image_Duration);
end;

procedure TMainForm.Label7Click(Sender: TObject);
begin
  Edit2.Text:=IntToStr(c_Default_Image_Delay);
end;

procedure TMainForm.Label8Click(Sender: TObject);
begin
  CheckBox2.Checked:=c_Default_Image_Flip_Horizontal;
  CheckBox3.Checked:=c_Default_Image_Flip_Vertical;
end;

procedure TMainForm.Label9Click(Sender: TObject);
begin
  ComboBox5.ItemIndex:=c_Default_Video_Size_Index;
end;

procedure TMainForm.Label3Click(Sender: TObject);
begin
  ComboBox2.ItemIndex:=c_Default_Image_Quality_Index;
end;

procedure TMainForm.Label2MouseEnter(Sender: TObject);
var localText1:String;
begin
  localText1:='Click to Set Default Value';

  UpdateLabelText(Label1,localText1);
end;

procedure TMainForm.Label30Click(Sender: TObject);
begin
  Edit5.Text:=IntToStr(c_Default_Network_Port);
end;

procedure TMainForm.Label31Click(Sender: TObject);
begin
  Edit6.Text:=IntToStr(c_Default_Network_Duration);
end;

procedure TMainForm.Label12Click(Sender: TObject);
begin
  ComboBox7.ItemIndex:=c_Default_Video_FPS_Index;
end;

procedure TMainForm.Label10Click(Sender: TObject);
begin
  ComboBox6.ItemIndex:=c_Default_Video_Quality_Index;
end;

procedure TMainForm.Label11Click(Sender: TObject);
begin
  Edit3.Text:=IntToStr(c_Default_Video_Duration);
end;

procedure TMainForm.Label15Click(Sender: TObject);
begin
  ComboBox8.ItemIndex:=c_Default_PreviewWindowPosition_Index;
end;

procedure TMainForm.Label16Click(Sender: TObject);
begin
  ComboBox9.ItemIndex:=c_Default_PreviewWindowSize_Index;
end;

procedure TMainForm.Label17Click(Sender: TObject);
begin
  ComboBox10.ItemIndex:=c_Default_Camera_Brightness_Index;
end;

procedure TMainForm.Label18Click(Sender: TObject);
begin
  ComboBox11.ItemIndex:=c_Default_Camera_Contrast_Index;
end;

procedure TMainForm.Label19Click(Sender: TObject);
begin
  ComboBox12.ItemIndex:=c_Default_Camera_Sharpness_Index;
end;

procedure TMainForm.Label20Click(Sender: TObject);
begin
  ComboBox13.ItemIndex:=c_Default_Camera_Saturation_Index;
end;

procedure TMainForm.Label21Click(Sender: TObject);
begin
  ComboBox14.ItemIndex:=c_Default_Camera_AWB_Index;
end;

procedure TMainForm.Label22Click(Sender: TObject);
begin
  ComboBox15.ItemIndex:=c_Default_Camera_EV_Index;
end;

procedure TMainForm.Label23Click(Sender: TObject);
begin
  ComboBox16.ItemIndex:=c_Default_Camera_Exposure_Index;
end;

procedure TMainForm.Label24Click(Sender: TObject);
begin
  ComboBox17.ItemIndex:=c_Default_Camera_Rotation_Index;
end;

procedure TMainForm.Label26Click(Sender: TObject);
begin
  ComboBox19.ItemIndex:=c_Default_Camera_ColorEffect_U_Index;
  ComboBox20.ItemIndex:=c_Default_Camera_ColorEffect_V_Index;
end;

procedure TMainForm.Label27Click(Sender: TObject);
begin
  ComboBox18.ItemIndex:=c_Default_Camera_Metering_Index;
end;

  {$ENDREGION 'LabelTextDefault'}

  {$REGION 'Main Form Controls'}

procedure TMainForm.Button1MouseEnter(Sender: TObject);
var localText1:String;
begin
  localText1:='Open Terminal and Enter Commands Manually';

  UpdateLabelText(Label1,localText1);
end;

{$ENDREGION 'Main Form Controls'}

  {$REGION 'Page Tabs Control 1'}

procedure TMainForm.Button2Click(Sender: TObject);
begin
  PageControl1.PageIndex:=0;
  HighLightSelectedButton(Button2,1);
end;

procedure TMainForm.Button2MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Main Page Tab');
end;

procedure TMainForm.Button2MouseLeave(Sender: TObject);
begin
  UpdateLabelText(Label1,'');
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  PageControl1.PageIndex:=2;
  HighLightSelectedButton(Button3,1);
end;

procedure TMainForm.Button3MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Make a Video');
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  PageControl1.PageIndex:=1;
  HighLightSelectedButton(Button4,1);
end;

procedure TMainForm.Button4MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Take a Photo');
end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
  PageControl1.PageIndex:=3;
  HighLightSelectedButton(Button5,1);
end;

procedure TMainForm.Button5MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Configure Camera Settings');
end;

procedure TMainForm.Button6Click(Sender: TObject);
begin
  PageControl1.PageIndex:=5;
  HighLightSelectedButton(Button6,1);
end;

procedure TMainForm.Button6MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Info and Documentation');
end;

//additional tab for settings

procedure TMainForm.Button12Click(Sender: TObject);
begin
  PageControl1.PageIndex:=4;
end;

procedure TMainForm.Button12MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Addition Settings Controls');
end;

procedure TMainForm.Button13Click(Sender: TObject);
begin
  PageControl1.PageIndex:=3;
end;

procedure TMainForm.Button13MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Go Back to Main Settings Page');
end;

  {$ENDREGION 'Page Control 1'}

  {$REGION 'Page Tabs Control 2'}

procedure TMainForm.Button16Click(Sender: TObject);
begin
  PageControl2.PageIndex:=1;
end;

procedure TMainForm.Button16MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'View License');
end;

procedure TMainForm.Button17Click(Sender: TObject);
begin
  PageControl2.PageIndex:=0;
end;

procedure TMainForm.Button17MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Go Back to Main Info Page');
end;

procedure TMainForm.Button18Click(Sender: TObject);
begin
  PageControl2.PageIndex:=2;
end;

procedure TMainForm.Button18MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Project Contributors');
end;

  {$ENDREGION 'Page Control 2'}

  {$REGION 'Main Tab Controls'}

procedure TMainForm.CheckBox4MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Test Camera Preview in Demo Mode');
end;

procedure TMainForm.Button7MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Start a 5 sec Camera Preview Window');
end;

{$ENDREGION 'Main Tab Controls'}

  {$REGION 'Photo Tab Controls'}

procedure TMainForm.Image2Click(Sender: TObject);
begin
  SaveCapturedPictureAs;
end;

procedure TMainForm.Image2MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Click to Save Picture');
end;

procedure TMainForm.Button8MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Capture an Image');
end;

procedure TMainForm.Button9MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Start Preview');
end;

procedure TMainForm.CheckBox10Change(Sender: TObject);
begin
  if CheckBox10.Checked then
  begin
    ComboBox19.Enabled:=True;
    ComboBox20.Enabled:=True;
  end else
  begin
    ComboBox19.Enabled:=False;
    ComboBox20.Enabled:=False;
  end;
end;

procedure TMainForm.CheckBox10MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Enable UV Color Effect');
end;

procedure TMainForm.CheckBox1MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Apply Time Laps Capture Session');
end;

procedure TMainForm.CheckBox2MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Flip Video Horizontal');
end;

procedure TMainForm.CheckBox3MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Flip Video Vertical');
end;

procedure TMainForm.ComboBox1Change(Sender: TObject);
begin
  v_Image_Ext_Index:=ComboBox1.ItemIndex;
end;

procedure TMainForm.ComboBox1MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Capture File Type; .jpg, .bmp, or .png | .jpg is Default');
end;

procedure TMainForm.ComboBox2Change(Sender: TObject);
begin
  v_Image_Quality_Index:=ComboBox2.ItemIndex;
end;

procedure TMainForm.ComboBox2MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Capture Quality. Applies to .jpg Only');
end;

procedure TMainForm.ComboBox3Change(Sender: TObject);
begin
  v_Image_Size_Index:=ComboBox3.ItemIndex;
end;

procedure TMainForm.ComboBox3MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Capture Size');
end;

procedure TMainForm.ComboBox4Change(Sender: TObject);
begin
  v_Image_Effect_Index:=ComboBox4.ItemIndex;
end;

procedure TMainForm.ComboBox4MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Select a Video Effect');
end;

procedure TMainForm.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text='' then
  begin
    Edit1.Text:=IntToStr(c_Default_Image_Duration);
  end;
end;

procedure TMainForm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if (not (Key in ['0'..'9', #8])) then //if user types letters very fast this can fail!
  begin
    Key := #0;
  end;
end;

procedure TMainForm.Edit1MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Session Duration in Milliseconds, e.g. 5000 = 5 seconds ');
end;

procedure TMainForm.Edit2Exit(Sender: TObject);
begin
  if Edit2.Text='' then
  begin
    Edit2.Text:=IntToStr(c_Default_Image_Delay);
  end;
end;

procedure TMainForm.Edit2KeyPress(Sender: TObject; var Key: char);
begin
  if (not (Key in ['0'..'9', #8])) then //if user types letters very fast this can fail!
  begin
    Key := #0;
  end;
end;

procedure TMainForm.Edit2MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Delay Between Image Captures in Milliseconds. Relates to Time Lapse');
end;

{$ENDREGION 'Photo Tab Controls'}

  {$REGION 'Video Tab Controls'}

procedure TMainForm.ComboBox5Change(Sender: TObject);
begin
  v_Video_Size_Index:=ComboBox5.ItemIndex;
end;

procedure TMainForm.ComboBox5MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Video Size');
end;

procedure TMainForm.ComboBox6Change(Sender: TObject);
begin
  v_Video_Quality_Index:=ComboBox6.ItemIndex;
end;

procedure TMainForm.ComboBox6MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Video Quality. Relates to Bitrate');
end;

procedure TMainForm.ComboBox7Change(Sender: TObject);
begin
  v_Video_FPS_Index:=ComboBox7.ItemIndex;
end;

procedure TMainForm.ComboBox7MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Video Frame Per Second');
end;

procedure TMainForm.Edit3MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Video Recording Duration');
end;

procedure TMainForm.Edit4Exit(Sender: TObject);
begin
  if Edit4.Text='' then
  begin
    //Edit4.Text:=IntToStr(c_Default_Video_Duration);
  end;
end;

procedure TMainForm.Edit4KeyPress(Sender: TObject; var Key: char);
begin
  if (not (Key in ['0'..'9', #8])) then //if user types letters very fast this can fail!
  begin
    Key := #0;
  end;
end;

procedure TMainForm.Edit4MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Enter IP Address of Client (Receiving) Machine');
end;

procedure TMainForm.Edit5Exit(Sender: TObject);
begin
  if Edit5.Text='' then
  begin
    Edit5.Text:=IntToStr(c_Default_Network_Port);
  end;
end;

procedure TMainForm.Edit5KeyPress(Sender: TObject; var Key: char);
begin
  if (not (Key in ['0'..'9', #8])) then //if user types letters very fast this can fail!
  begin
    Key := #0;
  end;
end;

procedure TMainForm.Edit5MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Enter Port Number');
end;

procedure TMainForm.Edit6Exit(Sender: TObject);
begin
  if Edit6.Text='' then
  begin
    Edit6.Text:=IntToStr(c_Default_Network_Duration);
  end;
end;

procedure TMainForm.Edit6KeyPress(Sender: TObject; var Key: char);
begin
  if (not (Key in ['0'..'9', #8])) then //if user types letters very fast this can fail!
  begin
    Key := #0;
  end;
end;

procedure TMainForm.Edit6MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Enter Duration of the Video Stream in Milliseconds');
end;

procedure TMainForm.Edit3Exit(Sender: TObject);
begin
  if Edit3.Text='' then
  begin
    Edit3.Text:=IntToStr(c_Default_Video_Duration);
  end;
end;

procedure TMainForm.Edit3KeyPress(Sender: TObject; var Key: char);
begin
  if (not (Key in ['0'..'9', #8])) then //if user types letters very fast this can fail!
  begin
    Key := #0;
  end;
end;

procedure TMainForm.CheckBox5MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Enable Video Stabalization');
end;

procedure TMainForm.Button10MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Start Video Recoding');
end;

  {$ENDREGION 'Video Tab Controls'}

  {$REGION 'Settings Tab Controls'}

procedure TMainForm.Button11Click(Sender: TObject);
begin
  rpiDefaultAll;
  InitializeAllControls;
end;

procedure TMainForm.Button11MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Default All Settings');
end;

procedure TMainForm.ComboBox8Change(Sender: TObject);
begin
  v_Preview_Position_Index:=ComboBox8.ItemIndex;
end;

procedure TMainForm.ComboBox8MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Preview Window Position');
end;

procedure TMainForm.ComboBox9Change(Sender: TObject);
var localText1:String;
    Value,PreviewResolution,ImageWidth,ImageHeight:Integer;
begin
  localText1:='Warning: Selected Preview Size Setting may Exceed Screen Size';

  Value:=ComboBox9.ItemIndex;

  ImageWidth:=c_Default_Image_Width; ImageHeight:=c_Default_Image_Height;

  v_Preview_Size_Index:=Value;
  rpiExtractWidthHeightValuesFromString(prm_PreviewWindowSizeMap[v_Preview_Size_Index],ImageWidth,ImageHeight);
  PreviewResolution:=ImageWidth*ImageHeight;
  if (ScreenWidth[0]*ScreenHeight[0])<(PreviewResolution) then
  begin
    UpdateStatusMemoText(Memo2,localText1,True,True);
  end else
  begin
    UpdateStatusMemoText(Memo2,'',True,True);
  end;
end;

procedure TMainForm.ComboBox9MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Preview Window Size');
end;

procedure TMainForm.CheckBox6MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Enable Video Preview');
end;

procedure TMainForm.CheckBox7MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Apply RAW Output. Relates to .jpg Only');
end;

procedure TMainForm.CheckBox8MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Apply ISO Output');
end;

procedure TMainForm.CheckBox9Change(Sender: TObject);
var localText1:String;
begin
 localText1:='Desktop may Not be Accessible During FullScreen Preview Session. Continue?';

 if (CheckBox9.Checked) and (v_ApplicationStarted) then // full screen can not be escaped. Inform user
 begin
   if MessageDlg(localText1, mtConfirmation,[mbYes,mbNo], 0)=6 then
   begin
     CheckBox9.Checked:=True;
   end else
   begin
     CheckBox9.Checked:=False;
   end;
 end;
end;

procedure TMainForm.CheckBox9MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Enable Fullscreen Preview');
end;

procedure TMainForm.ComboBox10Change(Sender: TObject);
begin
  v_Camera_Brightness_Index:=ComboBox10.ItemIndex;
end;

procedure TMainForm.ComboBox10MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Brightness');
end;

procedure TMainForm.ComboBox11Change(Sender: TObject);
begin
  v_Camera_Contrast_Index:=ComboBox11.ItemIndex;
end;

procedure TMainForm.ComboBox11MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Contrast');
end;

procedure TMainForm.ComboBox12Change(Sender: TObject);
begin
  v_Camera_Sharpness_Index:=ComboBox12.ItemIndex;
end;

procedure TMainForm.ComboBox12MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Sharpness');
end;

procedure TMainForm.ComboBox13Change(Sender: TObject);
begin
  v_Camera_Saturation_Index:=ComboBox13.ItemIndex;
end;

procedure TMainForm.ComboBox13MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Saturation');
end;

procedure TMainForm.ComboBox14Change(Sender: TObject);
begin
  v_Camera_AWB_Index:=ComboBox14.ItemIndex;
end;

procedure TMainForm.ComboBox14MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Auto White Balance');
end;

procedure TMainForm.ComboBox15Change(Sender: TObject);
begin
  v_Camera_EV_Index:=ComboBox15.ItemIndex;
end;

procedure TMainForm.ComboBox15MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image EV Compensation');
end;

procedure TMainForm.ComboBox16Change(Sender: TObject);
begin
  v_Camera_Exposure_Index:=ComboBox16.ItemIndex;
end;

procedure TMainForm.ComboBox16MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Exposure');
end;

procedure TMainForm.ComboBox17Change(Sender: TObject);
begin
  v_Camera_Rotation_Index:=ComboBox17.ItemIndex;
end;

procedure TMainForm.ComboBox17MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Image Rotation');
end;

procedure TMainForm.ComboBox18Change(Sender: TObject);
begin
  v_Camera_Metering_Index:=ComboBox18.ItemIndex;
end;

procedure TMainForm.ComboBox18MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Metering');
end;

procedure TMainForm.ComboBox19Change(Sender: TObject);
begin
  v_Camera_ColorEffect_U_Index:=ComboBox19.ItemIndex;
end;

procedure TMainForm.ComboBox19MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Color Effect U Channel');
end;

procedure TMainForm.ComboBox20Change(Sender: TObject);
begin
  v_Camera_ColorEffect_V_Index:=ComboBox20.ItemIndex;
end;

procedure TMainForm.ComboBox20MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Set Color Effect V Channel');
end;

procedure TMainForm.Button14MouseEnter(Sender: TObject);
begin
  UpdateLabelText(Label1,'Start Network Video Streaming');
end;

  {$ENDREGION 'Settings Tab Controls'}

{$ENDREGION 'Controls'}

{$REGION 'Support'}

procedure TMainForm.LoadComboBoxsItems;
var n:Integer;
begin
  //file type
  for n:=0 to Length(prm_ExtMap)-1 do
  begin
    ComboBox1.AddItem(prm_ExtMap[n],nil);
  end;

  //jpg quality
  for n:=0 to Length(prm_JPG_QualityMap)-1 do
  begin
    ComboBox2.AddItem(prm_JPG_QualityMap[n],nil);
  end;

  // image size
  for n:=0 to Length(prm_ImageSizeMap)-1 do
  begin
    ComboBox3.AddItem(prm_ImageSizeMap[n],nil);
  end;

  //image effect
  for n:=0 to Length(prm_ImxfxMap)-1 do
  begin
    ComboBox4.AddItem(prm_ImxfxMap[n],nil);
  end;

  // video size
  for n:=0 to Length(prm_VideoSizeMap)-1 do
  begin
    ComboBox5.AddItem(prm_VideoSizeMap[n],nil);
  end;

  //video quality; bitrate calculation
  for n:=0 to Length(prm_VideoQualitytMap)-1 do
  begin
    ComboBox6.AddItem(prm_VideoQualitytMap[n],nil);
  end;

  //video FPS
  for n:=0 to Length(prm_VideoFPSMap)-1 do
  begin
    ComboBox7.AddItem(prm_VideoFPSMap[n],nil);
  end;

  //Preview Position
  for n:=0 to Length(prm_PreviewWindowPositionMap)-1 do
  begin
    ComboBox8.AddItem(prm_PreviewWindowPositionMap[n],nil);
  end;

  //Preview Size
  for n:=0 to Length(prm_PreviewWindowSizeMap)-1 do
  begin
    ComboBox9.AddItem(prm_PreviewWindowSizeMap[n],nil);
  end;

  //Camera Brightness
  for n:=0 to Length(prm_7_LevelListMap)-1 do
  begin
    ComboBox10.AddItem(prm_7_LevelListMap[n],nil);
  end;

  //Camera Contrast
  for n:=0 to Length(prm_7_LevelListMap)-1 do
  begin
    ComboBox11.AddItem(prm_7_LevelListMap[n],nil);
  end;

  //Camera Sharpness
  for n:=0 to Length(prm_7_LevelListMap)-1 do
  begin
    ComboBox12.AddItem(prm_7_LevelListMap[n],nil);
  end;

  //Camera Saturation
  for n:=0 to Length(prm_7_LevelListMap)-1 do
  begin
    ComboBox13.AddItem(prm_7_LevelListMap[n],nil);
  end;

  //Camera AWB
  for n:=0 to Length(prm_AwbMap)-1 do
  begin
    ComboBox14.AddItem(prm_AwbMap[n],nil);
  end;

  //Camera EV
  for n:=0 to Length(prm_7_LevelListMap)-1 do
  begin
    ComboBox15.AddItem(prm_7_LevelListMap[n],nil);
  end;

  //Camera Exposure
  for n:=0 to Length(prm_ExposureMap)-1 do
  begin
    ComboBox16.AddItem(prm_ExposureMap[n],nil);
  end;

  //Camera Rotation
  for n:=0 to Length(prm_RotationMap)-1 do
  begin
    ComboBox17.AddItem(prm_RotationMap[n],nil);
  end;

  //Camera Metering
  for n:=0 to Length(prm_MeteringMap)-1 do
  begin
    ComboBox18.AddItem(prm_MeteringMap[n],nil);
  end;

  //Camera Color Effect U
  for n:=0 to Length(prm_7_LevelListMap)-1 do
  begin
    ComboBox19.AddItem(prm_7_LevelListMap[n],nil);
  end;

  //Camera Color Effect U
  for n:=0 to Length(prm_7_LevelListMap)-1 do
  begin
    ComboBox20.AddItem(prm_7_LevelListMap[n],nil);
  end;
end;

procedure TMainForm.InitializeAllControls;
begin
  {n:=0;
  while n<=ComboBox1.Items.Count-1 do
  begin
    if (v_Image_Ext=ComboBox1.Items.Strings[n]) then
    begin
      ComboBox1.ItemIndex:=n;
      n:=ComboBox1.Items.Count+1; // +1 to stop the loop
    end else
    begin
      n:=n+1;
    end;
  end;}

  //Main Tab
  CheckBox4.Checked:=v_ShowDemoPreview;

  //Photo tab
  ComboBox1.ItemIndex:=v_Image_Ext_Index;
  ComboBox2.ItemIndex:=v_Image_Quality_Index;
  ComboBox3.ItemIndex:=v_Image_Size_Index;
  ComboBox4.ItemIndex:=v_Image_Effect_Index;
  CheckBox1.Checked:=v_Image_MakeTimeLapse;
  CheckBox2.Checked:=v_Image_Flip_Horizontal; CheckBox3.Checked:=v_Image_Flip_Vertical;
  Edit1.Text:=IntToStr(v_Image_Duration);
  Edit2.Text:=IntToStr(v_Image_Delay);
  CheckBox7.Checked:=v_Image_RAW_Output;
  CheckBox8.Checked:=v_Image_ISO_Output;

  //Video tab
  ComboBox5.ItemIndex:=v_Video_Size_Index;
  ComboBox6.ItemIndex:=v_Video_Quality_Index;
  ComboBox7.ItemIndex:=v_Video_FPS_Index;
  CheckBox5.Checked:=v_VideoStabilation;
  Edit3.Text:=IntToStr(v_Video_Duration);

  //Settings tab (preview section)
  ComboBox8.ItemIndex:=v_Preview_Position_Index;
  ComboBox9.ItemIndex:=v_Preview_Size_Index;
  CheckBox6.Checked:=v_Preview_ShowPreview;
  CheckBox9.Checked:=v_Preview_FullScreen;
  rpiSetPreviewModeIndex;

  //Settings tab (camera section)
  ComboBox10.ItemIndex:=v_Camera_Brightness_Index;
  ComboBox11.ItemIndex:=v_Camera_Contrast_Index;
  ComboBox12.ItemIndex:=v_Camera_Sharpness_Index;
  ComboBox13.ItemIndex:=v_Camera_Saturation_Index;
  ComboBox14.ItemIndex:=v_Camera_AWB_Index;
  ComboBox15.ItemIndex:=v_Camera_EV_Index;
  ComboBox16.ItemIndex:=v_Camera_Exposure_Index;
  ComboBox17.ItemIndex:=v_Camera_Rotation_Index;

  //Settings tab (additional section)
  ComboBox18.ItemIndex:=v_Camera_Metering_Index;
  ComboBox19.ItemIndex:=v_Camera_ColorEffect_U_Index;
  ComboBox20.ItemIndex:=v_Camera_ColorEffect_V_Index;
  CheckBox10.Checked:=v_Camera_ColorEffect_UV;

  Edit4.Text:=IntToStr(v_Network_IPAddress);
  Edit5.Text:=IntToStr(v_Network_Port);
  Edit6.Text:=IntToStr(v_Network_Duration);
end;

procedure TMainForm.ReadAllControls;
begin
  //Main Tab
  v_ShowDemoPreview:=CheckBox4.Checked;

  //Photo tab
  v_Image_Ext_Index:=ComboBox1.ItemIndex;
  v_Image_Quality_Index:=ComboBox2.ItemIndex;
  v_Image_Size_Index:=ComboBox3.ItemIndex;
  v_Image_Effect_Index:=ComboBox4.ItemIndex;
  v_Image_MakeTimeLapse:=CheckBox1.Checked;
  v_Image_Flip_Horizontal:=CheckBox2.Checked; v_Image_Flip_Vertical:=CheckBox3.Checked;
  v_Image_Duration:=StrToInt(Edit1.Text);
  v_Image_Delay:=StrToInt(Edit2.Text);
  v_Image_RAW_Output:=CheckBox7.Checked;
  v_Image_ISO_Output:=CheckBox8.Checked;

  //Video tab
  v_Video_Size_Index:=ComboBox5.ItemIndex;
  v_Video_Quality_Index:=ComboBox6.ItemIndex;
  v_Video_FPS_Index:=ComboBox7.ItemIndex;
  v_VideoStabilation:=CheckBox5.Checked;
  v_Video_Duration:=StrToInt(Edit3.Text);

  //Settings tab (preview section)
  v_Preview_Position_Index:=ComboBox8.ItemIndex;
  v_Preview_Size_Index:=ComboBox9.ItemIndex;
  v_Preview_ShowPreview:=CheckBox6.Checked;
  v_Preview_FullScreen:=CheckBox9.Checked;
  rpiSetPreviewModeIndex;

  //Settings tab (camera section)
  v_Camera_Brightness_Index:=ComboBox10.ItemIndex;
  v_Camera_Contrast_Index:=ComboBox11.ItemIndex;
  v_Camera_Sharpness_Index:=ComboBox12.ItemIndex;
  v_Camera_Saturation_Index:=ComboBox13.ItemIndex;
  v_Camera_AWB_Index:=ComboBox14.ItemIndex;
  v_Camera_EV_Index:=ComboBox15.ItemIndex;
  v_Camera_Exposure_Index:=ComboBox16.ItemIndex;
  v_Camera_Rotation_Index:=ComboBox17.ItemIndex;

  //Settings tab (adfditional section)
  v_Camera_Metering_Index:=ComboBox18.ItemIndex;
  v_Camera_ColorEffect_U_Index:=ComboBox19.ItemIndex;
  v_Camera_ColorEffect_V_Index:=ComboBox20.ItemIndex;
  v_Camera_ColorEffect_UV:=CheckBox10.Checked;

  v_Network_IPAddress:=StrToInt(Edit4.Text);
  v_Network_Port:=StrToInt(Edit5.Text);
  v_Network_Duration:=StrToInt(Edit6.Text);
end;

procedure TMainForm.CleanUpForClosingApplication;
begin
  ReadAllControls;
  rpiSaveUserSettings(AppURL+c_SettingsFile_Path);
end;

procedure TMainForm.InitializeApplication;
begin
  rpiGetScreenSize;
  LoadComboBoxsItems;
  AppURL:=ExtractFilePath(ParamStr(0));// works. But this is not the correct approach
  Label1.Caption:='';
  PageControl1.PageIndex:=0; //set main page
  HighLightSelectedButton(Button2,1); // highlight main page button
  PageControl2.PageIndex:=0; //set info page to first page

  if FileExists(AppURL+c_SettingsFile_Path) then // if the settings file does not exists it will use default values
  begin
    rpiLoadUserSettings(AppURL+c_SettingsFile_Path);
  end;

  InitializeAllControls;

  //DetectCameraApp;

  MainForm.Caption:=c_Application_Title;
end;

function TMainForm.SelectUserDirectory:Boolean;
var localText1,localText2:String;
begin
  localText1:='Select Directory to Save Time Laps Images';
  localText2:='Error';

  Result:=False;

  try
    SelectDirectoryDialog1.Title:=localText1;
    if not(SelectDirectoryDialog1.Execute) then exit;
    v_UserSelectedDirectory:=SelectDirectoryDialog1.FileName+'/';
    //showmessage(v_UserSelectedDirectory);
    Result:=False;
  except
    on E: Exception do begin MessageDlg(localText2,localText2+': '+E.Message,mtError,[mbOk],0); end;
  end;
end;

procedure TMainForm.SaveCapturedPictureAs;
var ImageFileName:String;
    localText1,localText2:String;
begin
  localText1:='Error';
  localText2:='Captured Image File Not Found: ';

  ImageFileName:=rpiGetCapturedPictureFileName;
  if FileExists(ImageFileName) then
  begin
    try
      SavePictureDialog1.DefaultExt:=ExtractFileExt(ImageFileName);
      if not(SavePictureDialog1.Execute) then exit;
      CopyFile(ImageFileName,SavePictureDialog1.FileName,True);
    except
      on E: Exception do begin MessageDlg(localText1,localText1+': '+E.Message,mtError,[mbOk],0); end;
    end;
  end else
  begin
    UpdateStatusMemoText(Memo2,localText2+ImageFileName,True,True);
  end;
end;

procedure TMainForm.SaveCapturedVideoAs;
var VideoFileName:String;
    localText1,localText2:String;
begin
  localText1:='Error';
  localText2:='Captured Video File Not Found: ';

  VideoFileName:=rpiGetCapturedVideoFileName;
  if FileExists(VideoFileName) then
  begin
    try
      SaveDialog1.DefaultExt:=ExtractFileExt(VideoFileName);
      if not(SaveDialog1.Execute) then exit;
      CopyFile(VideoFileName,SaveDialog1.FileName,True);
    except
      on E: Exception do begin MessageDlg(localText1,localText1+': '+E.Message,mtError,[mbOk],0); end;
    end;
  end else
  begin
    UpdateStatusMemoText(Memo2,localText2+VideoFileName,False,True);
  end;
end;

function TMainForm.LoadCurrentPictureToImage:Boolean;
var ImageFileName:String;
    localText1,localText2,localText3:String;
begin
  localText1:='Captured Image File Not Found: ';
  localText2:='Attempting to Load Default Image';
  localText3:='Error';

  Result:=False;
  ImageFileName:=rpiGetCapturedPictureFileName;
  if FileExists(ImageFileName) then
  begin
    try
      Image2.Picture.LoadFromFile(ImageFileName);
      Image2.Refresh;
      Result:=True;
    except
      on E: Exception do begin MessageDlg(localText3,localText3+': '+E.Message,mtError,[mbOk],0); end;
    end;
  end else
  begin
    UpdateStatusMemoText(Memo2,localText1+ImageFileName,False,True);
    UpdateStatusMemoText(Memo2,localText2,False,True);
    ImageFileName:=AppURL+c_DataDir+c_DefaultImageName;
    if FileExists(ImageFileName) then
    begin
      try
        Image2.Picture.LoadFromFile(ImageFileName);
        Image2.Refresh;
      except
        on E: Exception do begin MessageDlg(localText3,localText3+': '+E.Message,mtError,[mbOk],0); end;
      end;
    end;
  end;
end;

function TMainForm.LoadCurrentVideoToImage:Boolean;
//var VideoFileName:String;
begin
  Result:=True;
  {Result:=False;
  VideoFileName:=rpiGetCapturedVideoFileName;
  if FileExists(VideoFileName) then
  begin
    try
      Image2.Picture.LoadFromFile(VideoFileName);
      Image2.Refresh;
      Result:=True;
    except
      on E: Exception do begin MessageDlg('Error','Error: '+E.Message,mtError,[mbOk],0); end;
    end;
  end else
  begin
    UpdateStatusMemoText(Memo2,'Captured Image File Not Found: '+VideoFileName,False);
    UpdateStatusMemoText(Memo2,'Attempting to Load Default Image',False);
    VideoFileName:=AppURL+c_DataDir+c_DefaultImageName;
    if FileExists(VideoFileName) then
    begin
      try
        Image2.Picture.LoadFromFile(VideoFileName);
        Image2.Refresh;
      except
        on E: Exception do begin MessageDlg('Error','Error: '+E.Message,mtError,[mbOk],0); end;
      end;
    end;
  end;}
end;

procedure TMainForm.UpdateStatusMemoText(lMemo:TMemo; const MemoText:String; const ClearMemoText:Boolean; const SetAtEnd:Boolean);
begin
  if (ClearMemoText) and not(MemoText='') then // clear the lmemo first and then write the text
  begin
    lMemo.Lines.Clear;
    lMemo.Lines.Add(MemoText);
  end else
  begin
    if (ClearMemoText) then
    begin
      lMemo.Lines.Clear; // clear the lmemo only
    end else
    begin
      lMemo.Lines.Add(MemoText); // add text
    end;
  end;

  if SetAtEnd then
  begin
    lMemo.SelStart := Length(lMemo.Text); //set lmemo text position at end
  end;
end;

procedure TMainForm.UpdateLabelText(lLabel:TLabel; const HintText:String);
begin
  lLabel.Caption:=HintText;
  lLabel.Update;
end;

procedure TMainForm.HighLightSelectedButton(lButton:TButton; const PC:Integer);
begin
  case PC of
  1: begin
       Button1.Font.Style:=[];
       Button2.Font.Style:=[];
       Button3.Font.Style:=[];
       Button4.Font.Style:=[];
       Button5.Font.Style:=[];
       Button6.Font.Style:=[];
     end;
  end;

  lButton.Font.Style:=[fsBold];
end;

{$ENDREGION 'Support}

{$REGION 'Main'}

procedure TMainForm.Button1Click(Sender: TObject);//start terminal
var localText1:String;
begin
  localText1:='Error';
  try
    rpiExcecuteLocalProcessSudo(v_UserPass,c_Terminal,False,Memo1,Memo2);
  except
    on E: Exception do begin MessageDlg(localText1,localText1+c_DoublePoint+E.Message,mtError,[mbOk],0); end;
  end;
end;

procedure TMainForm.Button10Click(Sender: TObject); //make video
var localText1:String;
begin
  localText1:='Error';

  ReadAllControls;
  v_CaptureMode_Index:=3; //video

  try
    rpiExcecuteLocalProcessSudo(v_UserPass,rpiGetStackedCommand,False,Memo1,Memo2);
  except
    on E: Exception do begin MessageDlg(localText1,localText1+c_DoublePoint+E.Message,mtError,[mbOk],0); end;
  end;
  if LoadCurrentVideoToImage then begin SaveCapturedVideoAs; end;
end;

procedure TMainForm.Button9Click(Sender: TObject);//settings preview
var localText1:String;
begin
  localText1:='Error';

  ReadAllControls;
  v_Preview_PreviewTest:=True; //picture, no save image
  v_CaptureMode_Index:=1;
  try
    rpiExcecuteLocalProcessSudo(v_UserPass,rpiGetStackedCommand,False,Memo1,Memo2);
  except
    on E: Exception do begin MessageDlg(localText1,localText1+c_DoublePoint+E.Message,mtError,[mbOk],0); end;
  end;
end;

procedure TMainForm.Button7Click(Sender: TObject); //test preview/demo
var localText1:String;
begin
  localText1:='Error';

  ReadAllControls;
  try
    if v_ShowDemoPreview then
    begin
      rpiExcecuteLocalProcessSudo(v_UserPass,cmd_QuickCameraPreviewDemoMode,False,Memo1,Memo2);
    end else
    begin
      rpiExcecuteLocalProcessSudo(v_UserPass,cmd_QuickCameraPreview,False,Memo1,Memo2);
    end;
  except
    on E: Exception do begin MessageDlg(localText1,localText1+c_DoublePoint+E.Message,mtError,[mbOk],0); end;
  end;
end;

procedure TMainForm.Button8Click(Sender: TObject); //take picture
var localText1,localText2:String;
begin
  v_CaptureMode_Index:=1;//picture
  localText1:='Set Duration is Smaller than Delay';
  localText2:='Error';

  ReadAllControls;
  if not(v_Image_MakeTimeLapse) then
  begin
    rpiClearPreviousCapturedImage;
    try
      rpiExcecuteLocalProcessSudo(v_UserPass,rpiGetStackedCommand,False,Memo1,Memo2)
    except
      on E: Exception do begin MessageDlg(localText2,localText2+c_DoublePoint+E.Message,mtError,[mbOk],0); exit; end;
    end;
    if LoadCurrentPictureToImage then begin SaveCapturedPictureAs; end;
  end else
  begin
    if (v_Image_Duration<v_Image_Delay) then
    begin
      MessageDlg(localText1,mtWarning,[mbOk],0);
      exit;
    end;
    if (v_UserSelectedDirectory='') or not(DirectoryExists(v_UserSelectedDirectory))  then
    begin
      if not(SelectUserDirectory) then
      begin
        if (v_UserSelectedDirectory='') then begin exit; end;
      end;
    end;
    try
      rpiExcecuteLocalProcessSudo(v_UserPass,rpiGetStackedCommand,False,Memo1,Memo2)
    except
      on E: Exception do begin MessageDlg(localText2,localText2+c_DoublePoint+E.Message,mtError,[mbOk],0); exit; end;
    end;
  end;
end;

procedure TMainForm.Button14Click(Sender: TObject); //network video streaming
var localText1:String;
begin
  v_CaptureMode_Index:=4;//video network stream
  localText1:='Error';

  ReadAllControls;
  try
    rpiExcecuteLocalProcessSudo(v_UserPass,rpiGetStackedCommand,False,Memo1,Memo2)
  except
    on E: Exception do begin MessageDlg(localText1,localText1+c_DoublePoint+c_Space+E.Message,mtError,[mbOk],0); exit; end;
  end;
end;

{$ENDREGION 'Main'}

end.

