%Track that Rat for Colloquium 

% open video
vid = VideoReader('TrackthatRat.m4v');

%select baseline frames from video
baselineFrames = read(vid, [1, 300]); %no rat on video
ratFrames = read(vid, [700, 1000]);

frameNum = 300; %rat shows up at 300
imshow(ratFrames(:, :, :, frameNum));

upperBound = 250;
lowerBound = 200;

for i = 1:300
    imshow(baselineFrames(:,:,:, 1))
end

for i = 1:300
    imshow(ratFrames(lowerBound:upperBound,:,:, i))
end

imtool(ratFrames(:,:,:, frameNum));
% 200-250 encompasses the track



x = imtool(ratFrames((lowerBound:upperBound), :, :, frameNum));


for i = 700:1000
    %subtract ratFrames from baselineFrames
    %if RBG values for pixelFamilyRight = ratFrames - baselineFrames =
    %DIFFERENT, then mark rat prescence as YES (1)
end

%% 10/4/23
% create a vector
Toy = zeros(1,26); 
Toy(15) = 1; %index the 15th value of the vector, 1 is the rat

for idx = 1:length(Toy)
    rat = Toy(idx);
    if rat ==1
        %code
    end
end


