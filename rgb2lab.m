function lab= rgb2lab( im,wp )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if ~exist('wp', 'var'), wp = 'D65'; end
    
    cform = makecform('srgb2lab',...
                      'adaptedwhitepoint', whitepoint(wp));    
    if strcmp(class(im),'uint8')
        im = double(im)/255;
    end
    lab = applycform(im, cform);


end

