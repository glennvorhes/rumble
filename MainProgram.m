ipAddr = '192.168.0.100';
portNo = 7000;

% Clear everything that could conflict with establishing a UDP connection
% to listen for data. Once that is done, define the connection.

clear uConn received subjectState
close all
uConn = udpport('IPV4', 'LocalHost', ipAddr, 'LocalPort', portNo);

% The packetSize represents the number of bytes that are expected to be
% received on each package of data from the simulator.

packetSize = 92;

% Listen continuously for data over UDP and convert the data into a struct
% array from which the value of interest is extracted. Route the value of
% interest and take the appropriate action.

while 1
    
    if uConn.NumBytesAvailable >= packetSize

        received = uint8(read(uConn, packetSize, 'uint8'));        
        subjectState = returnProcessedData(received);
        
        % Route actions based on state6 which in this example represents
        % the road offset position which can be used to determine how close
        % to the edge of the road is the user.
        
        actionMapper(subjectState.state6, 1);

    end

end