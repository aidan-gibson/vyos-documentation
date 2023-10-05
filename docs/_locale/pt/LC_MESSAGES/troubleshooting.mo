��    G      T  a   �             �   -  u   �     N  
   g     r     �     �  X   �  �     L   �  ~   	     �	  B   �	  �   �	  a   �
  m     j   u     �     �       0      F   Q     �  
   �     �     �  �   �  E   j     �  \   �  E     V   d  c   �  �     �   �  J   x  3   �  %   �       O   0     �     �  1   �  F   �  E   &  .  l  �   �  O     T   l  D   �  �     %   �  9   �  �   �  U   }  w   �     K     a  "   o     �    �  �   �  '   D  U   l     �  6   �          )  `   E  �   �     �  �   �  u   P     �  
   �     �     �       X   !  �   z  L   E  ~   �       B   )  �   l  a      m      j   �      X!     r!     �!  0   �!  F   �!     "  
    "     +"     J"  �   ]"  E   �"     (#  \   9#  E   �#  V   �#  c   3$  �   �$  �   O%  J   �%  3   ;&  %   o&     �&  O   �&     �&     '  1   %'  F   W'  E   �'  .  �'  �   )  O   �)  T   �)  D   9*  �   ~*  %   +  9   2+  �   l+  U   �+  w   K,     �,     �,  "   �,     
-    -  �   #.  '   �.  U   �.     :/  6   N/     �/     �/  `   �/        =       E   	                #   @   
          +   $       1   <          6               &       )   %          !       3   F   8       5       '   -   9   .   ?          2                             4   0                  C   ,   A          D   >            ;   /                            (   *         :   7                    B      G   "        Advanced Connectivity Tests And **a more generic way to fix it** is just deleting every MAC address at the configuration file of the cloned machine. They will be correctly regenerated automatically. Another example could be when cloning VyOS VMs in GNS3 and you get into the same issue: interface names have changed. Basic Connectivity Tests Boot Steps Connectivity Tests Discover routers via eth0. Example: Finally it runs the post-config script ``/config/scripts/vyos-postconfig-bootup.script`` For example, you have a VyOS VM with 4 Ethernet interfaces named eth0, eth1, eth2 and eth3. Then, you migrate your VyOS VM to a different host and find your interfaces now are eth4, eth5, eth6 and eth7. Grub then starts the Linux boot and loads the Linux Kernel ``/boot/vmlinuz`` However, another helper is available which combines ping and traceroute into a single tool. An example of its output is shown: IPv6 Topology Discovery IPv6 uses different techniques to discover its Neighbors/topology. If it is a VM, go into the settings of the host and set the MAC address to the settings found in the config.boot file. You can also set the MAC to static if the host allows so. If the config file was upgraded, runs any post upgrade scripts ``/config/scripts/post-upgrade.d`` If you find the names of your interfaces have changed, this could be because your MAC addresses have changed. Initialises the boot configuration file - copies over ``config.boot.default`` if there is no configuration Interface Bandwidth Usage Interface Performance Interface names Kernel Launches Systemd ``/lib/systemd/systemd`` Log into VyOS and run this command to display your interface settings. Monitor command Monitoring Mounts the ``/boot`` partition Neighbor Discovery Now, in order to update a MAC address in the configuration, run this command specifying the interface name and MAC address you want. One way to fix this issue **taking control of the MAC addresses** is: Router Discovery Runs The pre-config script, if there is one ``/config/scripts/vyos-preconfig-bootup.script`` Runs ``telinit q`` to tell the init system to reload ``/etc/inittab`` Runs the configuration migration, if the configuration is for an older version of VyOS Send ICMP echo requests to destination host. There are multiple options to ping, inkl. VRF support. Several options are available for changing the display output. Press `h` to invoke the built in help system. To quit, just press `q` and you'll be returned to the VyOS command prompt. Sometimes things break or don't work as expected. This section describes several troubleshooting tools provided by VyOS that can help when something goes wrong. Sometimes you need to clear counters or statistics to troubleshoot better. Starts FRR_ - successor to `GNU Zebra`_ and Quagga_ Starts ``rl-system`` and ``firewall`` System Information Systemd loads the VyOS service file ``/lib/systemd/system/vyos-router.service`` Take note of MAC addresses. Terminal/Console The BIOS loads Grub (or isolinux for the Live CD) The ``accept`` command opens a listening iperf server on TCP Port 5001 The ``initiate`` command connects to that server to perform the test. The ``monitor command`` command allows you to repeatedly run a command to view a continuously refreshed output. The command is run and output every 2 seconds, allowing you to monitor the output continuously without having to re-run the command. This can be useful to follow routing adjacency formation. The boot configuration file is then applied by ``/opt/vyatta/sbin/ vyatta-boot-config-loader/opt/vyatta/etc/config/config.boot`` The command follow the same logic as the ``set`` command in configuration mode. The config loader script writes log entries to ``/var/log/vyatta-config-loader.log`` The output consumes the screen and will replace your command prompt. The service file launches the VyOS router init script ``/usr/libexec/vyos/init/vyos-router`` - this is part of the vyatta-cfg_ Debian package These are the boot steps for VyOS 1.2 To do this use the ``clear`` command in Operational mode. To monitor interface traffic, issue the :code:`monitor traffic interface <name>` command, replacing `<name>` with your chosen interface. To quit monitoring, press `Ctrl-c` and you'll be returned to the VyOS command prompt. To take a look on the network bandwidth between two nodes, the ``monitor bandwidth-test`` command is used to run iperf. Trace path to target. Traffic Dumps Traffic can be filtered and saved. Troubleshooting Verifying connectivity can be done with the familiar `ping` and `traceroute` commands. The options for each are shown (the options for each command were displayed using the built-in help as described in the :ref:`cli` section and are omitted from the output here): VyOS 1.2 uses `Debian Jessie`_ as the base Linux operating system. Jessie was the first version of Debian that uses systemd_ as the default init system. VyOS features several monitoring tools. Will clear the screen and show you the output of ``show interfaces`` every 2 seconds. show the following: to clear counters on firewall rulesets or single rules to clear interface counters to clear the console output to take a quick view on the used bandwidth of an interface use the ``monitor bandwidth`` command MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: pt
Plural-Forms: nplurals=2; plural=(n>=0 && n<=1) ? 0 : 1;
 Advanced Connectivity Tests And **a more generic way to fix it** is just deleting every MAC address at the configuration file of the cloned machine. They will be correctly regenerated automatically. Another example could be when cloning VyOS VMs in GNS3 and you get into the same issue: interface names have changed. Basic Connectivity Tests Boot Steps Connectivity Tests Discover routers via eth0. Example: Finally it runs the post-config script ``/config/scripts/vyos-postconfig-bootup.script`` For example, you have a VyOS VM with 4 Ethernet interfaces named eth0, eth1, eth2 and eth3. Then, you migrate your VyOS VM to a different host and find your interfaces now are eth4, eth5, eth6 and eth7. Grub then starts the Linux boot and loads the Linux Kernel ``/boot/vmlinuz`` However, another helper is available which combines ping and traceroute into a single tool. An example of its output is shown: IPv6 Topology Discovery IPv6 uses different techniques to discover its Neighbors/topology. If it is a VM, go into the settings of the host and set the MAC address to the settings found in the config.boot file. You can also set the MAC to static if the host allows so. If the config file was upgraded, runs any post upgrade scripts ``/config/scripts/post-upgrade.d`` If you find the names of your interfaces have changed, this could be because your MAC addresses have changed. Initialises the boot configuration file - copies over ``config.boot.default`` if there is no configuration Interface Bandwidth Usage Interface Performance Interface names Kernel Launches Systemd ``/lib/systemd/systemd`` Log into VyOS and run this command to display your interface settings. Monitor command Monitoring Mounts the ``/boot`` partition Neighbor Discovery Now, in order to update a MAC address in the configuration, run this command specifying the interface name and MAC address you want. One way to fix this issue **taking control of the MAC addresses** is: Router Discovery Runs The pre-config script, if there is one ``/config/scripts/vyos-preconfig-bootup.script`` Runs ``telinit q`` to tell the init system to reload ``/etc/inittab`` Runs the configuration migration, if the configuration is for an older version of VyOS Send ICMP echo requests to destination host. There are multiple options to ping, inkl. VRF support. Several options are available for changing the display output. Press `h` to invoke the built in help system. To quit, just press `q` and you'll be returned to the VyOS command prompt. Sometimes things break or don't work as expected. This section describes several troubleshooting tools provided by VyOS that can help when something goes wrong. Sometimes you need to clear counters or statistics to troubleshoot better. Starts FRR_ - successor to `GNU Zebra`_ and Quagga_ Starts ``rl-system`` and ``firewall`` System Information Systemd loads the VyOS service file ``/lib/systemd/system/vyos-router.service`` Take note of MAC addresses. Terminal/Console The BIOS loads Grub (or isolinux for the Live CD) The ``accept`` command opens a listening iperf server on TCP Port 5001 The ``initiate`` command connects to that server to perform the test. The ``monitor command`` command allows you to repeatedly run a command to view a continuously refreshed output. The command is run and output every 2 seconds, allowing you to monitor the output continuously without having to re-run the command. This can be useful to follow routing adjacency formation. The boot configuration file is then applied by ``/opt/vyatta/sbin/ vyatta-boot-config-loader/opt/vyatta/etc/config/config.boot`` The command follow the same logic as the ``set`` command in configuration mode. The config loader script writes log entries to ``/var/log/vyatta-config-loader.log`` The output consumes the screen and will replace your command prompt. The service file launches the VyOS router init script ``/usr/libexec/vyos/init/vyos-router`` - this is part of the vyatta-cfg_ Debian package These are the boot steps for VyOS 1.2 To do this use the ``clear`` command in Operational mode. To monitor interface traffic, issue the :code:`monitor traffic interface <name>` command, replacing `<name>` with your chosen interface. To quit monitoring, press `Ctrl-c` and you'll be returned to the VyOS command prompt. To take a look on the network bandwidth between two nodes, the ``monitor bandwidth-test`` command is used to run iperf. Trace path to target. Traffic Dumps Traffic can be filtered and saved. Troubleshooting Verifying connectivity can be done with the familiar `ping` and `traceroute` commands. The options for each are shown (the options for each command were displayed using the built-in help as described in the :ref:`cli` section and are omitted from the output here): VyOS 1.2 uses `Debian Jessie`_ as the base Linux operating system. Jessie was the first version of Debian that uses systemd_ as the default init system. VyOS features several monitoring tools. Will clear the screen and show you the output of ``show interfaces`` every 2 seconds. show the following: to clear counters on firewall rulesets or single rules to clear interface counters to clear the console output to take a quick view on the used bandwidth of an interface use the ``monitor bandwidth`` command 