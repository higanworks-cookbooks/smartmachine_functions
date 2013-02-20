require './libraries/smartmachine'

describe SmartMachine do
  before do
    @dummy_class = double
    @dummy_class.extend SmartMachine
  end

  describe "#sm_id" do
    it "returns true when sm_id is extended" do
      expect(@dummy_class.respond_to?(:sm_id)).to be_true
    end
  end

  describe "#sm_uuid" do
    it "returns true when sm_uuid is extended" do
      expect(@dummy_class.respond_to?(:sm_uuid)).to be_true
    end
  end

  describe "#sm_cpu_cap" do
    it "returns true when sm_cpu_cap is extended" do
      expect(@dummy_class.respond_to?(:sm_cpu_cap)).to be_true
    end
  end

  describe "#sm_cpu_counts" do
    it "returns true when sm_cpu_counts is extended" do
      expect(@dummy_class.respond_to?(:sm_cpu_counts)).to be_true
    end
  end

end
