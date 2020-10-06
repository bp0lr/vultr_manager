# vultr_manager

### general description
vultr_manager is a tiny manager/wrapper for vultr(https://www.vultr.com) vps creation.
I have created this manager to be able to deploy a vps with all my tools in less than 2 minutes.


### why vultr
vultr is a cheap vps provider.
I like it more than digital ocean. That all.


### Instalation

```
First, you need to install the vultr client created by JamesClonk in https://github.com/JamesClonk/vultr

second, go to your vultr control panel and get your API key.

export VULTR_API_KEY="####################################################"
you can add this line to .bashrc yo make it permanently.

last, if you want, you can move vultr_manager to your /bin folder for more simplicity.
```


### What we can do

We have 3 options:

```
[root@DarkStar] #vultr_manager list

this will list your current vps.
```

```
[root@DarkStar] #vultr_manager create your_vps_name

this will create a new vps (Debian 10 / Amsterdam / 5usd/mth) and run the bash script "install_software.sh" on the new host.
Feel free to edit the source code to change this options.
```

```
[root@DarkStar] #vultr_manager delete your_vps_name

this will delete the vps with the given name.
```


### Install_software.sh

Be free to edit this file adding your files or removing what you need.
My version installs golang in his last version and some tools used for bug bounty.


### why create a wrapper

the job from JamesClonk was amazing, but I want to be able to create / delete my vps just using the server name.
On the other hand, I need also to be able to install my tools with no extra work.


### output
```
┌─[✗]─[root@DarkStar]─[/opt/bp0/vultr_manager]
└──╼ #time ./vultr_manager create bb11
[+] Creating server...
Virtual machine created

SUBID           NAME    DCID    VPSPLANID       OSID
41076877        bb11    7       201             352
[+] Waiting the machine goes up...
[+] Machine was created: 41076877 / 136.244.99.155
[+] Installing stuff...
Adding bb11 to /etc/hosts...
bb11 was added succesfully:
136.244.99.155  bb11
##############################################################
Instalation complete!
##############################################################

real    2m44.929s
user    0m0.653s
sys     0m0.460s
````
