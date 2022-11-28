function actionMapper(lanePosition, a)
        
    clc

    activateLeft = (lanePosition >= 8.1) && (lanePosition <= 8.2);
    activateRight = (lanePosition >= 9.5) && (lanePosition <= 9.6);

    if activateLeft
        
        % This must turn ON the pins (or keep the pins ON) that activate
        % the motors that simulate the left rumble strip.

        disp('Left Rumblestrip');

    elseif activateRight
        
        % This must turn ON the pins (or keep the pins ON) that activate
        % the motors that simulate the right rumble strip.

        disp('Right Rumblestrip');

    else
        
        % This must eventually turn off the motors via the Arduino by
        % turning OFF the corresponding pins.

        disp('No Rumblestrip');

    end

end