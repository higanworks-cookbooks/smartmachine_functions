require 'chefspec'

describe 'smartmachine_functions::mdata_permission' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'smartmachine_functions::mdata_permission' }
  it 'should mdata socket accessing is allowed to root only.' do
    chef_run.should create_directory '/var/run/smartdc'
    chef_run.directory('/var/run/smartdc').should be_owned_by('root', 'root')
    chef_run.directory('/var/run/smartdc').mode.should == "0700"
  end
end
