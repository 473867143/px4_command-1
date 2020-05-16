##sitl_gazebo
gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch px4 mavros_posix_sitl.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch px4_command px4_pos_controller.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; rosrun px4_command move; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun px4_command set_mode; exec bash"' \

