% In the end, I will concatenate the three parts of the word
% into a single character array
% I will build each part of the word (sign, exponent, mantissa)
% separately
frac = 0.08
% The sign of the number is positive
sign_num = '0'
% NOTE: '0' is in quotes because it is not the number zero, it
% is the alpha-numeric character 0.
% Remember the process:
% 1) convert the decimal to binary
% a) keep 11 (10 stored + 1) significant figures
% 2) "normalize" the binary number (like scientific
% notation)
% a) as part of this, we identify the exponent
% 3) store most of the mantissa
% In the above process, we keep all the leading zeros and then
% eliminate during the normalization process, at which time we
% simultaneously determine the (unbiased)
% exponent). I could do something similar here, but I would
% rather "ignore" the leading zeros, and count up the exponent
% as we ignore each leading zero.
% Because 1) the normalized number must be of the format
% 1.ABCDE, and 2) there was no whole part to this number, we
% already know that the exponent will be at least -1.
exp = -1
% Start the process (Please include the results of any
% assignment statements at the end of the assignment statement)
% NOTE: this is the ONLY time you are allowed to put comments at
% the end of a line of code
frac = frac * 2 % frac = 0.16
exp = -2
% The next line is indented because what it does is dictated by
% the result of the previous line of code – this will make it
% easier to integrate the command sets later
frac = frac * 2 % frac = 0.32
exp = -3
frac = frac * 2 % frac = 0.64
exp = -4
frac = frac * 2 % frac = 1.28
mant = '1' % mant = '1'
frac = 0.28
frac = frac * 2 % frac = 0.56
mant = [mant, '0'] % mant = '10'
frac = frac * 2 % frac = 1.12
mant = [mant, '1'] % mant = '101'
frac = 0.12
frac = frac * 2 % frac = 0.24
mant = [mant, '0'] % mant = '1010'
frac = frac * 2 % frac = 0.48
mant = [mant, '0'] % mant = '10100'
frac = frac * 2 % frac = 0.96
mant = [mant, '0'] % mant = '101000'
frac = frac * 2 % frac = 1.92
mant = [mant, '1'] % mant = '1010001'
frac = 0.92
frac = frac * 2 % frac = 1.84
mant = [mant, '1'] % mant = '10100011'
frac = 0.84
frac = frac * 2 % frac = 1.68
mant = [mant, '1'] % mant = '101000111'
frac = 0.68
frac = frac * 2 % frac = 1.36
mant = [mant, '1'] % mant = '1010001111'
frac = 0.36
frac = frac * 2 % frac = 0.72
mant = [mant, '0'] % mant = '10100011110'
% A manual count tells me that that is the eleven digits I need.
% Offset the exponent
bias_exp = exp + 15 % bias_exp = 11
% Convert the exponent to binary – I did it manually. You may
% use dec2bin. Note that it must take up 5 digits.
% Do help dec2bin and actually read it.
bin_exp = '01011'
% Remember, the '1' at the front of the mantissa is implied, not
% stored, so we remove it.
% The following line is the character array equivalent of
% vec(3) = [ ] to delete the third element of a vector
mant(1) = ''
% Assemble the word
word = [sign_num, bin_exp, mant] % word = '0010010100011110'
% I underlined the exponent part only so that the word is easier
% to read