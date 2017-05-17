 clear();

% Initial data
k = 5;
T = 0.1;
epsilon = 0.1;
g_m = 1;

dta = [];
psi = [];

phi = [];

amplitude = [];



omega = 1.1:0.1:2;
w_1 = power(10,omega);
w=10;

for j = 1:length(w_1)
w = w_1(j);

simulation_time = 100 + 2*pi/w*50;
dt = 2*pi/(w*500);
n = 7;


amplitude(j) =k/(w^2*T^2-1) ;



psi(j) = -180;

end

amplitude = amplitude';
psi = psi';
w_1 = w_1';

data = [w_1, log10(w_1), amplitude, 20*log10(amplitude), psi];

%
%end
%write(path + dataFileName, dta);