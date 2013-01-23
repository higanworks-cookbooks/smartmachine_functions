require 'chefspec'

describe 'smartmachine_functions::add_joyent_attributes' do
  it 'should add attributes joyent to node when smartos' do
    ## set platfrom
    chef_run = ChefSpec::ChefRunner.new
    chef_run.node.automatic_attrs[:platform] = "smartos"
    chef_run.converge 'smartmachine_functions::add_joyent_attributes'

    chef_run.should include_recipe 'smartmachine_functions::tools'
    chef_run.node.should have_key(:joyent)
    chef_run.node['joyent'].should have_key(:sm_uuid)
  end

  it 'should node add attributes joyent to node when others' do
    ## set platfrom
    chef_run = ChefSpec::ChefRunner.new
    chef_run.node.automatic_attrs[:platform] = "ubuntu"
    chef_run.converge 'smartmachine_functions::add_joyent_attributes'

    chef_run.should include_recipe 'smartmachine_functions::tools'
    chef_run.node.should_not have_key(:joyent)
  end
end
