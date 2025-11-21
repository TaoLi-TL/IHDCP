inputDir = 'input_images';  
outputDir = 'output_images';  

if ~exist(outputDir, 'dir')
    mkdir(outputDir);
end
file_list = dir(fullfile(inputDir, '*.*'));  
image_exts = {'.jpg', '.JPG', '.png', '.bmp', '.jpeg', '.tiff'};
file_list = file_list(arrayfun(@(f) any(endsWith(f.name, image_exts, 'IgnoreCase', true)), file_list));

for i = 1:length(file_list)
    filename = fullfile(inputDir, file_list(i).name);
    fprintf('Processing: %s\n', filename);
    sourcePic = double(imread(filename));
    J = dehazing(sourcePic);
    [~, baseFileName, ~] = fileparts(filename);
    outputFilename = fullfile(outputDir, [baseFileName, '_processed.png']);
    imwrite(J, outputFilename);

    fprintf('Saved: %s\n', outputFilename);
end