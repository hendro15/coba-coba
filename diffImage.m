function [result] = diffImage(M, N, deltaV, deltaY)

  for k1=0:(M/(deltaV-1))
    for k2=0:(N/(deltaY-1))
      D(k1,k2) = Sref(k1,k2)-Sdes(k1,k2);
    end
  end
  
end