function actionMapper(lanePosition, a)
        
    clc

    activateLeft = (lanePosition >= 8.1) && (lanePosition <= 8.2);
    activateRight = (lanePosition >= 9.5) && (lanePosition <= 9.6);

    if activateLeft
        
        % Turn on pins controlling motors on the left side.

        fprintf('Vibration on Left Side\n');

        writeDigitalPin(a, 'D7', 1);
        writeDigitalPin(a, 'D8', 1);

    elseif activateRight
        
        % Turn on pins controlling motors on the right side.

        fprintf('Vibration on Right Side\n');

        writeDigitalPin(a, 'D12', 1);
        writeDigitalPin(a, 'D13', 1);

    else
        
        % Turn off all pins controlling the motors

        fprintf('No Vibration\n');

        writeDigitalPin(a, 'D7', 0);
        writeDigitalPin(a, 'D8', 0);
        writeDigitalPin(a, 'D12', 0);
        writeDigitalPin(a, 'D13', 0);

    end

end