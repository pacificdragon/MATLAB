N=64; % Define the number of samples
n=-(N/2):((N/2)-1); % Define a vector of sample numbers
x=zeros(1,N); % Define a vector of zeros
x((N/2)+1)=1; % Make the first sample to be 1 (i.e.at t=0)
subplot(211)
plot(n,x); % continuous time impulse signal
grid;
title('A continuous time Unit Impulse Signal');
xlabel('Sample Number');
ylabel('Amplitude');
subplot(212)
stem(n,x); % discrete time impulse signal
grid;
title('A discrete time Unit Impulse Signal');
xlabel('Sample Number');
ylabel('Amplitude');