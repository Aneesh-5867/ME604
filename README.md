# ME604 : Course Project
## Tut 3- MATLAB assignment
---
### PS
You should use the robotics toolbox for MATLAB for this assignment. Information
on how to obtain and install the toolbox is provided below.

In this assignment you will model the ABB IRB1600-8/1.45 robot and solve for the
position kinematics. In subsequent assignments, you will implement controllers to
move the robot along desired trajectories. Necessary information about the robot is
available in the attached datasheet.

a. Set up DH-frames and obtain the DH parameters for the robot. Write a
function to obtain the transformation matrix representing the end-effector
frame. The input to the function should be a 1X6 vector of joint angles with
the desired transformation matrix as the output.

b. Model the robot in MATLAB using the Robotics toolbox. Verify the output of
the function you wrote in (a) by comparing with the output of the function
fkine() in the robotics toolbox.

c. Your submission should include your analysis, MATLAB codes and a
README file explaining how to use your code.
Obtaining the robotics toolbox:

The robotics toolbox can be obtained from
http://petercorke.com/wordpress/toolboxes/robotics-toolbox. 
A manual for the same is available at http://petercorke.com/wordpress/?ddownload=343. 

---
The forward kinematics function is fdkine.m\
First run the main_190100125.m code\
Then initalise q= [] and run T= fdkine(q)\
Compare with bot.fkine(q)

## Tut 5 - MATLAB assignment
---
Analytically, obtain all the solutions to the inverse kinematics
problem for the ABB robot, whose forward kinematic solution you computed earlier.
Solve the inverse kinematics using the ikine function of the Robotics Toolbox, and
compare your solutions. You may have to try different initial guesses to compare with all
your solutions.


## Tut 6 - MATLAB assignment
---
a. Write a function to generate a joint-space trajectory to move the robot such that the
end-effector is moved from its initial configuration to a desired goal position and
orientation. Your trajectory should take into consideration any peak joint velocities and
joint accelerations, and the robot should be at rest at the start and goal positions.

b. Set up your robot for dynamic simulations:

* Inertia Matrices: Assume the robot to consist of hollow uniform rectangular
beams made out of metal (steel, aluminum, iron etc.).

* Gear-ratios: Include gearboxes with following gear ratios [-100 100 100 -60 -60
40]:1 in your model.

* Motor inertia: Motor inertial can be assumed to be 50% of link inertia when
transformed to the arm side, i.e, after the gear-box.

* Peak motor torques: Assume available motor torques to be [5 10 5 .6 .6 .5] Nm.

c. You should now be able to run dynamic simulations in the robotics toolbox. Perform a
simulation where the robot moves under the action of gravity, and compute the total
energy (kinetic + potential). Verify that the total energy remains constant. (Set all
friction/damping related parameters to zero).
