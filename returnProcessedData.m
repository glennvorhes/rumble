function res = returnProcessedData(received)

    simTime = typecast(received(1:4), 'single');

    xPos = typecast(received(9:12), 'single');
    yPos = typecast(received(13:16), 'single');
    zPos = typecast(received(17:20), 'single');

    speedVal = typecast(received(21:24), 'single');
    steerVal = typecast(received(29:32), 'single');
    gasPedalVal = typecast(received(33:36), 'single');
    brakePedalVal = typecast(received(37:40), 'single');
    
    state1 = typecast(received(41:44), 'single');
    state2 = typecast(received(45:48), 'single');
    state3 = typecast(received(49:52), 'single');
    state4 = typecast(received(53:56), 'single');
    state5 = typecast(received(57:60), 'single');
    state6 = typecast(received(61:64), 'single');

    rpm    = typecast(received(77:80), 'single');
    gear   = typecast(received(81:84), 'single');

    leftBlinker = typecast(received(85:88), 'single');
    rightBlinker = typecast(received(89:92), 'single');

    toRet = struct('time', simTime, 'xPos', xPos, 'yPos', yPos, ...
                   'zPos', zPos, 'speed', speedVal, 'steer', steerVal, ...
                   'gas', gasPedalVal, 'brake', brakePedalVal, ...
                   'rpm', rpm, 'gear', gear, ...
                   'leftBlinker', leftBlinker, ...
                   'rightBlinker', rightBlinker, ...
                   'state1', state1, 'state2', state2, ...
                   'state3', state3, 'state4', state4, ...
                   'state5', state5, 'state6', state6);

    res = toRet;

end