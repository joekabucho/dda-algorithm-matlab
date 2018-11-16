

function dda(x1, y1, x2, y2) 
x1 = input('Give the centre x1 coord : ');     
x2 = input('Give the centre x2 coord : ');      
y1 = input('Give the radius y1 coord : '); 
y2 = input('Give the radius y2 coord : '); 
close all, grid on ,hold on;axis([-10 10 -10 10]);


    dx = abs(x2 - x1);
    dy = abs(y2 - y1);
    
    if dx == 0 && dy == 0
        return;
    end
    
    signX = sign(x2-x1);
    signY = sign(y2-y1);

    if dx >= dy
        pixel = dx;
    else
        pixel = dy;
    end

    dx = dx/pixel;
    dy = dy/pixel;

    x = x1;
    y = y1;

    i = 0;
    
    xActual = round(x);
    yActual = round(y);
    
    while i <= pixel
        % do something with that pixel
        plot(xActual,yActual,'b*');
        
        x = x + dx*signX;
        y = y + dy*signY;
        i = i + 1;
        
        xActual = round(x);
        yActual = round(y);
    end
end
