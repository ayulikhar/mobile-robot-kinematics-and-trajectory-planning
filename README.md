# mobile-robot-kinematics-and-trajectory-planning
MATLAB implementations of differential drive robot kinematics and polynomial trajectory planning (cubic &amp; quintic), including PTP and Continuous Trajectory methods with motion profile analysis.
🔹Overview
This repository contains MATLAB implementations of fundamental motion modeling and trajectory planning techniques for a differential drive mobile robot.

The project explores:
- Forward and inverse kinematics of mobile wheeled robots
- Cubic and quintic polynomial trajectory generation
- Point-to-Point (PTP) and Continuous Trajectory (CT) planning methods
- Position, velocity, and acceleration profile analysis

The goal of this project is to understand the mathematical foundations behind smooth robotic motion and kinematic modeling before implementing similar systems in ROS-based environments.

🔹 Kinematics Implementation
Forward Kinematics
Wheel velocities are mapped to the robot’s linear and angular velocities using standard differential drive equations.
This enables computation of:
- Robot position update
- Heading change
- Path tracing

Inverse Kinematics
Given desired linear and angular velocity, required wheel speeds are computed to achieve target motion.
This forms the mathematical basis for motion control in mobile robots.

🔹 Trajectory Planning
Cubic Polynomial Trajectory
- Smooth position and velocity profiles
- Acceleration discontinuity at boundaries

Quintic Polynomial Trajectory
- Smooth position, velocity, and acceleration
- Better suited for real robotic systems due to continuous acceleration and reduced jerk

PTP vs CT Methods
- Point-to-Point (PTP): Motion defined between discrete boundary states
- Continuous Trajectory (CT): Smooth trajectory generation over multiple waypoints
- Graphical analysis compares motion smoothness and constraint satisfaction.

🔹 Results

The simulations generate:
- Position vs Time curves
- Velocity vs Time curves
- Acceleration vs Time curves
- Comparative motion behavior between cubic and quintic trajectories
These plots help analyze smoothness, boundary constraints, and motion feasibility.

🔹 Key Takeaways
- Quintic polynomials ensure smoother acceleration profiles than cubic polynomials
- Boundary condition constraints significantly affect motion smoothness
- Differential drive robots are kinematically constrained systems

PTP and CT methods serve different trajectory planning scenarios

🔹 Future Work
- Integrate trajectory planning with ROS2-based mobile robot simulation
- Implement trajectory tracking controller
- Extend to obstacle-aware motion planning
