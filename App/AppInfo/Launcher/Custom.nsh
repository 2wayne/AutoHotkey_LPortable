${SegmentFile}

${SegmentPreExec}
	${DebugMsg} "Custom code: Modifying execution string"

	; Get any user-passed command line arguments
	${GetParameters} $0
	${If} $0 == ""
		${DebugMsg} "No Parameters were passed. Adding the default parameter."
		StrCpy $ExecString "$ExecString AutoHotkey.ahk"
	${EndIf}

	${DebugMsg} "Finished working with execution string: final value is $ExecString"
!macroend
