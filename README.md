# spherical-robot-motion-control
 motion planning and controll of a spherical  robot using Simscape Multibody
Our robot is a sphere that contains a pendulum and a sliding mass. Moving these two objects leads to a change in the center of mass of the robot along two different axes, which also leads to the movement of the robot.

The project consists of three subsystems:

1. Robot simulation: This subsystem is responsible for simulating the dynamics of the robot and doing the necessary calculations to get the desired state vector.

2. Sliding mode controller: This subsystem controls pitch and roll angles of the robot. Controlling pitch angle allows us to control the forward movement of the robot, and controlling roll angle allows us to turn the robot.

3. Motion controller: Another layer of controllers that generates the commands needed to follow a desired path.

To run the project, please open simulationfile.slx in Matlab Simulink. Choose the type of path you want (linear or circular) and change the parameters of the path.
