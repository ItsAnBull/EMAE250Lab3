function word = ZhouK_Lab3(num)

% based on the sign of the input, set the 16th letter
if num > 0
    sign_num = '0';
else
    sign_num = '1';
end

% isolate the whole part of the input
whole = floor(abs(num));

% isolate the fractional part of the input
frac = abs(num) - whole;

% initialize the mantissa
mant = '';

% Case 1: there is a whole number component
if whole > 0

    % the mantissa becomes the binary of the whole part    
    mant = [mant, dec2bin(whole)];

    % the length of the mantissa counter is equal to the length of the
    % mantissa
    length = size(mant);
    length = length(2);

    % the exponent is equal to the length of the mantissa minus 1
    exp = length - 1;

% Case 2: There is no whole number component
else

    % the length of the mantissa counter is equal to 0
    length = 0;
    
    % the exponent is initialized at -1
    exp = -1;
end


% run the loop only while the mantissa has less than 24 characters
while length < 24
    
    % multiply the fractional part by 2 as per the algorithm
    frac = frac * 2;
    
    % Case 1: if the fractional part is greater than or equal to 1 after it
    % is doubled, then append 1 to the mantissa
    if frac >= 1

        % append 1 to the mantissa
        mant = [mant, '1'];

        % subtract 1 from the fractional part
        frac = frac - 1;

        % increase the length counter of the mantissa by 1
        length = length + 1;
     
    % Cases 2 and 3 proceed with the fact that frac < 0, and thus a zero
    % would be appended:

    % Case 2: if the exponent has been placed, then add the zero to the
    % mantsisa
    elseif length ~= 0

        % append a zero to the end of the mantissa
        mant = [mant, '0'];

        % increase the length counter of the mantissa by 1
        length = length + 1;  

    % Case 3: if the exponent has not yet been placed, then decrement
    % the exponent counter and continue to search for a 1 to place down the
    % exponent at
    else
        
        % decrement the exponent by 1
        exp = exp - 1;

    end


end

% the biased exponent is equal to the exponent plus the offset (127)
biased_exp = exp + 127;

% calculate the binary of the biased exponent
bin_exp = dec2bin(biased_exp,8);

% trim off the implied 1 from the mantissa
mant(1) = '';

% formulate the final answer, with spaces to separate the letters
% representing the sign, binary exponent, and mantissa
word = [sign_num, ' ', bin_exp, ' ', mant];




