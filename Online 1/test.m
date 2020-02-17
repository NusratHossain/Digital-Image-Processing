img = imread('Victim.png');
bg = imread('Back.jpg');
%imtool(img);

img = cat(3, img, img, img);
[row, col] = size(img);

for i = 1: row
    for j = 1: col
        if img(i,j) == 146
            img(i,j) = bg(i,j);
        end
    end
end

imwrite(img, 'Output.jpg');
figure;
imshow(img);
