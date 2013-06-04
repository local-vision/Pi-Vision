{
This file (rpiccBackEndManager) is part of Pi Vision.

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

unit rpiccBackEndManager;

{$mode objfpc}{$H+}

interface

uses Classes, SysUtils, Forms, Controls, StdCtrls, Dialogs, Process;

{$REGION 'Constants'}

{$REGION 'Application Constants'}

const
      //Defaults
      c_Application_Title='Pi Vision';
      c_Aplication_About='A Simple Controller for the Raspberry Pi Camera';
      c_Project_Creator='B.J. Rao';
      //c_Terminal='gnome-terminal'; // mint
      c_Terminal='lxterminal'; // rpi
      c_Space=' ';
      c_Comma=',';
      c_DoublePoint=':';

     //Defaults
      c_Default_UserLanguage=0; //English
      c_Default_ApplicationTheme=0; //default

      //Default files names
      c_UserSettings_FileName='gsf';
      c_DefaultImageName='photopageimage.jpg';
      c_CapturedImageName='image';
      c_CapturedVideoName='video';
      c_TimeLapsCapturedImageName='image%d';

      //Default Directories
      c_PictureDir='';//'pictures/';
      c_VideoDir='';//'video/';
      c_DataDir='';//'data/';
      c_SettingsDir='';//'settings/';
      c_SettingsFile_Path=c_SettingsDir+c_UserSettings_FileName;

      //Preview Window
      c_Default_PreviewWindowSize_Index=2;
      c_Default_PreviewWindowPosition_Index=0;

      c_Default_ShowPreview=True;
      c_Default_PreviewPositionSize='0,0,640,480';
      c_Default_ShowDefaultPreviewSizePosition=False;
      c_Default_ShowDemoPreview=False;
      c_Default_Preview_Width=640;
      c_Default_Preview_Height=480;
      c_Default_Preview_Window_Position_X=0;
      c_Default_Preview_Window_Position_Y=0;
      c_Default_Preview_FullScreen=False;
      c_Default_PreviewMode_Index=3; //1=showpreview 2=showdemopreview 3=No preview
      c_Default_CaptureMode_Index=4; //1=image; 2=imageYUV; 3=video;

      //Image/Video Ext
      c_VideoExt='.h264';

                prm_ExtMap : array[0..3] of String =
                (
                '.jpg',
                '.bmp',
                '.png',
                '.gif'
                );

      //Default Image Settings
      c_Default_Image_Ext_Index=0;
      c_Default_Image_Quality_index=0;
      c_Default_Image_Width=640;
      c_Default_Image_Height=480;
      c_Default_Image_Size_Index=2;
      c_Default_Image_Flip_Horizontal=False;
      c_Default_Image_Flip_Vertical=False;
      c_Default_Image_Effect_Index=0;
      c_Default_Image_Duration=5000;
      c_Default_Image_Delay=1000;
      c_Default_Image_MakeTimeLapse=False;
      c_Default_Image_RAW_Output=False;
      c_Default_Image_ISO_Output=False;

      //Default Video Settings
      c_Default_Video_Quality_Index=1;
      c_Default_Video_Size_Index=2;
      c_Default_Video_Duration=5000;
      c_Default_Video_FPS_Index=3;
      c_Default_VideoStabilation=False;
      c_Default_Video_Width=640;
      c_Default_Video_Height=480;

      c_Default_Camera_Brightness_Index=3;
      c_Default_Camera_Contrast_Index=3;
      c_Default_Camera_Sharpness_Index=3;
      c_Default_Camera_Saturation_Index=3;
      c_Default_Camera_AWB_Index=1;
      c_Default_Camera_EV_Index=3;
      c_Default_Camera_Exposure_Index=1;
      c_Default_Camera_Rotation_Index=0;
      c_Default_Camera_Metering_Index=0;
      c_Default_Camera_ColorEffect_U_Index=0;
      c_Default_Camera_ColorEffect_V_Index=0;
      c_Default_Camera_ColorEffect_UV=False;

      //Default Network Settings
      c_Default_Network_Port=5001;
      c_Default_Network_Duration=5000;

      //generic
                prm_7_LevelListMap : array[0..6] of String =
                (
                'Max',
                'Very High',
                'High',
                'Default',
                'Low',
                'Very Low',
                'Min'
                );

{$ENDREGION 'Application Constants'}

{$REGION 'RPi Camera Constants'}

const
      //Main camera apps
      cmd_rpiPhotoCamera='raspistill';
      cmd_rpiPhotoCameraYUV='raspistillyuv'; // no encoding
      cmd_rpiVideoCamera='raspivid';

      //Common cmd line Option constants
      cmd_Preview='-p';               //Preview window settings <'x,y,w,h'>
      cmd_Fullscreen='-f';            //Fullscreen preview mode
      cmd_NoPreview='-n';             //Do not display a preview window

      //c_Preview_FullScreen=6;
      prm_PreviewWindowSizeMap : array[0..5] of String =
                (
                '160 x 120',         //
                '320 x 240',         //
                '640 x 480',         // VGA
                '800 x 600',
                '1280 x 1024',
                '1920 x 1080'        // HD 1080
                );

      prm_PreviewWindowPositionMap : array[0..4] of String =
                (
                'Top Left',
                'Top Right',
                'Center',
                'Bottom Left',
                'Bottom Right'
                );

{$REGION 'Image and Camera Constants'}

      //image control option cmd contants.
      cmd_Sharpness='-sh';           //Set image sharpness (-100 to 100)
      cmd_Contrast='-co';            //Set image contrast (-100 to 100)
      cmd_Brightness='-br';          //Set image brightness (0 to 100) 50 is the default. 0 is black, 100 is white.
      cmd_Saturation='-sa';          //Set image saturation (-100 to 100) 0 is the default.

      cmd_ISO='-ISO';                //Set capture ISO.  Not yet implemented
      cmd_Vstab='-vs';               //Turn on video stabilisation In video mode only, turn on video stabilisation.
      cmd_Ev='-ev';                  //Set EV compensation Range is -10 to +10, default is 0.
      cmd_Exposure='-ex';            //Set exposure mode

      //Possible exposure options are (see variables section):

                prm_ExposureMap : array[0..12] of String =
                (
                 'off',
                 'auto',           //Use automatic exposure mode
                 'night',          //Select setting for night shooting
                 'nightpreview',
                 'backlight',      //Select setting for back lit subject
                 'spotlight',
                 'sports',         //Select setting for sports (fast shutter etc)
                 'snow',           //Select setting optimised for snowy scenery
                 'beach',          //Select setting optimised for beach
                 'verylong',       //Select setting for long exposures
                 'fixedfps',       //Constrain fps to a fixed value
                 'antishake',      //Antishake mode
                 'fireworks'       //Select settings
                );

      cmd_Awb='-awb'; 	           //Set Automatic White Balance (AWB) mode

       //Possible Automatic White Balance options are:

                prm_AwbMap : array[0..9] of String =
                (
                 'off',            //Turn off white balance calculation
                 'auto',           //Automatic mode (default)
                 'sun',            //Sunny mode
                 'cloud',          //Cloudy mode
                 'shade',          //Shaded mode
                 'tungstun',       //Tungsten lighting mode
                 'fluorescent',	   //Fluorescent lighting mode
                 'incandescent',   //Incandescent lighting mode
                 'flash',          //Flash mode
                 'horizon'         //Horizon mode
                 );

       cmd_Imxfx='-ifx';	           //Set image effect

       //Possible image effect options are:

                prm_ImxfxMap : array[0..22] of String =
                (
                'none',		   //NO effect (default)
                'negative',        //Negate the image
                'solarise',	   //Solarise the image
                'polarise',	   //Posterise the image
                'whiteboard',	   //Whiteboard effect
                'blackboard',	   //Blackboard effect
                'sketch',	   //Sketch style effect
                'denoise',	   //Denoise the image
                'emboss',	   //Emboss the image
                'oilpaint',	   //Apply an oil paint style effect
                'hatch',	   //Hatch sketch style
                'gpen',
                'pastel',	   //A pastel style effect
                'watercolour',	   //A watercolour style effect
                'film',		   //Film grain style effect
                'blur',	           //Blur the image
                'saturation',	   //Colour saturate the image
                'colourswap',	   //Not fully implemented
                'washedout',	   //Not fully implemented
                'posterise',  	   //Not fully implemented
                'colourpoint',	   //Not fully implemented
                'colourbalance',   //Not fully implemented
                'cartoon'          //Not fully implemented
                );

       cmd_Colfx='-cfx';	           //Set colour effect <U:V> (range 0 to 255).colfx 128:128 should result in a monochrome image
       cmd_Metering='-mm'; 	   //Set metering mode

       //Possible metering mode options are:

                prm_MeteringMap : array[0..3] of String =
                (
                'average',         //Average the whole frame for metering.
                'spot',            //Spot metering
                'backlit',         //Assume a backlit image
                'matrix'           //Matrix metering
                );

       cmd_Rotation='-rot';          //Set image rotation (0-359). Only 0, 90, 180 and 270 degree rotations are supported

                prm_RotationMap : array[0..3] of String =
                (
                '0',
                '90',
                '180',
                '270'
                );

       cmd_Hflip='-hf';              //Set horizontal flip
       cmd_Vflip='-vf';              //Set vertical flip

      //photo camera application specific setting constants
       cmd_Image_Width='-w';         //Set image width <size>
       cmd_Image_Height='-h';        //Set image height <size>

       prm_ImageSizeMap : array[0..8] of String =
                (
                '160 x 120',         //
                '320 x 240',         //
                '640 x 480',         // VGA
                '800 x 600',
                '1280 x 1024',
                '1600 x 1200',       //
                '1920 x 1080',       // HD 1080
                '2240 x 1680',
                '2592 x 1944'        // max
                );

       cmd_Image_Quality='-q';       //et jpeg quality <0 to 100>

       prm_JPG_QualityMap : array[0..9] of String =
                (
                '100',
                '90',
                '80',
                '70',
                '60',
                '50',
                '40',
                '30',
                '20',
                '10'
                );

       cmd_Image_Raw='-r';	   //Add raw bayer data to jpeg metadata
       cmd_Image_Output='-o';	   //Output filename <filename>.
       cmd_Image_Verbose='-v';	   //Output verbose information during run
       cmd_Image_Timeout='-t';	   //Time before takes picture and shuts down. Default 5 sec if this is not specified
       cmd_Image_Timelapse='-tl';  //Timelapse mode. List time in millisec. Note: specify %d at the point in the filename where you want a frame count number to appear. e.g.-t 30000 -tl 2000 -o image%d.jpg
       cmd_Image_Thumb='-th';	   //Set thumbnail parameters (x:y:quality) defaults are a size of 64x48 at quality 35
       cmd_Image_Demo='-d';	   //Run a demo mode <milliseconds> cycles through range of camera options, no capture is don
       cmd_Image_Encoding='-e';	   //File output Encoding. Valid options; jpg, bmp, gif and png. Unaccelerated image types (gif, png, bmp) take much longer to save than JPG. Note: filename suffix is ignored when encoding a file.
       cmd_Image_Exif='-x';	   //EXIF tag to apply to captures (format as 'key=value')

       //Possible EXIF tag options are:

       {Allows the insertion of specific exif tags in to the JPEG image.
       You can have up to 32 exif tge entries. This is useful for things like adding GPS metadata.
       For example, to set the Longitude

	--exif GPS.GPSLongitude=5/1,10/1,15/100

       would set the Longitude to 5degs, 10 minutes, 15 seconds.
       Supported tags are as follows:

       IFD0.< or IFD1.<
       ImageWidth, ImageLength, BitsPerSample, Compression, PhotometricInterpretation,
       ImageDescription, Make, Model, StripOffsets, Orientation, SamplesPerPixel, RowsPerString,
       StripByteCounts, Xresolution, Yresolution, PlanarConfiguration, ResolutionUnit, TransferFunction,
       Software, DateTime, Artist, WhitePoint, PrimaryChromaticities, JPEGInterchangeFormat,
       JPEGInterchangeFormatLength, YcbCrCoefficients, YcbCrSubSampling, YcbCrPositioning,
       ReferenceBlackWhite, Copyright>

       EXIF.<
       ExposureTime, FNumber, ExposureProgram, SpectralSensitivity,a
       ISOSpeedRatings, OECF, ExifVersion, DateTimeOriginal, DateTimeDigitized, ComponentsConfiguration,
       CompressedBitsPerPixel, ShutterSpeedValue, ApertureValue, BrightnessValue, ExposureBiasValue,
       MaxApertureValue, SubjectDistance, MeteringMode, LightSource, Flash, FocalLength, SubjectArea,
       MakerNote, UserComment, SubSecTime, SubSecTimeOriginal, SubSecTimeDigitized, FlashpixVersion,
       ColorSpace, PixelXDimension, PixelYDimension, RelatedSoundFile, FlashEnergy, SpacialFrequencyResponse,
       FocalPlaneXResolution, FocalPlaneYResolution, FocalPlaneResolutionUnit, SubjectLocation, ExposureIndex,
       SensingMethod, FileSource, SceneType, CFAPattern, CustomRendered, ExposureMode, WhiteBalance,
       DigitalZoomRatio, FocalLengthIn35mmFilm, SceneCaptureType, GainControl, Contrast, Saturation,
       Sharpness, DeviceSettingDescription, SubjectDistanceRange, ImageUniqueID>

       GPS.<
       GPSVersionID, GPSLatitudeRef, GPSLatitude, GPSLongitudeRef, GPSLongitude, GPSAltitudeRef,
       GPSAltitude, GPSTimeStamp, GPSSatellites, GPSStatus, GPSMeasureMode, GPSDOP, GPSSpeedRef,
       GPSSpeed, GPSTrackRef, GPSTrack, GPSImgDirectionRef, GPSImgDirection, GPSMapDatum, GPSDestLatitudeRef,
       GPSDestLatitude, GPSDestLongitudeRef, GPSDestLongitude, GPSDestBearingRef, GPSDestBearing,
       GPSDestDistanceRef, GPSDestDistance, GPSProcessingMethod, GPSAreaInformation, GPSDateStamp,
       GPSDifferential>

       EINT.<
       InteroperabilityIndex, InteroperabilityVersion, RelatedImageFileFormat, RelatedImageWidth,
       RelatedImageLength>

       Note that a small subset of these tags will be set automatically by the camera system,
       but will be overridden by any exif options on the command line.}

      //video camera application specific setting constants

{$ENDREGION 'Image and Constants'}

{$REGION 'Video Constants'}

       cmd_Video_Width='-w';         //Set video width. Range: 64 and 1920.
       cmd_Video_Height='-h';        //Set video height. Range: 64 and 1080.

       prm_VideoSizeMap : array[0..5] of String =
                (
                '160 x 120',         //
                '320 x 240',         //
                '640 x 480',         // VGA
                '800 x 600',
                '1280 x 1024',
                '1920 x 1080'       // HD 1080
                );

       cmd_Video_Bitrate='-b';       //Set bitrate.Bits per second, 10MBits/s would be -b 10000000. For H264, 1080p; high quality bitrate would be 15Mbits/s or more.

       //Bitrate calculation example:
       //1920 x 1080 = 2,073,600 pixel count
       //24 frames per second
       //4 = High Motion
       //(2,073,600 x 24) x 4 x 0.07 = 13,934,592 bps / 1000 = 13,934 kbps bitrate
       prm_VideoQualitytMap : array[0..4] of String =
                (
                'Very Low',
                'Low',
                'High',
                'Very High',
                'Maximum'
                );

       cmd_Video_Output='-o';        //Output filename <filename>.Specify the output filename. If not specified, no file is saved. If the filename is '-', then all output is sent to stdout.
       cmd_Video_Verbose='-v';       //Output verbose information during runOutputs debugging/information messages during the program run.
       cmd_Video_Timeout='-t';       //Time before takes picture and shuts down.The program will run for this length of time, then take the capture (if output is specified). If not specified, this is set to 5seconds
       cmd_Video_Demo='-d';           //Run a demo mode <milliseconds>This options cycles through range of camera options, no capture is done, the demo will end at the end of the timeout period, irrespective of whether all the options have been cycled. The time between cycles should be specified as a millisecond value.
       cmd_Video_Framerate='-fps';   //Specify the frames per second to recordAt present, the minimum frame rate allowed is 2fps, the maximum is 30fps. This is likely to change in the future.

       prm_VideoFPSMap : array[0..3] of String =
                (
                '2',
                '5',
                '15',
                '30'
                );

       cmd_Video_Penc='-e';          //Display preview image *after* encoding Switch on an option to display the preview after compression. This will show any compression artefacts in the preview window. In normal operation, the preview will show the camera output prior to being compressed. This option is not guaranteed to work in future releases.
       cmd_NetworkStream='– | nc'; //construct: raspivid -t 999999 -o – | nc [insert the IP address of the client] 5001


{$ENDREGION 'Video Constants'}

       //Defaults
       cmd_QuickCameraPreviewDemoMode=cmd_rpiPhotoCamera+c_Space+cmd_Image_Demo+c_Space+'5000'+c_Space+cmd_Preview+c_Space+c_Default_PreviewPositionSize+c_Space+cmd_Image_Verbose;
       cmd_QuickCameraPreview=cmd_rpiPhotoCamera+c_Space+cmd_Image_Timeout+c_Space+'5000'+c_Space+cmd_Preview+c_Space+c_Default_PreviewPositionSize+c_Space+cmd_Image_Verbose;


{$ENDREGION 'RPi Camera Constants'}

{$ENDREGION 'Constants'}

{$REGION 'Variables'}

var AppURL:String;                                         //Location path of application
    ScreenWidth:array[0..2] of LongInt;                    //Monitor 1 = ScreenWidth[0]
    ScreenHeight:array[0..2] of LongInt;
    v_UserPass:String;                                     //User sudo password
    v_UserLanguage:Integer=c_Default_UserLanguage;         //English
    v_ApplicationTheme:Integer=c_Default_ApplicationTheme; //Default
    v_UserSelectedDirectory:String='';                     //To store user images/files
    v_ApplicationStarted:Boolean=False;

    v_ShowDemoPreview:Boolean=c_Default_ShowDemoPreview;
    v_PreviewMode_Index:Integer=c_Default_PreviewMode_Index; //1=showpreview 2=showdemopreview 3=showdefaultpreview 4=No preview
    v_Preview_FullScreen:Boolean=c_Default_Preview_FullScreen;
    v_CaptureMode_Index:Integer=c_Default_CaptureMode_Index; //1=image; 2=imageYUV; 3=video;

    v_Preview_Position_Index:Integer=c_Default_PreviewWindowPosition_Index;
    v_Preview_Size_Index:Integer=c_Default_PreviewWindowSize_Index;
    v_Preview_ShowPreview:Boolean=c_Default_ShowPreview;
    v_Preview_Width:Integer=c_Default_Preview_Width;
    v_Preview_Height:Integer=c_Default_Preview_Height;
    v_Preview_Window_Position_X:Integer=c_Default_Preview_Window_Position_X;
    v_Preview_Window_Position_Y:Integer=c_Default_Preview_Window_Position_Y;
    v_Preview_PreviewTest:Boolean=False;

    v_Image_Ext_Index:Integer=c_Default_Image_Ext_Index;
    v_Image_Quality_Index:Integer=c_Default_Image_Quality_Index;
    v_Image_Width:Integer=c_Default_Image_Width;
    v_Image_Height:Integer=c_Default_Image_Height;
    v_Image_Size_Index:Integer=c_Default_Image_Size_Index;
    v_Image_Flip_Horizontal:Boolean=c_Default_Image_Flip_Horizontal;
    v_Image_Flip_Vertical:Boolean=c_Default_Image_Flip_Vertical;
    v_Image_Effect_Index:Integer=c_Default_Image_Effect_Index;
    v_Image_Duration:Integer=c_Default_Image_Duration;
    v_Image_Delay:Integer=c_Default_Image_Delay;
    v_Image_MakeTimeLapse:Boolean=c_Default_Image_MakeTimeLapse;
    v_Image_RAW_Output:Boolean=c_Default_Image_RAW_Output;
    v_Image_ISO_Output:Boolean=c_Default_Image_ISO_Output;

    v_Video_Quality_Index:Integer=c_Default_Video_Quality_Index;
    v_Video_Size_Index:Integer=c_Default_Video_Size_Index;
    v_Video_Width:Integer=c_Default_Video_Width;
    v_Video_Height:Integer=c_Default_Video_Height;
    v_Video_Duration:Integer=c_Default_Video_Duration;
    v_Video_FPS_Index:Integer=c_Default_Video_FPS_Index;
    v_VideoStabilation:Boolean=c_Default_VideoStabilation;

    v_Camera_Brightness_Index:Integer=c_Default_Camera_Brightness_Index;
    v_Camera_Contrast_Index:Integer=c_Default_Camera_Contrast_Index;
    v_Camera_Sharpness_Index:Integer=c_Default_Camera_Sharpness_Index;
    v_Camera_Saturation_Index:Integer=c_Default_Camera_Saturation_Index;
    v_Camera_AWB_Index:Integer=c_Default_Camera_AWB_Index;
    v_Camera_EV_Index:Integer=c_Default_Camera_EV_Index;
    v_Camera_Exposure_Index:Integer=c_Default_Camera_Exposure_Index;
    v_Camera_Rotation_Index:Integer=c_Default_Camera_Rotation_Index;
    v_Camera_Metering_Index:Integer=c_Default_Camera_Metering_Index;
    v_Camera_ColorEffect_U_Index:Integer=c_Default_Camera_ColorEffect_U_Index;
    v_Camera_ColorEffect_V_Index:Integer=c_Default_Camera_ColorEffect_V_Index;
    v_Camera_ColorEffect_UV:Boolean=c_Default_Camera_ColorEffect_UV;

    v_Network_Port:Integer=c_Default_Network_Port;
    v_Network_Duration:Integer=c_Default_Network_Duration;
    v_Network_IPAddress:Integer=0;

{$ENDREGION 'Variables'}

{$REGION 'Function Prototypes'}

function rpiGetStackedCommand:String;
procedure rpiExtractWidthHeightValuesFromString(s:String; var ImageWidth,ImageHeight:Integer);
procedure rpiSetPreviewModeIndex;
procedure rpiDefaultAll;
function rpiSaveUserSettings(const FN:String):Boolean;
function rpiLoadUserSettings(const FN:String):Boolean;
procedure rpiClearPreviousCapturedImage;
function rpiGetCapturedPictureFileName:String;
function rpiGetCapturedVideoFileName:String;
function rpiGetScreenSize:String;

function rpiExcecuteLocalProcessSudo(const sudoPass,cmdToExcecute:String; const UseSudo:Boolean; StatusMemo,MessagesMemo:TMemo):Boolean;

{$ENDREGION 'Function Prototypes'}

implementation

{$REGION 'Support'}

function rpiGetScreenSize:String;
begin
  ScreenWidth[0]:=Screen.Width;
  ScreenHeight[0]:=Screen.Height;

  Result:=IntToStr(ScreenWidth[0])+' x '+IntToStr(ScreenHeight[0]);
end;

procedure rpiSetPreviewWindowPosition;
begin
  case v_Preview_Position_Index of //note: what if no screeen attached/detected?
  0:begin //top left
      v_Preview_Window_Position_X:=0; v_Preview_Window_Position_Y:=0;
    end;
  1:begin //top right
      v_Preview_Window_Position_X:=ScreenWidth[0]-v_Preview_Width;
      v_Preview_Window_Position_Y:=0;
    end;
  2:begin //center
      v_Preview_Window_Position_X:=(ScreenWidth[0] -v_Preview_Width) DIV 2;
      v_Preview_Window_Position_Y:=(ScreenHeight[0] -v_Preview_Height) DIV 2;
    end;
  3:begin //bottom left
      v_Preview_Window_Position_X:=0;
      v_Preview_Window_Position_Y:=ScreenHeight[0]-v_Preview_Height;
    end;
  4:begin //bottom right
      v_Preview_Window_Position_X:=ScreenWidth[0]-v_Preview_Width;
      v_Preview_Window_Position_Y:=ScreenHeight[0]-v_Preview_Height;
    end;
  end;
end;

procedure rpiExtractWidthHeightValuesFromString(s:String; var ImageWidth,ImageHeight:Integer);
var List:TStrings;
begin
  List:=TStringList.Create;
  try
    ExtractStrings([' '], [], PChar(s), List);
    ImageWidth:=StrToInt(List[0]);
    ImageHeight:=StrToInt(List[2]);
  finally
    List.Free;
  end;
end;

procedure rpiSetPreviewModeIndex;
begin
  if (v_Preview_ShowPreview) then
  begin
    if (v_Preview_FullScreen) then
    begin
      v_PreviewMode_Index:=2;
    end else
    begin
      v_PreviewMode_Index:=1;
    end;
  end else
  begin
    v_PreviewMode_Index:=3;
  end;
end;

procedure rpiDefaultAll;
begin
  //Photo tab
  v_Image_Ext_Index:=c_Default_Image_Ext_Index;
  v_Image_Quality_Index:=c_Default_Image_Quality_Index;
  v_Image_Size_Index:=c_Default_Image_Size_Index;
  v_Image_Effect_Index:=c_Default_Image_Effect_Index;
  v_Image_MakeTimeLapse:=c_Default_Image_MakeTimeLapse;
  v_Image_Flip_Horizontal:=c_Default_Image_Flip_Horizontal;
  v_Image_Flip_Vertical:=c_Default_Image_Flip_Vertical;
  v_Image_Duration:=c_Default_Image_Duration;
  v_Image_Delay:=c_Default_Image_Delay;
  v_Image_RAW_Output:=c_Default_Image_RAW_Output;
  v_Image_ISO_Output:=c_Default_Image_ISO_Output;

  //Video tab
  v_Video_Quality_Index:=c_Default_Video_Quality_Index;
  v_Video_Size_Index:=c_Default_Video_Size_Index;
  v_Video_Duration:=c_Default_Video_Duration;
  v_Video_FPS_Index:=c_Default_Video_FPS_Index;

  //Settings tab preview
  v_Preview_Position_Index:=c_Default_PreviewWindowPosition_Index;
  v_Preview_Size_Index:=c_Default_PreviewWindowSize_Index;
  v_Preview_ShowPreview:=c_Default_ShowPreview;
  v_Preview_FullScreen:=c_Default_Preview_FullScreen;
  rpiSetPreviewModeIndex;

  //Settings tab camera
  v_Camera_Brightness_Index:=c_Default_Camera_Brightness_Index;
  v_Camera_Contrast_Index:=c_Default_Camera_Contrast_Index;
  v_Camera_Sharpness_Index:=c_Default_Camera_Sharpness_Index;
  v_Camera_Saturation_Index:=c_Default_Camera_Saturation_Index;
  v_Camera_AWB_Index:=c_Default_Camera_AWB_Index;
  v_Camera_EV_Index:=c_Default_Camera_EV_Index;
  v_Camera_Exposure_Index:=c_Default_Camera_Exposure_Index;
  v_Camera_Rotation_Index:=c_Default_Camera_Rotation_Index;

  //Settings tab additional
  v_Camera_Metering_Index:=c_Default_Camera_Metering_Index;
  v_Camera_ColorEffect_U_Index:=c_Default_Camera_ColorEffect_U_Index;
  v_Camera_ColorEffect_V_Index:=c_Default_Camera_ColorEffect_V_Index;
  v_Camera_ColorEffect_UV:=c_Default_Camera_ColorEffect_UV;

  v_Network_Port:=c_Default_Network_Port;
  v_Network_Duration:=c_Default_Network_Duration;
end;

{$REGION 'File IO'}

function rpiSaveUserSettings(const FN:String):Boolean;
var localText1:String;
    Resio:Integer;
    DataOut:TextFile;
begin
  localText1:='User Setting File Saving Failed';

  Result:=True;
  AssignFile(DataOut,FN);
  {$I-} Rewrite(DataOut); {$I+}
  Resio:=IOresult;
  if Resio=0 then
  begin
    try
      //application info

      Writeln(DataOut,'Application Title');
      Writeln(DataOut,c_Application_Title);

      Writeln(DataOut,'User Language');
      Writeln(DataOut,v_UserLanguage);

      Writeln(DataOut,'Application Theme');
      Writeln(DataOut,v_ApplicationTheme);

      Writeln(DataOut,'User Selected Directory');
      Writeln(DataOut,v_UserSelectedDirectory);

      //preview settings

      Writeln(DataOut,'Preview Position Index');
      Writeln(DataOut,v_Preview_Position_Index);

      Writeln(DataOut,'Preview Size Index');
      Writeln(DataOut,v_Preview_Size_Index);

      Writeln(DataOut,'Preview Show Preview');
      if v_Preview_ShowPreview then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      Writeln(DataOut,'Preview FullScreen');
      if v_Preview_FullScreen then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      //photo settings

      Writeln(DataOut,'Image Ext Index');
      Writeln(DataOut,v_Image_Ext_Index);

      Writeln(DataOut,'Image Quality Index');
      Writeln(DataOut,v_Image_Quality_Index);

      Writeln(DataOut,'Image Width Index');
      Writeln(DataOut,v_Image_Size_Index);

      Writeln(DataOut,'Image Effect Index');
      Writeln(DataOut,v_Image_Effect_Index);

      Writeln(DataOut,'Image Make Time Lapse');
      if v_Image_MakeTimeLapse then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      Writeln(DataOut,'Image Flip Horizontal');
      if v_Image_Flip_Horizontal then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      Writeln(DataOut,'Image Flip Vertical');
      if v_Image_Flip_Vertical then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      Writeln(DataOut,'Image Duration');
      Writeln(DataOut,v_Image_Duration);

      Writeln(DataOut,'Image Delay');
      Writeln(DataOut,v_Image_Delay);

      Writeln(DataOut,'Image RAW Output');
      if v_Image_RAW_Output then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      Writeln(DataOut,'Image ISO Output');
      if v_Image_ISO_Output then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      //video settings

      Writeln(DataOut,'Video Size Index');
      Writeln(DataOut,v_Video_Size_Index);

      Writeln(DataOut,'Video Quality Index');
      Writeln(DataOut,v_Video_Quality_Index);

      Writeln(DataOut,'Video FPS Index');
      Writeln(DataOut,v_Video_FPS_Index);

      Writeln(DataOut,'Image Flip Vertical');
      if v_VideoStabilation then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      Writeln(DataOut,'Video Duration');
      Writeln(DataOut,v_Video_Duration);

      // camera settings
      Writeln(DataOut,'Camera Brightness Index');
      Writeln(DataOut,v_Camera_Brightness_Index);

      Writeln(DataOut,'Camera Contrast Index');
      Writeln(DataOut,v_Camera_Contrast_Index);

      Writeln(DataOut,'Camera Sharpness Index');
      Writeln(DataOut,v_Camera_Sharpness_Index);

      Writeln(DataOut,'Camera Saturation Index');
      Writeln(DataOut,v_Camera_Saturation_Index);

      Writeln(DataOut,'Camera AWB Index');
      Writeln(DataOut,v_Camera_AWB_Index);

      Writeln(DataOut,'Camera EV Index');
      Writeln(DataOut,v_Camera_EV_Index);

      Writeln(DataOut,'Camera Exposure Index');
      Writeln(DataOut,v_Camera_Exposure_Index);

      Writeln(DataOut,'Camera Rotation Index');
      Writeln(DataOut,v_Camera_Rotation_Index);

      Writeln(DataOut,'Camera_Metering_Index');
      Writeln(DataOut,v_Camera_Metering_Index);

      Writeln(DataOut,'Camera ColorEffect U_Index');
      Writeln(DataOut,v_Camera_ColorEffect_U_Index);

      Writeln(DataOut,'Camera ColorEffect V_Index');
      Writeln(DataOut,v_Camera_ColorEffect_V_Index);

      Writeln(DataOut,'Camera ColorEffectUV');
      if v_Camera_ColorEffect_UV then
      begin
        Writeln(DataOut,1);
      end else
      begin
        Writeln(DataOut,-1);
      end;

      Writeln(DataOut,'Network Port');
      Writeln(DataOut,v_Network_Port);

      Writeln(DataOut,'Network Duration');
      Writeln(DataOut,v_Network_Duration);

      Writeln(DataOut,'IP Address');
      Writeln(DataOut,v_Network_IPAddress);
    finally
      CloseFile(DataOut);
    end;
  end else
  begin
    MessageDlg(localText1, mtError,[mbOk], 0);
    Result:=False;
  end;
end;

function rpiLoadUserSettings(const FN:String):Boolean;
var localText1:String;
    Resio,i:Integer;
    DataIn:TextFile;
begin
  localText1:='User Setting File Loading Failed';

  Result:=True;
  AssignFile(DataIn,FN);
  {$I-} ReSet(DataIn); {$I+}
  Resio:=IOresult;
  if Resio=0 then
  begin
    try
      Readln(DataIn);
      Readln(DataIn);

      Readln(DataIn);
      Readln(DataIn,v_UserLanguage);

      Readln(DataIn);
      Readln(DataIn,v_ApplicationTheme);

      ReadLn(DataIn);
      ReadLn(DataIn,v_UserSelectedDirectory);

      Readln(DataIn);
      Readln(DataIn,v_Preview_Position_Index);

      Readln(DataIn);
      Readln(DataIn,v_Preview_Size_Index);

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Preview_ShowPreview:=True;
      end else
      begin
        v_Preview_ShowPreview:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Preview_FullScreen:=True;
      end else
      begin
        v_Preview_FullScreen:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,v_Image_Ext_Index);

      Readln(DataIn);
      Readln(DataIn,v_Image_Quality_Index);

      Readln(DataIn);
      Readln(DataIn,v_Image_Size_Index);

      Readln(DataIn);
      Readln(DataIn,v_Image_Effect_Index);

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Image_MakeTimeLapse:=True;
      end else
      begin
        v_Image_MakeTimeLapse:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Image_Flip_Horizontal:=True;
      end else
      begin
        v_Image_Flip_Horizontal:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Image_Flip_Vertical:=True;
      end else
      begin
        v_Image_Flip_Vertical:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,v_Image_Duration);

      Readln(DataIn);
      Readln(DataIn,v_Image_Delay);

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Image_RAW_Output:=True;
      end else
      begin
        v_Image_RAW_Output:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Image_ISO_Output:=True;
      end else
      begin
        v_Image_ISO_Output:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,v_Video_Size_Index);

      Readln(DataIn);
      Readln(DataIn,v_Video_Quality_Index);

      Readln(DataIn);
      Readln(DataIn,v_Video_FPS_Index);

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_VideoStabilation:=True;
      end else
      begin
        v_VideoStabilation:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,v_Video_Duration);

      Readln(DataIn);
      Readln(DataIn,v_Camera_Brightness_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_Contrast_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_Sharpness_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_Saturation_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_AWB_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_EV_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_Exposure_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_Rotation_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_Metering_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_ColorEffect_U_Index);

      Readln(DataIn);
      Readln(DataIn,v_Camera_ColorEffect_V_Index);

      Readln(DataIn);
      Readln(DataIn,i);
      if i=1 then
      begin
        v_Camera_ColorEffect_UV:=True;
      end else
      begin
        v_Camera_ColorEffect_UV:=False;
      end;

      Readln(DataIn);
      Readln(DataIn,v_Network_Port);

      Readln(DataIn);
      Readln(DataIn,v_Network_Duration);

      Readln(DataIn);
      Readln(DataIn,v_Network_IPAddress);
    finally
      CloseFile(DataIn);
    end;
  end else
  begin
    MessageDlg(localText1, mtError,[mbOk], 0);
    Result:=False;
  end;
end;

{$ENDREGION 'File IO'}

procedure rpiClearPreviousCapturedImage;
var ImageFileName:String;
    localText1:String;
begin
  localText1:='Error';

  try
    ImageFileName:=AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[0];
    if FileExists(ImageFileName) then
    begin
      DeleteFile(ImageFileName);
    end;
    ImageFileName:=AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[1];
    if FileExists(ImageFileName) then
    begin
      DeleteFile(ImageFileName);
    end;
    ImageFileName:=AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[2];
    if FileExists(ImageFileName) then
    begin
      DeleteFile(ImageFileName);
    end;
  except
    on E: Exception do begin MessageDlg(localText1,localText1+': '+E.Message,mtError,[mbOk],0); end;
  end;
end;

function rpiGetCapturedPictureFileName:String;
var ImageFileName,ImageFileFound:String;
    localText1:String;
begin
  localText1:='Error';

  try
    ImageFileFound:='';

    ImageFileName:=AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[0];
    if FileExists(ImageFileName) then begin ImageFileFound:=ImageFileName; end;

    ImageFileName:=AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[1];
    if FileExists(ImageFileName) then begin ImageFileFound:=ImageFileName; end;

    ImageFileName:=AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[2];
    if FileExists(ImageFileName) then begin ImageFileFound:=ImageFileName; end;

    ImageFileName:=AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[3];
    if FileExists(ImageFileName) then begin ImageFileFound:=ImageFileName; end;

    result:=ImageFileFound;
  except
    on E: Exception do begin MessageDlg(localText1,localText1+': '+E.Message,mtError,[mbOk],0); end;
  end;
end;

function rpiGetCapturedVideoFileName:String;
var VideoFileName,VideoFileFound:String;
    localText1:String;
begin
  localText1:='Error';
  try
    VideoFileFound:='';

    VideoFileName:=AppURL+c_VideoDir+c_CapturedVideoName+c_VideoExt;
    if FileExists(VideoFileName) then begin VideoFileFound:=VideoFileName; end;

    result:=VideoFileFound;
  except
    on E: Exception do begin MessageDlg(localText1,localText1+': '+E.Message,mtError,[mbOk],0); end;
  end;
end;

{$ENDREGION 'Support'}

{$REGION 'Main'}

function rpiSetCaptureModeSC(SC:String):String;
begin
  //capture app
  case v_CaptureMode_Index of
  1:begin //=image
      SC:=cmd_rpiPhotoCamera;
    end;
  2:begin //=imageYUV
      SC:=cmd_rpiPhotoCameraYUV;
    end;
  3:begin //=Video
      SC:=cmd_rpiVideoCamera;
    end;
  4:begin //=Video network stream
      SC:=cmd_rpiVideoCamera;
    end;
  end;
  Result:=SC;
end;

function rpiSetPreviewModeSC(SC:String):String;
begin
  //preview window size
  rpiExtractWidthHeightValuesFromString(prm_PreviewWindowSizeMap[v_Preview_Size_Index],v_Preview_Width,v_Preview_Height);
  //preview window position
  rpiSetPreviewWindowPosition;

  case v_PreviewMode_Index of
  1:begin //=show
      SC:=SC+c_Space+cmd_Preview;
      SC:=SC+c_Space+IntToStr(v_Preview_Window_Position_X)+c_Comma;
      SC:=SC+IntToStr(v_Preview_Window_Position_Y)+c_Comma;
      SC:=SC+IntToStr(v_Preview_Width)+c_Comma;
      SC:=SC+IntToStr(v_Preview_Height);
    end;
  2:begin //=full screen
      SC:=SC+c_Space+cmd_Fullscreen;
    end;
  3:begin //=no preview
      SC:=SC+c_Space+cmd_NoPreview;
    end;
  end;
  Result:=SC;
end;

{$REGION 'Image'}

function rpiSetImageDurationSC(SC:String):String;
begin
  Result:=SC+c_Space+cmd_Image_Timeout+c_Space+IntToStr(v_Image_Duration);
end;

function rpiSetImageOutputSC(SC:String):String;
begin
  if v_Preview_PreviewTest then // preview only no image save
  begin
    v_Preview_PreviewTest:=False;
    Result:=SC;
    exit;
  end;
  if v_Image_MakeTimeLapse then
  begin
    SC:=SC+c_Space+cmd_Image_Timelapse+c_Space+IntToStr(v_Image_Delay);
    SC:=SC+c_Space+cmd_Image_Output+c_Space+v_UserSelectedDirectory+c_TimeLapsCapturedImageName+prm_ExtMap[v_Image_Ext_Index];
  end else
  begin
     SC:=SC+c_Space+cmd_Image_Output+c_Space+AppURL+c_PictureDir+c_CapturedImageName+prm_ExtMap[v_Image_Ext_Index];
  end;
  Result:=SC;
end;

function rpiSetImageEncodingSC(SC:String):String;
var s:String;
begin
  s:=prm_ExtMap[v_Image_Ext_Index];
  Delete(s,1,1); //remove the dot from the file ext. e.g. '.jpg' becomes 'jpg'
  Result:=SC+c_Space+cmd_Image_Encoding+c_Space+s;
end;

function rpiSetJPGImageQualityStandardsSC(SC:String):String;
begin
  if v_Image_Ext_Index=c_Default_Image_Ext_Index then //.jpg
  begin
    SC:=SC+c_Space+cmd_Image_Quality+c_Space+prm_JPG_QualityMap[v_Image_Quality_Index];
    if v_Image_RAW_Output then // RAW
    begin
      SC:=SC+c_Space+cmd_Image_RAW;
    end;
    if v_Image_ISO_Output then //ISO
    begin
      SC:=SC+c_Space+cmd_ISO;
    end;
  end;
  Result:=SC;
end;

function rpiSetImageSizeSC(SC:String):String;
begin
  rpiExtractWidthHeightValuesFromString(prm_ImageSizeMap[v_Image_Size_Index],v_Image_Width,v_Image_Height);
  Result:=SC+c_Space+cmd_Image_Width+c_Space+IntToStr(v_Image_Width)+c_Space+cmd_Image_Height+c_Space+IntToStr(v_Image_Height);
end;

function rpiSetImageEffectSC(SC:String):String;
begin
  Result:=SC+c_Space+cmd_Imxfx+c_Space+prm_ImxfxMap[v_Image_Effect_Index];
end;

function rpiSetImageFlipSC(SC:String):String;
begin
  if v_Image_Flip_Horizontal then
  begin
    SC:=SC+c_Space+cmd_Hflip;
  end;
  if v_Image_Flip_Vertical then
  begin
    SC:=SC+c_Space+cmd_Vflip;
  end;
  Result:=SC;
end;

{$ENDREGION 'Image'}

{$REGION 'Video'}

function rpiSetVideoDurationSC(SC:String):String;
begin
  if v_CaptureMode_Index=4 then
  begin
    SC:=SC+c_Space+cmd_Video_Timeout+c_Space+IntToStr(v_Network_Duration);
  end else
  begin
    SC:=SC+c_Space+cmd_Video_Timeout+c_Space+IntToStr(v_Video_Duration);
  end;
  Result:=SC
end;

function rpiSetVideoOutputSC(SC:String):String;
begin
  if v_CaptureMode_Index=4 then
  begin
    SC:=SC+c_Space+cmd_Video_Output+c_Space+cmd_NetworkStream+c_Space+'['+IntToStr(v_Network_IPAddress)+']'+c_Space+IntToStr(v_Network_Port);
  end else
  begin
    SC:=SC+c_Space+cmd_Video_Output+c_Space+AppURL+c_VideoDir+c_CapturedVideoName+c_VideoExt;
  end;
  Result:=SC;
end;

function rpiSetVideoSizeSC(SC:String):String;
begin
  rpiExtractWidthHeightValuesFromString(prm_VideoSizeMap[v_Video_Size_Index],v_Video_Width,v_Video_Height);
  Result:=SC+c_Space+cmd_Video_Width+c_Space+IntToStr(v_Video_Width)+c_Space+cmd_Video_Height+c_Space+IntToStr(v_Video_Height);
end;

function rpiSetVideoFPSSC(SC:String):String;
begin
  Result:=SC+c_Space+cmd_Video_FrameRate+c_Space+prm_VideoFPSMap[v_Video_FPS_Index];
end;

function rpiSetVideoBitRateSC(SC:String):String;
const VideoFactor=0.096450617;//at max quality bitrate should be 30Mbs for HD video at 30 fps
var BitRate:Real;
    VideoQualityLevel:Integer;
begin
  //Bitrate calculation example:
  //1920 x 1080 = 2,073,600 pixel count
  //30 frames per second
  //5 = High Motion = VideoQualityLevel
  //videofactor = 0.096450617
  //(2,073,600 x 30) x 5 x 0.096450617 = 30,000,000 bps / 1000 = 30,000 kbps bitrate / 1000 = 30 Mbps bitrate
  case v_Video_Quality_Index of
  0:begin VideoQualityLevel:=1; end; //very low
  1:begin VideoQualityLevel:=2; end; //low
  2:begin VideoQualityLevel:=3; end; //high
  3:begin VideoQualityLevel:=4; end; //very high
  4:begin VideoQualityLevel:=5; end; //max
  end;

  BitRate:=(v_Video_Width*v_Video_Height) * StrToInt(prm_VideoFPSMap[v_Video_FPS_Index]) * VideoQualityLevel * VideoFactor;

  Result:=SC+c_Space+cmd_Video_BitRate+c_Space+IntToStr(Round(BitRate));
end;

function rpiSetVideoStabilizationSC(SC:String):String;
begin
  if v_VideoStabilation then
  begin
    SC:=SC+c_Space+cmd_Vstab;
  end;
  Result:=SC;
end;

{$ENDREGION 'Video'}

{$REGION 'Camera'}

function rpiSetCameraBrightnessSC(SC:String):String;
var Level:Integer;
begin
  case v_Camera_Brightness_Index of {0 - 100}
    0:begin Level:=100; end;//Max
    1:begin Level:=88; end;//Very High
    2:begin Level:=64; end;//High
    3:begin Level:=50; end;//Default
    4:begin Level:=32; end;//Low
    5:begin Level:=-18; end;//Very Low
    6:begin Level:=0; end;//Min
  end;
  Result:=SC+c_Space+cmd_Brightness+c_Space+IntToStr(Level);
end;

function rpiSetCameraContrastSC(SC:String):String;
var Level:Integer;
begin
  case v_Camera_Contrast_Index of {-100 - 100}
    0:begin Level:=100; end;//Max
    1:begin Level:=64; end;//Very High
    2:begin Level:=32; end;//High
    3:begin Level:=0; end;//Default
    4:begin Level:=-32; end;//Low
    5:begin Level:=-64; end;//Very Low
    6:begin Level:=-100; end;//Min
  end;
  Result:=SC+c_Space+cmd_Contrast+c_Space+IntToStr(Level);
end;

function rpiSetCameraSharpnessSC(SC:String):String;
var Level:Integer;
begin
  case v_Camera_Sharpness_Index of {-100 - 100}
    0:begin Level:=100; end;//Max
    1:begin Level:=64; end;//Very High
    2:begin Level:=32; end;//High
    3:begin Level:=0; end;//Default
    4:begin Level:=-32; end;//Low
    5:begin Level:=-64; end;//Very Low
    6:begin Level:=-100; end;//Min
  end;
  Result:=SC+c_Space+cmd_Sharpness+c_Space+IntToStr(Level);
end;

function rpiSetCameraSaturationSC(SC:String):String;
var Level:Integer;
begin
  case v_Camera_Saturation_Index of {-100 - 100}
    0:begin Level:=100; end;//Max
    1:begin Level:=64; end;//Very High
    2:begin Level:=32; end;//High
    3:begin Level:=0; end;//Default
    4:begin Level:=-32; end;//Low
    5:begin Level:=-64; end;//Very Low
    6:begin Level:=-100; end;//Min
  end;
  Result:=SC+c_Space+cmd_Saturation+c_Space+IntToStr(Level);
end;

function rpiSetCameraAWBSC(SC:String):String;
begin
  Result:=SC+c_Space+cmd_Awb+c_Space+prm_AwbMap[v_Camera_AWB_Index];
end;

function rpiSetCameraEVCompSC(SC:String):String;
var Level:Integer;
begin
  case v_Camera_EV_Index of {-10 - 10}
    0:begin Level:=10; end;//Max
    1:begin Level:=8; end;//Very High
    2:begin Level:=6; end;//High
    3:begin Level:=5; end;//Default
    4:begin Level:=-6; end;//Low
    5:begin Level:=-8; end;//Very Low
    6:begin Level:=-10; end;//Min
  end;
  Result:=SC+c_Space+cmd_EV+c_Space+IntToStr(Level);
end;

function rpiSetCameraExposureSC(SC:String):String;
begin
  Result:=SC+c_Space+cmd_Exposure+c_Space+prm_ExposureMap[v_Camera_Exposure_Index];
end;

function rpiSetCameraRotationSC(SC:String):String;
begin
  Result:=SC+c_Space+cmd_Rotation+c_Space+prm_RotationMap[v_Camera_Rotation_Index];
end;

function rpiSetCameraMeteringSC(SC:String):String;
begin
  Result:=SC+c_Space+cmd_Metering+c_Space+prm_MeteringMap[v_Camera_Metering_Index];
end;

function rpiSetCameraUVSC(SC:String):String;
var LevelU,LevelV:Integer;
begin
  case v_Camera_ColorEffect_U_Index of {255 - 0}
    0:begin LevelU:=255; end;//Max
    1:begin LevelU:=196; end;//Very High
    2:begin LevelU:=168; end;//High
    3:begin LevelU:=128; end;//Default
    4:begin LevelU:=64; end;//Low
    5:begin LevelU:=32; end;//Very Low
    6:begin LevelU:=0; end;//Min
  end;
  SC:=SC+c_Space+cmd_Colfx+c_Space+IntToStr(LevelU);
  SC:=SC+c_DoublePoint;
  case v_Camera_ColorEffect_V_Index of {255 - 0}
    0:begin LevelV:=255; end;//Max
    1:begin LevelV:=196; end;//Very High
    2:begin LevelV:=168; end;//High
    3:begin LevelV:=128; end;//Default
    4:begin LevelV:=64; end;//Low
    5:begin LevelV:=32; end;//Very Low
    6:begin LevelV:=0; end;//Min
  end;
  Result:=SC+IntToStr(LevelV);
end;

{$ENDREGION 'Camera'}

function rpiSetImageORVideoSC(SC:String):String;
begin
  //image or video
  case v_CaptureMode_Index of
  1:begin //=image/
      SC:=rpiSetImageDurationSC(SC);
      SC:=rpiSetImageOutputSC(SC);
      SC:=rpiSetImageEncodingSC(SC);
      SC:=rpiSetJPGImageQualityStandardsSC(SC);
      SC:=rpiSetImageSizeSC(SC);
      SC:=rpiSetImageEffectSC(SC);
      SC:=rpiSetImageFlipSC(SC);
    end;
  2:begin //=imageYUV
      SC:=rpiSetImageDurationSC(SC);
      SC:=rpiSetImageOutputSC(SC);
      SC:=rpiSetImageSizeSC(SC);
      SC:=rpiSetImageEffectSC(SC);
      SC:=rpiSetImageFlipSC(SC);
    end;
  3,4:begin //=Video and Video Network stream
      SC:=rpiSetVideoDurationSC(SC);
      SC:=rpiSetVideoOutputSC(SC);
      SC:=rpiSetVideoSizeSC(SC);
      SC:=rpiSetVideoFPSSC(SC);
      SC:=rpiSetVideoBitRateSC(SC);
      SC:=rpiSetVideoStabilizationSC(SC);
    end;
  end;
  SC:=SC+c_Space+cmd_Image_Verbose; //debug output

  Result:=SC;
end;

function rpiSetCameraSettingsSC(SC:String):String;
begin
  SC:=rpiSetCameraBrightnessSC(SC);
  SC:=rpiSetCameraContrastSC(SC);
  SC:=rpiSetCameraSharpnessSC(SC);
  SC:=rpiSetCameraSaturationSC(SC);
  SC:=rpiSetCameraAWBSC(SC);
  SC:=rpiSetCameraEVCompSC(SC);
  SC:=rpiSetCameraExposureSC(SC);
  SC:=rpiSetCameraRotationSC(SC);
  SC:=rpiSetCameraMeteringSC(SC);
  if v_Camera_ColorEffect_UV then
  begin
    SC:=rpiSetCameraUVSC(SC);
  end;
  Result:=SC;
end;

function rpiGetStackedCommand:String;
var StackedCommand:String;
begin
  StackedCommand:=''; //initialize
  StackedCommand:=rpiSetCaptureModeSC(StackedCommand);
  StackedCommand:=rpiSetPreviewModeSC(StackedCommand);
  StackedCommand:=rpiSetImageORVideoSC(StackedCommand);
  StackedCommand:=rpiSetCameraSettingsSC(StackedCommand);

  Result:=StackedCommand;
  //showmessage(Result);
end;

function rpiExcecuteLocalProcessSudo(const sudoPass,cmdToExcecute:String; const UseSudo:Boolean; StatusMemo,MessagesMemo:TMemo):Boolean;
var lProcess: TProcess;
begin
  Result:=False;

  {$IFDEF LINUX}
  try
    lProcess := TProcess.Create(nil);
    lProcess.Executable := '/bin/sh';
    lProcess.Parameters.Add('-c');
    if UseSudo then
    begin
      lProcess.Parameters.add('echo'+sudoPass+' | sudo -S '+cmdToExcecute);
    end else
    begin
      lProcess.Parameters.add(cmdToExcecute);
    end;

    lProcess.Options := lProcess.Options + [poWaitOnExit, poUsePipes];
    lProcess.Execute;
    while lProcess.Running do begin Sleep(12); Application.ProcessMessages; end;

    StatusMemo.Lines.LoadFromStream(lProcess.Output);// Output
    MessagesMemo.Lines.LoadFromStream(lProcess.Stderr);// Error

    if not (lProcess.Active = true) or (lProcess.Running = true) then
    begin
      MessagesMemo.SelStart := Length(StatusMemo.Text); //set Statusmemo 2 text position
    end;

    Result:=True;
  finally
    lProcess.Free;
  end;
  {$ENDIF}

  StatusMemo.Lines.Add(''); //intentional blank line
  StatusMemo.Lines.Add('Employed Command: $ '+cmdToExcecute);
  StatusMemo.SelStart := Length(StatusMemo.Text); //set Statusmemo 1 text position
end;

{$ENDREGION 'Main'}

end.

