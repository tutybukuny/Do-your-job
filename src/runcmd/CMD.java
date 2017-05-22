/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package runcmd;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;

/**
 *
 * @author tutyb
 */
public class CMD {

    public static void main(String[] args) throws InterruptedException, IOException {
//        try {
//            
//            String[] command = {"cmd.exe", "/C", "Start", "dir"};
//            Process p = Runtime.getRuntime().exec(command);
//            
//        } catch (IOException e) {
//        }

        Runtime rt = Runtime.getRuntime();
//        String[] commands = {"cmd.exe", "/C", "perl conlleval.pl -l -d \"\\t\" < 1gram/outputv2t1.txt > aaaa.txt"};
        Process proc = rt.exec("perl conlleval.pl -l -d \"\\t\" < 1gram/outputv2t1.txt > aaaa.txt");
//        Process proc = rt.exec(commands);

        BufferedReader stdInput = new BufferedReader(new InputStreamReader(proc.getInputStream()));

// read the output from the command
        System.out.println("Here is the standard output of the command:\n");
        String s = null;
        while ((s = stdInput.readLine()) != null) {
            System.out.println(s);
        }
    }

}
