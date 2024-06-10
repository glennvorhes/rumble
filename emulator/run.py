import DataStreamer
import os






if __name__ == '__main__':
#    test_f_path = os.path.join(os.path.dirname(__file__), 'testdata', 'SamplePath.csv')
#    test_f_path = os.path.join(os.path.dirname(__file__), 'testdata', 'WithOffsets.csv')
    test_f_path = os.path.join(os.path.dirname(__file__), 'testdata', 'SamplePathRumble.csv')


    print(os.path.isfile(test_f_path))
    print(test_f_path)
    print(DataStreamer.simulateStream)
#    fPath = sys.argv[1]
#    ipAddr = sys.argv[2]
#    portNo = int(sys.argv[3])

    DataStreamer.simulateStream(test_f_path, 'localhost', 7000, debug=True)

