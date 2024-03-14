#include <WinUser.h>
#include <oaidl.h>
   

static void LeftClickAtPoint(int x, int y)
{
    // Move the mouse
    INPUT[] input = new INPUT[3];

    input[0].mi.dx = x * (65535 / System.Windows.Forms.Screen.PrimaryScreen.Bounds.Width);
    input[0].mi.dy = y * (65535 / System.Windows.Forms.Screen.PrimaryScreen.Bounds.Height);
    input[0].mi.dwFlags = MOUSEEVENTF_MOVE | MOUSEEVENTF_ABSOLUTE;

    // Left mouse button down
    input[1].mi.dwFlags = MOUSEEVENTF_LEFTDOWN;

    // Left mouse button up
    input[2].mi.dwFlags = MOUSEEVENTF_LEFTUP;

    SendInput(3, input, Marshal.SizeOf(input[0]));
}