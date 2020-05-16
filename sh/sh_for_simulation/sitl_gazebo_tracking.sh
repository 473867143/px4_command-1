##sitl_gazebo
gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 2; cd ~/Firmware;no_sim=1 make px4_sitl gazebo_typhoon_h480 -j4; exec bash"' \
--tab -e 'bash -c "sleep 2; cd ~/Firmware;roslaunch gazebo_ros empty_world.launch world_name:=$(pwd)/Tools/sitl_gazebo/worlds/typhoon_h480.world; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch mavros px4.launch fcu_url:="udp://:14540@127.0.0.1:14557"; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch px4_command px4_pos_controller.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch px4_command target_tracking.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun px4_command set_mode; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun fv_tracking tracker_kcf; exec bash"' \

