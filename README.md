# Cyber Roulette
## introduce
Cyber Roulette is a game that has a playing method which is similar to Russian Roulette. In the game,you will play the role of an operations engineer.Once the server you maintaining was infected by a virus that was named "roulette". The virus stopped all available web services and simulated a revolver loaded with several bullets. Discharging the simulated revolver could clear the virus or destroy the whole server.After multiple methods were proven to be unable to clear the virus,you decided to log in the server to discharge the simulated revolver...
## installation
The game can only run on **Linux** now.The following steps show that how to install this game:
1. install **docker**
2. run following commands

```
git clone https://github.com/sudly/CyberRoulette.git
cd cyberRoulette
bin/install
```

## Tutorial
The following steps show that how to play this game.
1. Enter the root directory of the project(where the file README.md is located).**Unless otherwise specified,switch to the root directory before running the following commands.**
2. Run the command `bin/run -n <name> -p <port>` to construct a game instance.
    - In the command `bin/run -n <name> -p <port>`,the parameter `-n` is used to specify the name of the instance.**The name is the unique identifier of the instance**,you can run multiple instances at the same time,but the names of different instances must be different.
    - The parameter `-p` in the above command is used to specify the port that is occupied by the instance.**The instance needs to occupy one port to provide services.**
    - During the execution of the above command, **the current process will be blocked until the instance is terminated or the user presses** `ctrl+C`.If you want to run in non blocking mode,please use the command `bin/run -n <name> -p <port> -d`.
    - When starting an instance in non blocking mode, the logs will be saved to the 'logs' directory under the project root directory.
3. Run the command `bin/check -n <name>` to check the status of the instance(optional).
    - In the command `bin/check -n <name>`,the parameter `-n` is used to specify the name of the instance that will be checked.
    - The command will output something similar to   `name:<instance_name>,process:<status>,port:<port_info>`.`<instance_name>` refers to the name of the instance,`<status>` refers to the status of the instance.There are two types of instance states: `active` and `inactive`, where `active` indicates the instance is running and `inactive` indicates the instance is not running.`<port_info>` refers to the information on the port occupied by the instance.
    - You can run the command `bin/check -a` to check statuses of all running instances.
4. After starting the instance,use the browser to access the address`http://<host_ip>:<port>`.
    - In the URL `http://<host_ip>:<port>`,the part `<host_ip>` refers to **the IP address of the host where the instance process is located** (hereinafter referred to as the **host**).
    - The URL `http://<host_ip>:<port>` points to a login page.After entering the login page,you need to log in with the username `root` and the password `root` to continue.
    - After successful login, you will enter the terminal of a virtual host that **runs in an independent environment** on the host. You can enter various commands in the terminal like operating a real host. After entering the virtual host terminal, **enter 'roulette' and press enter to proceed to the next step**.
    - After entering `roulette`, follow the prompts to continue the process. **If there is a problem with the terminal, refresh the page once and wait for the login page to reappear to fix it**.
5. After starting the instance,you can run the command `bin/stop -n <name>` to stop the instance.
       - In the command `bin/stop -n <name>`,the parameter `-n` is used to specify the name of the instance which will be stopped.
       - You can also run the command `bin/stop -a` to stop all running instances.
## uninstallation
Enter the root directory of the project and run the command `bin/remove` to uninstall this game.
