## Contributing

Here are the easy steps to contribute.

1. Fork, then clone the repo:

	`git clone https://github.com/<YourUserName>/Applied-Mathematics-Unit2.git`

2. Configure git to sync your fork with the original repository
	
	>Change directories to the location of the fork you cloned

	>Type `git remote -v` and press enter.

	>Type `git remote add upstream https://github.com/BradBachu/Applied-Mathematics-Unit2.git`

	>To verify the new upstream repository you've specified for your fork, type `git remote -v` again. You should see the URL for your fork as `origin`, and the URL for the original repository as `upstream`.

		`origin		https://github.com/<YourUserName>/Applied-Mathematics-Unit2.git (fetch)`
		`origin		https://github.com/<YourUserName>/Applied-Mathematics-Unit2.git (push)`
		`upstream	https://github.com/BradBachu/Applied-Mathematics-Unit2.git (fetch)`
		`upstream	https://github.com/BradBachu/Applied-Mathematics-Unit2.git (push)`

	Now, you can keep your fork synced with the upstream repository by following [this](https://help.github.com/articles/syncing-a-fork/)

3.  Create a branch

	`git branch 20XX-q1`

4. Switch to branch

	`git checkout 20XX-q1`

5. Make changes and commit with a good message

	`git add 20xx/q1.tex`

	`git commit -m "commit message"`

6. Switch to master then merge

	`git checkout master`

	`git merge 20XX-q1`

7. Push to your fork

	`git push origin master`

	(enter username and info)

8. Submit pull request

9. Wait for me to accept your pull request.

## Conventions

Happy contributing !