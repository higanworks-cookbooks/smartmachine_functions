require 'chefspec'

describe 'smartmachine_functions::tools' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'smartmachine_functions::tools' }
  it 'should put sm-summary_json as executable.' do
    chef_run.should create_cookbook_file '/opt/local/bin/sm-summary_json'
    chef_run.cookbook_file('/opt/local/bin/sm-summary_json').should be_owned_by('root', 'root')
    chef_run.cookbook_file('/opt/local/bin/sm-summary_json').mode.should == "0755"
  end
end
