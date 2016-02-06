mjpg-streamer scripts for RoboRIO
=================================

This was very quickly put together... so not quite as polished as I would normally like. :) 

We used these scripts to run two camera servers on our roboRIO. Very little CPU usage as far as we can see. Only tested with the Microsoft LifeCam 3000 cameras.

Instructions
------------

* Download the tarballs at http://www.chiefdelphi.com/forums/showthread.php?p=1460637
* scp them to the roborio
* untar the tarballs in the home directory of the admin user
* Copy the `libjpeg*.so` files into the `mjpg-streamer-182` directory
* Create the files in this gist in the `mjpg-streamer-182` directory

Usage
-----

If you run `install.sh`, it will cause two camera servers to start on startup. Obviously, you can edit it to only start a single server.

If you run `run_one.sh`, it will run a server on http://roborio-XXXX.local:5800 which you can access with a web browser and figure out how to use.

Author & Thanks
===============

Scripts created by Dustin Spicuzza, FRC Team 1418

Thanks to Mike Anderson, FRC Team 118 for distributing the roboRIO compatible builds of mjpg-streamer.