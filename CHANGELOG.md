# CHANGELOG for smartmachine_functions

This file is used to list changes made in each version of smartmachine_functions.

## v0.5.2

* chomp as default from_metadata

## v0.5.1

* Bugfix: typo moudle name x Meteadata o Metadata

## v0.5.0

* Library: add module function SmartMachine::Metadata.from_metadata
* Library: Do not Override Chef::Provider::Package::SmartOS when Chef::Version >= "11"

## v0.4.1

* Bugfux: Fix: error occurred because "file not found" before converge recipe[tools].

## v0.4.0

* Add Library: Chef::Recipe::SmartMachine
  * sm_id, sm_uuiid, sm_cpu_cap, sm_cpu_counts

## v0.3.0

* Add Recipe: add_joyent_attributes

## v0.2.0

* Add Tool: sm-summary_json version 1
* Add Recipe: tools (includes sm-summary_json)
* Add Recipe: mdata_permission

## v0.1.0

* Initial release of smartmachine_functions
* Library: Override Chef::Provider::Package::SmartOS

- - -
Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
