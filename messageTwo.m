% Define variables n and e, where n is the product of two large primes and e is the public exponent  
n = 7663;  
e = 89;  

% Encrypted message to be decrypted  
c = [2980 3647 1145 7023 4485 3647 7130 7023 6069 5363 2980 6069 7023 3911 2971 5943 5943 7023 1889 5561 7130 454 7130 3647 6069 7023 3243 4485 2957 5561 7023 5465 4485 454 7130 5561 3647 1883 7130 3647 6069 656 7023 6689 2206 5561 2957 4580 7130 7023 6238 4580 5363 3647 7130 7023 6238 4580 5363 3647 7130 2971 5561 1603];  

% Factorize n to obtain its prime factors p and qFactorize n to obtain its prime factors p and q 
g = factor(n);  
p = g(1);  
q = g(2);  

% Calculate Euler's totient function of n  
x = ((p - 1) * (q - 1));  

% Calculate n again using p and q
n = (p * q);  

% Calculate the private exponent d
d = mod (e, x);  

% Loop to find the private exponent d such that (d * e) % x = 1  
for i = 1:n  
if mod ((i*e) , x) ==1  
d = i;  
end  
end  

% Define presentation text string 
textstring = 'Message Two:';  

% Decrypt the encrypted message using the obtained private key  
z = decryptString (n, d, c);  

% Display the presentation text and the decrypted message  
disp (textstring);  
disp (z);  
