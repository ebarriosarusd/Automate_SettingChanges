
Add-Type -AssemblyName System.Windows.Forms

#FINDING THE POSITION THE CURSOR USE THESE COMMANDS OUTSIDE OF SCRIPT OR HERE UP TO YOU:
# $Y = [System.Windows.Forms.Cursor]::Position.Y
# $X = [System.Windows.Forms.Cursor]::Position.X


Add-Type @"
using System.Runtime.InteropServices;
using System.Drawing;
using System.Threading;

public class Clicker {
    [DllImport("user32.dll")]
    public static extern bool SetCursorPos(int x, int y);

    [DllImport("user32.dll", CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
    public static extern void mouse_event(uint dwFlags, uint dx, uint dy, uint dwData, int dwExtraInfo);

    private const uint 
    MOUSEEVENTF_LEFTDOWN=0x02;
    private const uint
    MOUSEEVENTF_LEFTUP=0x04;
    
    private const uint 
    MOUSEEVENTF_RIGHTDOWN=0x08;
    private const uint
    MOUSEEVENTF_RIGHTUP=0x10;

    public static void editRegistryKey(string KeyName){
        string RegistryPath=@"\KKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\TabletTip\1.7";
        RegistryKey myKey = Registry.LocalMachine.OpenSubKey("SOFTWARE\\Company\\Compfolder", true);

        using (RegistryKey key = regKeyRoot.OpenSubKey(KeyName, true)) // Must dispose key or use "using" keyword
        {
            if (key != null)  // Must check for null key
            {
                key.SetValue(attribute, value);
            }
        }

    }

    
    public static void LeftClick(int x , int y){
        SetCursorPos(x,y);
        mouse_event(MOUSEEVENTF_LEFTDOWN, 0,0,0,0);
        mouse_event(MOUSEEVENTF_LEFTUP,0,0,0,0);
        Thread.Sleep(300); //.3 seconds
    }

    public static void RightClick(int x, int y){
        SetCursorPos(x,y);
        Thread.Sleep(500);
        mouse_event(MOUSEEVENTF_RIGHTDOWN, 0,0,0,0);
        mouse_event(MOUSEEVENTF_RIGHTUP, 0,0,0,0);
        Thread.Sleep(300);
    }
}
"@

# #Opening Start Menu
# [Clicker]::LeftClick(-1900, 1058)

# #Opening Settings
# [Clicker]::LeftClick(-1907,962)

# #Opening System Settings
# [Clicker]::LeftClick(-1299,262)

# # #Turning Night Light Off/On
# [Clicker]::LeftClick(-1109,609)



#Opening taskbar settings
# [Clicker]::RightClick(957, 774)

# start-process ms-settings:display