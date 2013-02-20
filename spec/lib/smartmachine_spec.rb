require "./libraries/smartmachine"
include SmartMachine

module SmartMachine
  describe "#sm_id" do
    it "should see smartmachine id" do
      sm_id.should =~(/[\d]+/)
    end
  end

  describe "#sm_uuid" do
    it "should see smartmachine uuid" do
      sm_uuid.should =~(/[\w\d]{8}-[\w\d]{4}-[\w\d]{4}-[\w\d]{4}-[\w\d]{12}/)
    end
  end


  describe "#sm_cpu_cap" do
    it "should see smartmachine cpu cap from kstat" do
      sm_cpu_cap.should be_kind_of(Fixnum)
      sm_cpu_cap.divmod(100)[1].should == 0
    end
  end

  describe "#sm_cpu_counts" do
    it "should see smartmachine cpu cores(virtual)" do
      sm_cpu_counts.should be_kind_of(Fixnum)
      sm_cpu_counts.should be > 0
    end
end
end

