clc;
close all;
% Load the image
file = 'D:\Image Processing Project\New images\house.jpg'; % Path to your original image
image = imread(file);

% Get the size of the image
[height, width, ~] = size(image);

% Create or open the COE file for writing
%coeFileName = [file(1:end-4) '.coe']; % Remove the file extension and add .coe
coeFileName = 'D:\Image Processing Project\New coe files\house.coe';
coeFile = fopen(coeFileName, 'w');

% Write COE file header
fprintf(coeFile, 'MEMORY_INITIALIZATION_RADIX=2;\nMEMORY_INITIALIZATION_VECTOR=\n');

% Iterate through the image pixels
for h = 1:height
    for w = 1:width
        pixel = image(h, w, :); % Get RGB values of the pixel
        Rb = dec2bin(pixel(1), 8); % Convert to binary format with 8 bits
        Gb = dec2bin(pixel(2), 8);
        Bb = dec2bin(pixel(3), 8);
        pixelBinary = strcat(Rb, Gb, Bb);
        
        if h == height && w == width
            fprintf(coeFile, '%s;', pixelBinary);
        else
            fprintf(coeFile, '%s,\n', pixelBinary);
        end
    end
end

% Close the COE file
fclose(coeFile);

disp('DONE!');
