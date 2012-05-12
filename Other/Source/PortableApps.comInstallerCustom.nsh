!macro CustomCodePreInstall
	; if app is being upgraded, ensure all apps in this package are closed
	${If} $bolAppUpgrade == true
		CustomCodePreInstall_RunningTryAgain:
		!insertmacro CustomCodePreInstall_CheckRunning AutoHotkey2ExePortable.exe "AutoHotkey2Exe Portable"
		!insertmacro CustomCodePreInstall_CheckRunning AU3_Spy.exe "AutoIt3 Window Info Spy"
		!insertmacro CustomCodePreInstall_CheckRunning AutoScriptWriter.exe "Auto Script Writer"
		${If} true == false
			CustomCodePreInstall_RunningCancel:
				Abort
		${EndIf}
	${EndIf}
!macroend

!macro CustomCodePreInstall_CheckRunning CustomCodePreInstall_process CustomCodePreInstall_name
	FindProcDLL::FindProc "${CustomCodePreInstall_process}"
	${If} $R0 == 1
		MessageBox MB_OKCANCEL|MB_ICONINFORMATION "Please close all instances of ${CustomCodePreInstall_name} and then click OK.  The portable app can not be upgraded while it is running." IDOK CustomCodePreInstall_RunningTryAgain IDCANCEL CustomCodePreInstall_RunningCancel
	${EndIf}
!macroend
