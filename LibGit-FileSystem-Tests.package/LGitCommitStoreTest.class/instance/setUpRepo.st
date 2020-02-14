running
setUpRepo

	self tearDownRepo.
	
	lgitRepo := LGitRepository on: self reference.
	lgitRepo cloneHttps: 'https://github.com/jvdsandt/spider-gittest.git'.