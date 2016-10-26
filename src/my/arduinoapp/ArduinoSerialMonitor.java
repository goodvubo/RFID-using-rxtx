/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.arduinoapp;

import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.io.IOException;

/**
 *
 * @author VUBO
 */
public class ArduinoSerialMonitor {

    SerialPort serialPort = null;
    OutputStream out = null;

    private static final String PORT_NAMES[] = {"/dev/tty.usbmodem", "/dev/usbdev", "/dev/tty", "/dev/serial", "COM3"};

    //   private String appName = "my.arduinoapp.ArduinoSerialMonitor";
//    private BufferedReader input;
//    private OutputStream output;

    private static final int TIME_OUT = 1000; // Port open timeout
    private static final int DATA_RATE = 9600; // Arduino serial port

    public SerialPort initialize() {
        try {
            CommPortIdentifier portId = null;
            Enumeration portEnum = CommPortIdentifier.getPortIdentifiers();

            // Enumerate system ports and try connecting to Arduino over each
            //
            System.out.println("Trying:");
            while (portId == null && portEnum.hasMoreElements()) {
                // Iterate through your host computer's serial port IDs
                //
                CommPortIdentifier currPortId = (CommPortIdentifier) portEnum.nextElement();
                System.out.println("   port" + currPortId.getName());
                for (String portName : PORT_NAMES) {
                    if (currPortId.getName().equals(portName)
                            || currPortId.getName().startsWith(portName)) {

                        // Try to connect to the Arduino on this port
                        //
                        // Open serial port
//                        serialPort = (SerialPort) currPortId.open(appName, TIME_OUT);
                        serialPort = (SerialPort) currPortId.open("my.arduinoapp.ArduinoSerialMonitor", TIME_OUT);
                        portId = currPortId;
//                        curr_port = currPortId.getName();
//                        curr_port = serialPort.getName();
                        System.out.println("Connected on port" + currPortId.getName());
                        break;
                    }
                }
            }

            if (portId == null || serialPort == null) {
                System.out.println("Oops... Could not connect to Arduino");

            }

            // set port parameters
            if (serialPort != null) {
                serialPort.setSerialPortParams(DATA_RATE,
                        SerialPort.DATABITS_8,
                        SerialPort.STOPBITS_1,
                        SerialPort.PARITY_NONE);
            }

//            InputStream in = serialPort.getInputStream();
//            OutputStream out = serialPort.getOutputStream();
//            (new Thread(new SerialReader(in))).start();
//            (new Thread(new SerialWriter(out))).start();
            // add event listeners
//            serialPort.addEventListener(this);
//            serialPort.notifyOnDataAvailable(true);
            // Give the Arduino some time
            try {
                Thread.sleep(2000);
            } catch (InterruptedException ie) {
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return serialPort;
    }

    protected void sendData(String data) {
        try {
            System.out.println("Sending data: '" + data + "'");

            // open the streams and send the "y" character
            out = serialPort.getOutputStream();
            out.write(data.getBytes());
        } catch (Exception e) {
            System.err.println(e.toString());
            System.exit(0);
        }
    }
    //
    // This should be called when you stop using the port
    //
    public synchronized void close() {
        if (serialPort != null) {
            serialPort.removeEventListener();
            serialPort.close();
        }
    }

    //
    // Handle serial port event
    //
//    @Override
//    public synchronized void serialEvent(SerialPortEvent oEvent) {
//        //System.out.println("Event received: " + oEvent.toString());
//        try {
//            switch (oEvent.getEventType()) {
//                case SerialPortEvent.DATA_AVAILABLE:
//                    if (input == null) {
//                        input = new BufferedReader(
//                                new InputStreamReader(
//                                        serialPort.getInputStream()));
//                    }
//                    String inputLine = input.readLine();
//                    System.out.println(inputLine + " yo");
//                    break;
//
//                default:
//                    break;
//            }
//        } catch (Exception e) {
//            System.err.println(e.toString() + " yo");
//        }
//    }
    /**
     *
     */
//    public static class SerialReader implements Runnable {
//
//        InputStream in;
//
//        public SerialReader(InputStream in) {
//            this.in = in;
//        }
//
//        public void run() {
//            byte[] buffer = new byte[1024];
//            int len = -1;
//            try {
//                while ((len = this.in.read(buffer)) > -1) {
//                    System.out.print(new String(buffer, 0, len));
//                }
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//    }
    /**
     *
     */
//    public static class SerialWriter implements Runnable {
//
//        OutputStream out;
//
//        public SerialWriter(OutputStream out) {
//            this.out = out;
//        }
//
//        public void run() {
//            try {
//                int c = 0;
//                while ((c = System.in.read()) > -1) {
//                    this.out.write(c);
//                }
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//    }
//    public String Ech(String s) {
//        return s;
//    }
    public ArduinoSerialMonitor() {
        //appName = getClass().getName();
    }

//    public static void main(String[] args) throws Exception {
//        ArduinoSerialMonitor test = new ArduinoSerialMonitor();
//        if (test.initialize()) {
//            test.sendData("y");
//            try {
//                Thread.sleep(2000);
//            } catch (InterruptedException ie) {
//            }
//            test.sendData("n");
//            try {
//                Thread.sleep(2000);
//            } catch (InterruptedException ie) {
//            }
//            test.close();
//        }
//
//        // Wait 5 seconds then shutdown
//        try {
//            Thread.sleep(2000);
//        } catch (InterruptedException ie) {
//        }
//    }
}
