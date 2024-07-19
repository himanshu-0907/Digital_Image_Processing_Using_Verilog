clc;close all;
coe_file = 'D:\Image Processing Project\New coe files\new_threshold.coe';

% Open the .coe file for reading
fileID = fopen(coe_file, 'r');

% Read the lines from the file
filelines = textscan(fileID, '%s', 'Delimiter', '\n');
filelines = filelines{1};

% Close the file
fclose(fileID);

% Get the width and height from the file (you may need to adjust these)
width = 500;
height = 400;

% Create an empty matrix to store pixel values
pixel_array = zeros(height, width, 3, 'uint8');

% Start from the third line (ignoring header lines)
for i = 3:numel(filelines)
    line = filelines{i};
    
    % Parse the binary values from the line and convert them to integers
    r = bin2dec(line(1:8));
    g = bin2dec(line(9:16));
    b = bin2dec(line(17:24));
    
    % Determine the pixel's position in the image
    row = floor((i - 3) / width) + 1;
    col = mod(i - 3, width) + 1;
    
    % Set the pixel values in the pixel_array
    pixel_array(row, col, 1) = r;
    pixel_array(row, col, 2) = g;
    pixel_array(row, col, 3) = b;
end

% Create a new image from the pixel_array
newImage = uint8(pixel_array);

% Save the new image as a JPEG file
imwrite(newImage, 'D:\Image Processing Project\New images\new_threshold.jpg');

disp('DONE!');
