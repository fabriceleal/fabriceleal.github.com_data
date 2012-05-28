#!/bin/bash


cat my_repos.json | jsoned -m "' [_.name, _.created_at, _.pushed_at, _.updated_at] '"
