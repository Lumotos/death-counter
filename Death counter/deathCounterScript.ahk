;Enter your TXT file path .
filePath = C:\Users\::::Put your computer name here::::\Documents\Death counter\deaths.txt
FileReadLine, deathVar, %filePath%, 1

;When you press F12 it will increment and update the death counter in the .txt
	F12::
		;Creates txt file if it doesn't exist.
		IfNotExist, %filePath%
			FileAppend,0, %filePath%
		;Created a file.
		;Inputs number of deaths in deathVar variable.
		FileReadLine, deathVar, %filePath%, 1
		Var := ++deathVar
		FileDelete, %filePath%
		FileAppend,%deathVar%, %filePath%
	return

;When you press F11 it will decrement and update the death counter in the .txt
	F11::
		;Creates txt file if it doesn't exist.
		IfNotExist, %filePath%
			FileAppend,0, %filePath%
		;Created a file.
		;Inputs number of deaths in deathVar variable.
		FileReadLine, deathVar, %filePath%, 1
		
		if deathVar = 0
		return

		Var := --deathVar
		FileDelete, %filePath%
		FileAppend,%deathVar%, %filePath%
	return