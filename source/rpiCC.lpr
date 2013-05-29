{
This file (rpicc) is part of Pi Vision.

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

program rpiCC;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, rpiCCMainForm, rpiccBackEndManager
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Pi Vision';
  //RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

