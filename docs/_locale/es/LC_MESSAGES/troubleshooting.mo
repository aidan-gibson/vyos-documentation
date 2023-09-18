��    G      T  a   �             �   -  u   �     N  
   g     r     �     �  X   �  �     L   �  ~   	     �	  B   �	  �   �	  a   �
  m     j   u     �     �       0      F   Q     �  
   �     �     �  �   �  E   j     �  \   �  E     V   d  c   �  �     �   �  J   x  3   �  %   �       O   0     �     �  1   �  F   �  E   &  .  l  �   �  O     T   l  D   �  �     %   �  9   �  �   �  U   }  w   �     K     a  "   o     �    �  �   �  '   D  U   l     �  6   �          )  `   E  �   �  !   �  �   �  �   f           $     6  '   N     v  m     �   �  S   �  �   
     �  H   �  �   �  �   �   y   |!  s   �!  %   j"     �"     �"  .   �"  \   �"     K#     ^#     k#     �#  �   �#  U   >$     �$  g   �$  \   %  c   w%  n   �%  �   J&  �   '  [   �'  /   9(  #   i(     �(  X   �(  !   �(     !)  /   2)  M   b)  I   �)  [  �)  �   V+  V   �+  n   A,  E   �,  �   �,  -   �-  A   �-  �   .  Y   �.  �   �.     |/     �/  '   �/     �/  )  �/  �   1  /   �1  X   �1     K2  O   a2  "   �2  #   �2  }   �2        =       E   	                #   @   
          +   $       1   <          6               &       )   %          !       3   F   8       5       '   -   9   .   ?          2                             4   0                  C   ,   A          D   >            ;   /                            (   *         :   7                    B      G   "        Advanced Connectivity Tests And **a more generic way to fix it** is just deleting every MAC address at the configuration file of the cloned machine. They will be correctly regenerated automatically. Another example could be when cloning VyOS VMs in GNS3 and you get into the same issue: interface names have changed. Basic Connectivity Tests Boot Steps Connectivity Tests Discover routers via eth0. Example: Finally it runs the post-config script ``/config/scripts/vyos-postconfig-bootup.script`` For example, you have a VyOS VM with 4 Ethernet interfaces named eth0, eth1, eth2 and eth3. Then, you migrate your VyOS VM to a different host and find your interfaces now are eth4, eth5, eth6 and eth7. Grub then starts the Linux boot and loads the Linux Kernel ``/boot/vmlinuz`` However, another helper is available which combines ping and traceroute into a single tool. An example of its output is shown: IPv6 Topology Discovery IPv6 uses different techniques to discover its Neighbors/topology. If it is a VM, go into the settings of the host and set the MAC address to the settings found in the config.boot file. You can also set the MAC to static if the host allows so. If the config file was upgraded, runs any post upgrade scripts ``/config/scripts/post-upgrade.d`` If you find the names of your interfaces have changed, this could be because your MAC addresses have changed. Initialises the boot configuration file - copies over ``config.boot.default`` if there is no configuration Interface Bandwidth Usage Interface Performance Interface names Kernel Launches Systemd ``/lib/systemd/systemd`` Log into VyOS and run this command to display your interface settings. Monitor command Monitoring Mounts the ``/boot`` partition Neighbor Discovery Now, in order to update a MAC address in the configuration, run this command specifying the interface name and MAC address you want. One way to fix this issue **taking control of the MAC addresses** is: Router Discovery Runs The pre-config script, if there is one ``/config/scripts/vyos-preconfig-bootup.script`` Runs ``telinit q`` to tell the init system to reload ``/etc/inittab`` Runs the configuration migration, if the configuration is for an older version of VyOS Send ICMP echo requests to destination host. There are multiple options to ping, inkl. VRF support. Several options are available for changing the display output. Press `h` to invoke the built in help system. To quit, just press `q` and you'll be returned to the VyOS command prompt. Sometimes things break or don't work as expected. This section describes several troubleshooting tools provided by VyOS that can help when something goes wrong. Sometimes you need to clear counters or statistics to troubleshoot better. Starts FRR_ - successor to `GNU Zebra`_ and Quagga_ Starts ``rl-system`` and ``firewall`` System Information Systemd loads the VyOS service file ``/lib/systemd/system/vyos-router.service`` Take note of MAC addresses. Terminal/Console The BIOS loads Grub (or isolinux for the Live CD) The ``accept`` command opens a listening iperf server on TCP Port 5001 The ``initiate`` command connects to that server to perform the test. The ``monitor command`` command allows you to repeatedly run a command to view a continuously refreshed output. The command is run and output every 2 seconds, allowing you to monitor the output continuously without having to re-run the command. This can be useful to follow routing adjacency formation. The boot configuration file is then applied by ``/opt/vyatta/sbin/ vyatta-boot-config-loader/opt/vyatta/etc/config/config.boot`` The command follow the same logic as the ``set`` command in configuration mode. The config loader script writes log entries to ``/var/log/vyatta-config-loader.log`` The output consumes the screen and will replace your command prompt. The service file launches the VyOS router init script ``/usr/libexec/vyos/init/vyos-router`` - this is part of the vyatta-cfg_ Debian package These are the boot steps for VyOS 1.2 To do this use the ``clear`` command in Operational mode. To monitor interface traffic, issue the :code:`monitor traffic interface <name>` command, replacing `<name>` with your chosen interface. To quit monitoring, press `Ctrl-c` and you'll be returned to the VyOS command prompt. To take a look on the network bandwidth between two nodes, the ``monitor bandwidth-test`` command is used to run iperf. Trace path to target. Traffic Dumps Traffic can be filtered and saved. Troubleshooting Verifying connectivity can be done with the familiar `ping` and `traceroute` commands. The options for each are shown (the options for each command were displayed using the built-in help as described in the :ref:`cli` section and are omitted from the output here): VyOS 1.2 uses `Debian Jessie`_ as the base Linux operating system. Jessie was the first version of Debian that uses systemd_ as the default init system. VyOS features several monitoring tools. Will clear the screen and show you the output of ``show interfaces`` every 2 seconds. show the following: to clear counters on firewall rulesets or single rules to clear interface counters to clear the console output to take a quick view on the used bandwidth of an interface use the ``monitor bandwidth`` command MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: es
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 Pruebas de conectividad avanzadas Y **una forma más genérica de arreglarlo** es simplemente borrar cada dirección MAC en el archivo de configuración de la máquina clonada. Se regenerarán correctamente de forma automática. Otro ejemplo podría ser cuando se clonan máquinas virtuales VyOS en GNS3 y se encuentra con el mismo problema: los nombres de las interfaces han cambiado. Pruebas básicas de conectividad Pasos de arranque Pruebas de conectividad Descubra enrutadores a través de eth0. Ejemplo: Finalmente, ejecuta el script posterior a la configuración ``/config/scripts/vyos-postconfig-bootup.script`` Por ejemplo, tiene una VM VyOS con 4 interfaces Ethernet llamadas eth0, eth1, eth2 y eth3. Luego, migra su VyOS VM a un host diferente y encuentra que sus interfaces ahora son eth4, eth5, eth6 y eth7. Grub luego inicia el arranque de Linux y carga el Kernel de Linux ``/boot/vmlinuz`` Sin embargo, hay otro asistente disponible que combina ping y traceroute en una sola herramienta. Se muestra un ejemplo de su salida: Detección de topología IPv6 IPv6 utiliza diferentes técnicas para descubrir sus vecinos/topología. Si se trata de una máquina virtual, acceda a la configuración del host y configure la dirección MAC en la configuración que se encuentra en el archivo config.boot. También puede configurar el MAC en estático si el host lo permite. Si el archivo de configuración se actualizó, ejecuta cualquier secuencia de comandos posterior a la actualización ``/config/scripts/post-upgrade.d`` Si encuentra que los nombres de sus interfaces han cambiado, esto podría deberse a que sus direcciones MAC han cambiado. Inicializa el archivo de configuración de arranque - copias sobre ``config.boot.default`` si no hay configuración Uso del ancho de banda de la interfaz Rendimiento de la interfaz Nombres de interfaz Kernel inicia Systemd ``/lib/systemd/systemd`` Inicie sesión en VyOS y ejecute este comando para mostrar la configuración de su interfaz. Supervisar comando Supervisión Monta la partición ``/boot`` Descubrimiento de vecinos Ahora, para actualizar una dirección MAC en la configuración, ejecute este comando especificando el nombre de la interfaz y la dirección MAC que desea. Una forma de solucionar este problema **tomar el control de las direcciones MAC** es: Descubrimiento de enrutadores Ejecuta el script de configuración previa, si hay uno ``/config/scripts/vyos-preconfig-bootup.script`` Ejecuta ``telinit q`` para decirle al sistema de inicio que vuelva a cargar ``/etc/inittab`` Ejecuta la migración de configuración, si la configuración es para una versión anterior de VyOS Envía solicitudes de eco ICMP al host de destino. Hay múltiples opciones para hacer ping, inkl. Soporte VRF. Hay varias opciones disponibles para cambiar la salida de la pantalla. Presione `h` para invocar el sistema de ayuda integrado. Para salir, simplemente presione `q` y volverá al símbolo del sistema de VyOS. A veces las cosas se rompen o no funcionan como se esperaba. Esta sección describe varias herramientas de solución de problemas proporcionadas por VyOS que pueden ayudar cuando algo sale mal. A veces es necesario borrar contadores o estadísticas para solucionar mejor los problemas. Inicia FRR_ - sucesor de `GNU Zebra`_ y Quagga_ Inicia ``rl-system`` y ``firewall`` Información del sistema Systemd carga el archivo de servicio de VyOS ``/lib/systemd/system/vyos-router.service`` Tome nota de las direcciones MAC. Terminal/Consola El BIOS carga Grub (o isolinux para el Live CD) El comando ``accept`` abre un servidor iperf de escucha en el puerto TCP 5001 El comando ``iniciar`` se conecta a ese servidor para realizar la prueba. El comando ``monitor de comando`` le permite ejecutar repetidamente un comando para ver una salida actualizada continuamente. El comando se ejecuta y emite cada 2 segundos, lo que le permite monitorear la salida continuamente sin tener que volver a ejecutar el comando. Esto puede ser útil para seguir la formación de adyacencia de enrutamiento. Luego, el archivo de configuración de arranque se aplica mediante ``/opt/vyatta/sbin/vyatta-boot-config-loader/opt/vyatta/etc/config/config.boot`` El comando sigue la misma lógica que el comando ``set`` en el modo de configuración. El script del cargador de configuración escribe entradas de registro en ``/var/log/vyatta-config-loader.log`` La salida consume la pantalla y reemplazará su símbolo del sistema. El archivo de servicio inicia el script de inicio del enrutador VyOS ``/usr/libexec/vyos/init/vyos-router`` - esto es parte del paquete vyatta-cfg_ Debian Estos son los pasos de arranque para VyOS 1.2 Para hacer esto, use el comando ``clear`` en el modo Operacional. Para monitorear el tráfico de la interfaz, emita :code:`monitor de interfaz de tráfico<name> comando `, reemplazando `<name> ` con la interfaz elegida. Para dejar de monitorear, presione `Ctrl-c` y regresará al símbolo del sistema de VyOS. Para observar el ancho de banda de la red entre dos nodos, se usa el comando ``monitor de ancho de banda-prueba`` para ejecutar iperf. Traza la ruta al objetivo. Volcados de tráfico El tráfico se puede filtrar y guardar. Solución de problemas La verificación de la conectividad se puede realizar con los comandos familiares `ping` y `traceroute`. Se muestran las opciones para cada uno (las opciones para cada comando se mostraron utilizando la ayuda integrada como se describe en la sección :ref:`cli` y se omiten en el resultado aquí): VyOS 1.2 utiliza `Debian Jessie`_ como sistema operativo base de Linux. Jessie fue la primera versión de Debian que utiliza systemd_ como sistema de inicio predeterminado. VyOS presenta varias herramientas de monitoreo. Borrará la pantalla y le mostrará la salida de ``mostrar interfaces`` cada 2 segundos. mostrar lo siguiente: para borrar contadores en conjuntos de reglas de firewall o reglas individuales para borrar contadores de interfaz para borrar la salida de la consola para obtener una vista rápida del ancho de banda utilizado de una interfaz, utilice el comando ``supervisar ancho de banda`` 