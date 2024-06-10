resetConnection = false;
connectionActive = false;

clc

if exist('a', 'var')

    try
        
        writeDigitalPin(a, 'D9', 1);
        writeDigitalPin(a, 'D9', 0);

        connectionActive = true;

        if resetConnection
            
            clear a
        
        else
            
            fprintf('Connection to Arduino already active\n');

        end

    catch

        clear a

    end
    
end

if ~connectionActive || resetConnection

    try

        a = arduino();
        fprintf('Connection to Arduino established\n');    

    catch
    
        fprintf('Failed to establish Arduino connection\n');     
    
    end

end

clear ans connectionActive resetConnection