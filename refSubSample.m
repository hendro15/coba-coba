function [ref] = refSubSample (deltaV, deltaU)

ref = (round((deltaV/2)-1)*deltaU + round(deltaU/2));

end