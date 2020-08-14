## Contributing

Here are the easy steps to contribute.

1. Fork, then clone the repo:

	`git clone https://github.com/<YourUserName>/Applied-Mathematics-Unit2.git`

2. Configure git to sync your fork with the original repository
	
	a. Change directories to the location of the fork you cloned

	b. Type `git remote -v` and press enter.

	c. Type `git remote add upstream https://github.com/BradBachu/Applied-Mathematics-Unit2.git`

	d. To verify the new upstream repository you've specified for your fork, type `git remote -v` again. You should see the URL for your fork as `origin`, and the URL for the original repository as `upstream`.

		origin	https://github.com/<YourUserName>/Applied-Mathematics-Unit2.git (fetch)
		origin	https://github.com/<YourUserName>/Applied-Mathematics-Unit2.git (push)
		upstream	https://github.com/BradBachu/Applied-Mathematics-Unit2.git (fetch)
		upstream	https://github.com/BradBachu/Applied-Mathematics-Unit2.git (push)

	Now, everytime you start work, run `git fetch upstream` and `git merge upstream/master master` to fast forward your master branch to that of Brad's. This ensures that your working tree will be clean and consistent.

3.  Create a branch with the appropriate name, for example:

	`git branch anon23-20XX-q1`

4. Switch to that branch

	`git checkout anon23-20XX-q1`

5. Make changes and commit with a good message

	`git add 20XX/q1.tex`

	`git commit -m "20XX q1 complete"`

6. Push your local branch changes to your remote repo. Your local branch will now be tracked by a remote branch. This prevents local data loss to severely affect your work.

	`git push --set-upstream 20XX-q1`

7. Every new change you make, you will repeat step 5 and simply `git push` to the remote branch.

8. Go on the github UI to create a Pull request from the branch you are working on to Brad's `master` branch.

9. Review and submit a pull request.

10. Wait for me to accept your pull request or give feedback on what needs to be changed.


## Git Conventions

1. Label branches in the form `username-year-question#`, example `anon23-2020-q1`. If the branch is created for files that are not questions, ensure your username is present and a clear motive. eg. `anon23-add_git_conventions`

2. Each branch should deal with a single question and should not have editted files in other directories. The __ONLY__ exception to this rule is if you recieve permission from `Brad` or `Arjun` to complete en entire year and you wish to have all questions on the same branch.

3. Ensure you read the __Latex and Solution Conventions__ before starting and keep them handy when working. If you have any major formatting questions, please look at other files in the original repo first, before reaching out and asking. We strongly value consistency and clarity so please reach out before adding your own style.

4. Be willing to accept constructive crticism and feedback. We all want these solutions to be as clear and useful to anyone who is pursuing Applied Mathematics. 


Happy contributing !