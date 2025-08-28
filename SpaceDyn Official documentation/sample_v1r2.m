%
% SAMPLE	A Sample Program for Spacedyn Toolbox.
%
%
% 1998.9.17  : originally written by K.FUJISHIMA
% 1998.10.23 : change commands to use "f_dyn_rk.m"
% 1999.10.7  : modified to meet the version 1
% 2006.7.20  : modified to meet the version 1.2
%
% 1998 (C) Space Robotics Lab, Tohoku Univ, Japan.
%

global Qi J_type BB SS SE S0
global cc c0 ce
global m0 inertia0 m inertia mass
global d_time
global Qe
global Gravity
global num_q Ez

% Unit vector in z-axis
Ez = [0;0;1];

% Link Parameters

BB = [ 0 1 2 0 4 5 ];

SS = [ -1  1  0  0  0  0;
        0 -1  1  0  0  0;
        0  0 -1  0  0  0;
        0  0  0 -1  1  0;
        0  0  0  0 -1  1;
        0  0  0  0  0 -1 ];

S0 = [ 1 0 0 1 0 0 ];

SE = [ 0 0 1 0 0 1 ];

J_type = [ 'R' 'R' 'P' 'R' 'R' 'P' ];

c0 = [ 0 0 0  0 0 0;
       1 0 0 -1 0 0;
       0 0 0  0 0 0 ];

m0 = 100;

inertia0 = [ 10  0  0;
              0 10  0;
              0  0 10 ];

m = [ 10 10 10 10 10 10 ];

mass = sum(m) + m0;

Qi = [ -pi/2 pi/2 0 pi/2 pi/2 0;
           0    0 0    0    0 0;
           0    0 0    0    0 0 ];

inertia = [  1 0   0   1   0 0   1   0 0  1 0   0   1   0 0   1   0 0;
             0 1   0   0 0.1 0   0 0.1 0  0 1   0   0 0.1 0   0 0.1 0;
             0 0 0.1   0   0 1   0   0 1  0 0 0.1   0   0 1   0   0 1 ];

ce = [ 0 0   0 0 0   0;
       0 0 0.5 0 0 0.5;
       0 0   0 0 0   0 ];

Qe = [ 0 0    0 0 0    0;
       0 0    0 0 0    0;
       0 0 pi/2 0 0 pi/2];

cc = zeros(3,6,6);

cc(:,1,1) = [ 0 0 -0.5 ]';
cc(:,2,2) = [ 0 0 -0.5 ]';
cc(:,3,3) = [ 0 0 -0.5 ]';
cc(:,4,4) = [ 0 0 -0.5 ]';
cc(:,5,5) = [ 0 0 -0.5 ]';
cc(:,6,6) = [ 0 0 -0.5 ]';
cc(:,1,2) = [ 0 0 0.5 ]';
cc(:,2,3) = [ 0 0 0.5 ]';
cc(:,4,5) = [ 0 0 0.5 ]';
cc(:,5,6) = [ 0 0 0.5 ]';

% Initialize variables

q   = zeros(6,1);
qd  = zeros(6,1);
qdd = zeros(6,1);

v0  = [ 0 0 0 ]';
w0  = [ 0 0 0 ]';
vd0 = [ 0 0 0 ]';
wd0 = [ 0 0 0 ]';

vv = zeros(3,6);
ww = zeros(3,6);
vd = zeros(3,6);
wd = zeros(3,6);

R0 = [ 0 0 0 ]';
Q0 = [ 0 0 0 ]';
A0 = eye(3,3);

Fe = zeros(3,6);
Te = zeros(3,6);
F0 = [ 0 0 0 ]';
T0 = [ 0 0 0 ]';

tau = zeros(6,1);
d_time = 0.01;
Gravity = [ 0 0 0 ]';

desired_q = [ 0.3 0.2 0.1 0.6 0.5 0.4 ]';
gain_spring = 10;
gain_dumper = 10;

% Number of links
num_q = length( q );


%%% Simulation Loop start

for time = 0:d_time:20,

        time

        tau = zeros(6,1);
        tau(1:6,1) = gain_spring.*( desired_q - q ) - gain_dumper.*qd;
        
    [ R0, A0, v0, w0, q, qd ] = f_dyn_rk2( R0, A0, v0, w0, q, qd, F0, T0, Fe, Te, tau );
	figure(1);
	hold on;
	plot(time,q(1),'r-');
	plot(time,q(2),'b-');
	plot(time,q(3),'y-');
	plot(time,q(4),'m-');
	plot(time,q(5),'c-');
	plot(time,q(6),'g-');


end



%%% EOF


