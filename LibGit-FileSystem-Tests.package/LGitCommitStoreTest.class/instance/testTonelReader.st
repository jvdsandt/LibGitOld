running
testTonelReader

	| root reader snapshot |
	
	root := store root.
	
	reader := TonelReader on: store root / 'src' fileName: 'Spider-GitDemo1'.
	reader loadDefinitions.
	snapshot := reader snapshot.
	
	self assert: snapshot definitions size equals: 20.
	
	