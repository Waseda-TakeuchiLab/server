# Copyright (c) 2022 Shuhei Nitta. All rights reserved.


# Power management
0 12 * * mon-thu wakealarm 21
0 12 * * fri wakealarm 69
0 21 * * * shutdown now

# Package management
0 10 * * * apt-get update && apt-get upgrade -y >> /var/log/cron/apt-upgrade.log
30 10 * * * apt-get autoremove >> /var/log/cron/apt-autoremove.log
 