running
testSrcEntries

	| root entries |
	
	root := store root.
	entries := (root / 'src') entries.
	entries := entries sorted: [ :e1 :e2 | e1 basename <= e2 basename ].
	
	self assert: entries size equals: 3.
	self assert: (entries collect: [ :e | e basename ]) equals: 
		#( '.properties' 'Spider-GitDemo1' 'Spider-GitDemo2' ).
	self assert: (entries collect: [ :e | e fileSize ]) equals: 
		#( 21 0 0 ).
	
	self assert: entries first isFile.
	self assert: entries last isDirectory.
	
	
	