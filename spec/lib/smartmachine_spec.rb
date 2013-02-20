require "./libraries/smartmachine"
include SmartMachine

module SmartMachine

  # CmdMocks
  def zoneinfo
    # `zoneadm list -p`.split(":")
    "69:7b43a1fd-a18b-4fda-a2fd-bda3354f04ff:running:/:7b43a1fd-a18b-4fda-a2fd-bda3354f04ff:native:excl:0".split(":")
  end

  def kstat_zone_coucaps(id)
    # `kstat -p -c zone_caps -n cpucaps_zone_#{id} -s value`
    "caps:69:cpucaps_zone_69:value\t200\n"
  end


  # samples
  describe "#sm_id" do
    it "should see smartmachine id" do
      sm_id.should == "69"
    end
  end

  describe "#sm_uuid" do
    it "should see smartmachine uuid" do
      sm_uuid.should == "7b43a1fd-a18b-4fda-a2fd-bda3354f04ff"
    end
  end


  describe "#sm_cpu_cap" do
    it "should see smartmachine cpu cap from kstat" do
      sm_cpu_cap.should be 200
    end
  end

  describe "#sm_cpu_counts" do
    it "should see smartmachine cpu cores(virtual)" do
      sm_cpu_counts.should be 2
    end
  end
end

