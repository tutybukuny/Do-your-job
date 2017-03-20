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
import java.util.Random;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngọc Thiện
 */
public class SplitData {

    public static void run(String s, String d) {
        File source = new File(s);
        File[] files = source.listFiles();
        for (File file : files) {
            if (file.getPath().contains("\\.")) {
                continue;
            }

            if (file.isFile()) {
                split(file, d);
            } else {
                run(file.getPath(), d);
            }
        }

    }

    private static void split(File file, String d) {
        try {
            Scanner inp = new Scanner(file);
            int count = countSentence(file);
//            System.out.println(file.getName() + " " + count);
            int limit = count / 5;
            int[] num = new int[5];
            PrintWriter prints[] = new PrintWriter[5];
            for (int i = 0; i < 5; i++) {
                prints[i] = new PrintWriter(file.getPath()
                        .replace("Training Data v2", d + "\\Set " + (i + 1))
                        .replace("Training Data v3", d + "\\Set " + (i + 1)), "UTF-8");
            }

            String sentence = "";
            String newLine = "\r\n";
            Random rand = new Random();
            int rn = 0;

            while (inp.hasNext()) {
                String line = inp.nextLine();

                if (line.equals(".")) {

                    if (!allLimitted(num, limit)) {
                        rn = rand.nextInt(5);
                        while (num[rn] == limit) {
                            rn = rand.nextInt(5);
                        }
                        num[rn]++;
                    } else {
                        rn = (++rn) % 5;
                    }
                    prints[rn].print(sentence + newLine);
                    sentence = "";
                } else {
                    sentence += line + newLine;
                }
            }

            inp.close();

            for (PrintWriter print : prints) {
                print.close();
            }
        } catch (FileNotFoundException | UnsupportedEncodingException ex) {
            Logger.getLogger(BuildingAll.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private static int countSentence(File file) {
        int count = 0;
        try {
            Scanner inp = new Scanner(file);

            while (inp.hasNext()) {
                String line = inp.nextLine();
                if (line.equals(".")) {
                    count++;
                }
            }

            inp.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(BuildingAll.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;
    }

    private static boolean allLimitted(int[] num, int limit) {
        for (int i = 0; i < 5; i++) {
            if (num[i] < limit) {
                return false;
            }
        }

        return true;
    }

    public static void main(String[] args) {
        SplitData.run("E:\\thien\\Learning\\NLP\\Project\\Data\\Training Data v2",
                "\\Folds\\v2");
    }
}
