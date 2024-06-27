execute_process(COMMAND "C:/Windows/System32/my_ws/build/turtlebot3_teleop/catkin_generated/python_distutils_install.bat" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(C:/Windows/System32/my_ws/build/turtlebot3_teleop/catkin_generated/python_distutils_install.bat) returned error code ")
endif()
