# px4_command 功能包
Send command to PX4 using Mavros package


# 功能包下载编译以及环境变量设置

1. 创建一个名为“off_ws”工作区间
  
    `mkdir -p ~/off_ws/src`
  
    `cd ~/off_ws/src`
  
    
    手动source，home下打开一个终端
    
    `gedit .bashrc`  
    
    在底下添加路径 `source /home/$(your computer name)/off_ws/devel/setup.bash` 

2. 下载 px4_command 功能包
    
    `cd ~/px4_ws/src`
	
    从github上面下载
    
    `git clone https://github.com/amov-lab/px4_command.git`
    
    添加远程库

    `git remote add origin_amov_e https://github.com/473867143/px4_command-1.git`

    查看远程库是否添加正确

    `git remote -v`

    抓取远程分之

    `git fetch origin_amov_e`

    切换到amov_e分之

    `git checkout origin_amov_e/amov_e`
 
    编译
    
    `cd ..`
    
    `catkin_make`

3.  添加px4 Firmware环境变量
    home下打开.bashrc文件，添加如下格式的路径变量

    `source ~/$(your path)/Firmware/Tools/setup_gazebo.bash ~/$(your path)/Firmware ~/$(your path)/Firmware/build/px4_sitl_default`
    `export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/$(your path)/Firmware`
    `export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/$(your path)/Firmware/Tools/sitl_gazebo`

# 仿真运行

进入到
    `cd ~/off_ws/src/px4_command/sh/sh_for_simulation`

运行
    `./sitl_gazebo_vtol.sh`

    第三个终端选择0和1，第四个终端如果相应的位置或者速度，第五个终端输入4解锁，0切换offboard。



