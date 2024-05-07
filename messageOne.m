% Define variables n and e, where n is the product of two large primes and e is the public exponent
n = 2407;  
e = 57;  

% Encrypted message to be decrypted
c = [2050 2296 640 479 640 2377 1274 479 640 2377 2395 194 476 2377 2395 602 2014 640 1205 2377 476 1888 2377 640 1142 1421 479 602 2014 2395 586 476 1142 749 2377 476 1142 640 2377 2395 2296 1274 2395 2377 194 586 1285 1285 2377 2014 479 640 1904 640 1142 2395 2377 602 476 540 479 2377 1205 586 1205 2395 640 479 2377 1888 479 476 2011 2377 479 640 1274 1741 586 1142 1019 2377 602 476 540 479 2377 1741 586 1274 479 602 2377];  

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
textstring = 'Message one:';  

% Decrypt the encrypted message using the obtained private key  
z = decryptString (n, d, c);  

% Display the presentation text and the decrypted message  
disp (textstring);  
disp (z);  
