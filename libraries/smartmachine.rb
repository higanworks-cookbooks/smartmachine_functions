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
