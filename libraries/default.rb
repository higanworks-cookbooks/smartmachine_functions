#
# module: SmartMachine
# Author: Yukihiko Sawanobori
#  Copyright (C) 2013 HiganWorks LLC
#
#  Licensed under MIT https://github.com/higanworks/LICENSES¬
#

module SmartMachine
  def zoneinfo
    `zoneadm list -p`.split(":")
  end

  def kstat_zone_cpucaps(id)
    `kstat -p -c zone_caps -n cpucaps_zone_#{id} -s value`
  end

  def sm_id
    zoneinfo[0]
  end

  def sm_uuid
    zoneinfo[1]
  end

  def sm_cpu_cap
    kstat_zone_cpucaps(sm_id).split("\t")[1].to_i
  end

  def sm_cpu_counts
    sm_cpu_cap.div(100)
  end
end



module SmartMachine
  module Metadata
    require 'mixlib/shellout'

    # retieve metadata returns String or nil.
    def self.from_metadata(key)
      cmd = Mixlib::ShellOut.new("/usr/sbin/mdata-get #{key}", :returns => [0,1])
      collect = cmd.run_command
      collect.stdout.chomp if collect.exitstatus == 0
    end
  end
end
