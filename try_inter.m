clear all;
time_period =[0 45e-3];
initial = [0, 0];
[t,y] = ode45(@myode45function, time_period, initial);
plot(t,y(:,1),'-o'), title('Barrel position in m')
figure 
plot(t,y(:,2),'-o'), title('Velocity m/sec')
figure 
plot(y(:,1),y(:,2),'-o'), title('velocity vs barrel length')
xlabel('Position in barrel (m)')
ylabel('Velocity (m/s)')