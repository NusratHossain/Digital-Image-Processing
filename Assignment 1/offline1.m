% Image Conversion
Image = imread("sample.jpg");
orgImage = rgb2gray(Image);
% figure;
% imshow(orgImage);

% Mirror Image
[row, column] = size(orgImage);
flipedImage = uint8(zeros(row, column));

for i = 1: row
    for j = 1: column
        flipedImage(i, column-j+1) = orgImage(i, j);
    end
end
% figure;
% imshow(flipedImage);

% Merged Image
mergedImage = uint8(zeros(row, column + column));
[nrow, ncolumn] = size(mergedImage);

for i = 1: nrow
    for j = 1: ncolumn
        if(j <= column)
            mergedImage(i, j) = flipedImage(i,j);
        else
            mergedImage(i, j) = orgImage(i, j - column);
        end
    end
end
figure;
imshow(mergedImage);
imwrite(mergedImage, 'output.jpg');