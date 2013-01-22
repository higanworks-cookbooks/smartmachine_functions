require 'chefspec'

describe 'smartmachine_functions::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'smartmachine_functions::default' }
  it 'should nothing to do' do
    true
  end
end
