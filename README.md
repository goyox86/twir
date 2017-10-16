TWiR
------------

A Ruby script to automate *most* of the mechanical work involved in an edition of "This Week in Rust".

What it does?

Basically it reads a list of github repositories (by default from `./repos.yml`) from a YAML file and then uses the Github API to get a detailed list of contributions for each of the projects listed generating after a Markdown file corresponding to a new issue of "This Week in Redox". It also takes as input a list of all time contributors YAML file (by default from `./all_contributors.yml`) and appends the new contributors found at the end of the run so we know who is new and can welcome and thank them!

It uses a standard template which is the current TWiR format we have, but you can pass your own template. Take a look here to see what can you use inside templates.

It is not fully automatic because there is a **TL; DR** section which has to be made by an human and/or intelligent entity OR! If you have a fancy ML/AI piece of code (you have to say that these days in order to get people's attention xD) that would do that, please send a PR!

Jokes aside, this is just the hard repetitive work done by machines (as it should) leaving the interesting stuff to humans. Also enables anyone else to quickly release a TWiR edition.


Installation & Setup
--------------------

It's a Ruby application so just:

```sh
$ bundle install
```

And after that you should be able to invoke it:

**Note**: You will need a Github personal access token. You can check how to generate one [here](https://github.com/blog/1509-personal-api-tokens)

```sh
$./twir -t aaaaaaabbbbbbcccc11111222233344 -a goyox86 -i 30 -s 25-09-2017 
```

That says: Take the Github personal token `aaaaaaabbbbbbcccc11111222233344` use `goyox86` as the author and get contributions starting from the 25th of September of 2017 and set `30` as the issue number.

Options
-------

- `[-t | --token] TOKEN`: Github access token.
- `[-v | --verbose]`: Run the utility printinng setep buy step messages about progress.
- `[-r | --repos-file] REPOS_FILE`: YAML file containing the list of Github repositories to be scanned. Defaults to 'repos.yml'.
- `[-c | --contributors-db] CONTRIBUTORS_DB` :YAML file with the all-time contributors. When calculating the new contributors a DB with the all-time list of contributors before the date when this command is run. Defaults to 'all_contributors.yml'
- `[-s | --since] SINCE`: The start date for counting contributions.
- `[-a | --author] AUTHOR`: The Github handle of the user that will appear on the generated TWiR issue.
- `[-p | --template] TEMPLATE`: The ERB template file used to generate the TWiR. Defaults to './templates/twir.md.erb'.
- `[-i | --issue-number]` ISSUE_NUMBER: The TWiR issue number.
- `[-o | --output-file]` OUTPUT_FILE: The output file name. Defaults to 'this-week-in-redox-ISSUE_NUMBER'.
- `[-u |  --update_contributors-db]`: Update the all-time contributors DB with the new contributors just found.
       
[License](LICENSE)
------------------

The MIT License (MIT)

Copyright (c) 2017 Jose Narvaez
