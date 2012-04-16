#!/bin/bash


cat my_repos.json | ../jed/jed.js -m "
	' [_.name, _.created_at.slice(0, 7), _.pushed_at.slice(0, 7), _.updated_at.slice(0, 7)] '"
