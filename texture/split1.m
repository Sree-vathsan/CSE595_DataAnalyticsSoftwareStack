img = imread('/Users/Raj/Documents/DASS proj/path-image-100.jpg');
bnw= rgb2gray(img);
% imshow(bnw);
row1 = 1;
row2 = 1;
col1 = 1;
col2 = 1;
fileID = fopen('/Users/Raj/Documents/DASS proj/texture_features.txt','w');
fprintf(fileID,'row1, row2, col1, col2, homogeneity, contrast, dissimilarity, entropy, mean\r\n');
for r = 1:16
        row1 = row2;
        row2 = (r)*256;

    for c = 1:16
        col2 = (c)*256;
        if c == 1
            col1 = 1;
        else
            col1 = col2 - 256;
        end
        
        %segment image
        im1 = bnw(row1:row2, col1:col2);
        glcm = graycomatrix(im1);
        
        %normalize segment
        [rows, cols] = size(glcm);
        norm = zeros(rows, cols);
        sum = 0;
        for i = 1 : rows
            for j = 1 : cols
            sum = sum + glcm(i, j);
            end;
        end;
        
        for i = 1 : rows
            for j = 1 : cols
            norm(i,j) = glcm(i, j)/sum;
            end;
        end;
        
        %Homogeneity, contrast, dissimilarity, entropy, mean
        homogeneity = 0;
        contrast = 0;
        dissimilarity = 0;
        entropy = 0;
        sum = 0;
        for i = 1 : rows
            for j = 1 : cols
                homogeneity = homogeneity + (norm(i, j)/(1+power((i-j),2)));
                contrast = contrast + (norm(i, j)*power((i-j),2));
                dissimilarity = dissimilarity + (norm(i, j)*abs(i-j));
                ent =  (norm(i, j)*((-1)*(log(norm(i,j)))));
                if ent >= 0
                     entropy = entropy + ent;
                end;
                sum = sum + norm(i, j);
            end;
        end;
        mean = sum /(rows*cols);
        fprintf(fileID,'%f, %f, %f, %f, %f, %f, %f, %f, %f\r\n',row1, row2, col1, col2, homogeneity, contrast, dissimilarity, entropy, mean);
    end    
end
fclose(fileID);
