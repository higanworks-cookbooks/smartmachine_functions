smartmachine_functions Cookbook
===============================

Chef patches, little fix and tools for joyent smartos(smartmachine).


Usage
-----

Just add `recipe[smartmachine_functions]` to runlist for Fix pkgin provider.  
Or add other recipes.

Fertures
----

### BugFix: Override Chef::Provider::Package::SmartOS

Package resource works well.

### Security Fix: mdata socket vulnerability

Fix metadata api vulnerability.

### Tool: `sm-summry_json`

This command prints out formatted sm-summary as json.

### Chef-Integration

Set joyent smartmachine's infomation as node attributes from sm-summary outputs.

Recipes
---

### defaut

Do nothing.  Dummy recipe to include libraries.

### tools

Add several tools to /opt/local/bin.

### mdata_permission

The smartmachine metadata has serious vulnerability such as any localuser can get metadata.  
To fix it, set mode 0700 to `/var/run/smartdc` directory.

### add_joyent_attributes

Create node['joyent'] attributes from sm-summary.

#### attribute examples 

<pre><code>chef:recipe > pp node.joyent.current_normal

{"sm_uuid"=>"xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
 "sm_id"=>"312",
 "hostname"=>"xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx.local",
 "smartos_build"=>"joyent_20120614T001014Z",
 "image"=>"standard 1.0.7",
 "base_image"=>"NA",
 "documentation"=>"http://wiki.joyent.com/jpc2/SmartMachine+Standard",
 "pkgsrc"=>"http://pkgsrc.joyent.com/sdc6/2012Q1/i386/All",
 "processes"=>"43",
 "memory_rss_cap_mb"=>"1024",
 "memory_rss_used_mb"=>"177",
 "memory_rss_free_mb"=>"847",
 "swap_cap"=>"1024",
 "swap_used"=>"314",
 "tmp_used"=>"16K",
 "disk_quota"=>"32G",
 "percentage_disk_used"=>"9%"}</code></pre>

<pre><code>chef:recipe > node.joyent.image
 => "standard 1.0.7" </code></pre>


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
