accessing
tearDownRepo
	self reference in: [ :ref | ref exists 
		ifFalse: [  ^ self  ]
		ifTrue: [ [ ref deleteAll ]
			on: FileDoesNotExistException
			do: [ "ignore. Seems to be a glitch in the File plugin" ] ] ]