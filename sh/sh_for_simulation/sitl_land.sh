##sitl_gazebo
gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch px4 landpad.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch px4_command px4_pos_controller.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun px4_command landpad; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun px4_command set_mode; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch ros_vision ar_det_landpad.launch; exec bash"' \

