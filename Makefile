


final: repos_time.json repos_language.json stackedhistory.json languages.json

#languages.json stackedhistory.json repos_time.json

my_repos.json: my_repos.sh
	./$< > $@

repos_time.json: repos_time.sh my_repos.json
	./$< > $@

repos_language.json: repos_language.sh my_repos.json
	./$< > $@

stackedhistory.json: stackedhistory.sh my_repos.json
	./$< > $@

languages.json: languages.sh my_repos.json
	./$< > $@

#%.json : %.sh
#	echo "Generate $@ from $<"
#	./$< > $@

.PHONY: clean
clean:
	rm *.json

.PHONY: deploy
deploy:
	cp *.json ../fabriceleal.github.com
