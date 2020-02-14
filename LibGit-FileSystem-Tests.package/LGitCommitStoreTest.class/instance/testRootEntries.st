running
testRootEntries

	| root entries |
	
	root := store root.
	entries := root entries.
	entries := entries sorted: [ :e1 :e2 | e1 basename <= e2 basename ].
	
	self assert: entries size equals: 5.
	self assert: (entries collect: [ :e | e basename ]) equals: 
		#( '.project' '.properties' 'LICENSE' 'README.md' 'src' ).
	self assert: (entries collect: [ :e | e fileSize ]) equals: 
		#( 27 21 1065 64 0 ).
	
	self assert: (entries allSatisfy: [ :e | e isReadable ]).
	self assert: (entries allSatisfy: [ :e | e isWritable not ]).
	self assert: (entries allSatisfy: [ :e | e posixPermissions = 8r444 ]).
	
	
	