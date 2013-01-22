smartmachine_functions Cookbook
===============================

Chef patches, little fix and tools for joyent smartos(smartmachine).


Usage
-----

Just add `recipe[smartmachine_functions]` to runlist for Fix pkgin provider.


Fertures
----

### BugFix: Override Chef::Provider::Package::SmartOS

Package resource works well.

### Tool: `sm-summry_json`

This command prints out formatted sm-summary as json.


Test
----

This cookbook tested by ChefSpec and Foodcritic.

### Run test

Rspec
<pre><code>bundle
rake
</code></pre>

Foodcritic
<pre><code>bundle
rake fc
</code></pre>

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: sawanoboryu@higanworks.com (HiganWorks LLC)
