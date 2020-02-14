running
lgitCommit_1bfc2c7

	| c |
	c := lgitRepo revparse: '1bfc2c7'.
	self assert: c class equals: LGitCommit.
	^ c