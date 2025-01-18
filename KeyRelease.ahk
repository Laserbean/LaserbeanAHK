#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


WaitForKeyRelease(keyToWaitFor) {
    Loop {
        if (!GetKeyState(keyToWaitFor, "P")) {
            break ; Exit the loop if the specified key is not pressed
        }
        Sleep, 10 ; Sleep for 10 milliseconds to reduce CPU usage
    }
}