
typo: ready
	@- git status
	@- git commit -am "saving"
	@- git push origin master

commit: ready
	@- git status
	@- git commit -a
	@- git push origin master

update: ready
	@- git pull origin master

status: ready
	@- git status

ready: 
	@git config --global credential.helper cache
	@git config credential.helper 'cache --timeout=3600'

