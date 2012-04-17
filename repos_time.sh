#!/bin/bash


cat my_repos.json | ../jed/jed.js -m "' [_.name, _.created_at, _.pushed_at, _.updated_at] '"
