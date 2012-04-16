


final: languages.json stackedhistory.json repos_time.json

%.json : %.sh
	echo "Generate $@ from $<"
	./$< > $@

.PHONY: clean
clean:
	rm *.json
