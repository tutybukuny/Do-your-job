/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tutyb
 */
public class TheStrongestLaziestCham {//tên hay mà, đừng đổi nhé :))

    private static PrintWriter training, lawTesting, fineTesting;
    private static final String newLine = "\r\n";
    static int count;

    public static void createTest(String version) {
        File file = new File("Folds" + version);
        for (int i = 1; i <= 5; i++) {
            try {
                count = 0;
                training = new PrintWriter("Specific Tests" + version + "\\Test" + i + "\\Train.txt", "UTF-8");
                lawTesting = new PrintWriter("Specific Tests" + version + "\\Test" + i + "\\lawTesting.txt", "UTF-8");
                fineTesting = new PrintWriter("Specific Tests" + version + "\\Test" + i + "\\fineTesting.txt", "UTF-8");
                time(file, i);

                training.close();
                lawTesting.close();
                fineTesting.close();

                System.out.println(count);
            } catch (FileNotFoundException | UnsupportedEncodingException ex) {
                Logger.getLogger(CreateTest.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    private static void time(File file, int ignore) {
        File[] files = file.listFiles();

        for (int i = 1; i <= 5; i++) {
            if (i == ignore) {
                begin(files[i - 1], lawTesting, fineTesting, 1);
            } else {
                begin(files[i - 1], training, 1);
            }
        }
    }

    private static void begin(File file, PrintWriter print, int action) {
        File files[] = file.listFiles();

        for (File f : files) {
            if (f.isFile()) {
                write(f, print, action);
            } else {
                begin(f, print, action);
            }
        }
    }

    private static void begin(File file, PrintWriter lawTesting, PrintWriter fineTesting, int action) {
        File files[] = file.listFiles();

        for (File f : files) {
            if (f.isFile()) {
                if (f.getAbsolutePath().contains("Law")) {
                    write(f, lawTesting, action);
                } else {
                    write(f, fineTesting, action);
                }
            } else {
                begin(f, lawTesting, fineTesting, action);
            }
        }
    }

    private static void write(File f, PrintWriter print, int action) {
        try {
            Scanner inp = new Scanner(f);
            String sentence = "";

            while (inp.hasNext()) {
                String line = inp.nextLine();
                if (line.equals("")) {
                    count++;
                    if (sentence.length() == 0) {
                        continue;
                    }
                    print.write(((action == 0) ? sentence.trim() : sentence) + newLine);
                    sentence = "";
                } else {
                    switch (action) {
                        case 0:
                            sentence += line.split("\\s")[0] + " ";
                            break;
                        case 3:
                            sentence += ((line.equals(".")) ? line.replaceAll("\\.", newLine) : line + newLine);
                            break;
                        default:
                            sentence += line + newLine;
                            break;
                    }
                }
            }

            if (sentence.length() > 0) {
                count++;
                print.write(((action == 0) ? sentence.trim() : sentence) + newLine);
            }

            inp.close();

            print.flush();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(CreateTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        createTest("\\v2");
        createTest("\\v3");
    }
}
