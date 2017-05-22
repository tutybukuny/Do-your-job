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
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngọc Thiện
 */
public class TrainingDataBuiderv2 {

    private final String newLine = "\r\n";

    public TrainingDataBuiderv2(String directory) {
        run(directory);
    }

    private void run(String directory) {
        File f = new File(directory);
        File[] files = f.listFiles();

        for (File file : files) {
            if (file.getPath().contains("\\.")) {
                continue;
            }

            if (file.isFile()) {
                buildData(file);
            } else {
                run(file.getPath());
            }
        }
    }

    private void buildData(File file) {
        try {
            Scanner inp = new Scanner(file);
            PrintWriter print = new PrintWriter(file.getPath().replace(
                    "Split word tagged questions v2", "Training Data v2"), "UTF-8");

            while (inp.hasNext()) {
                String line = inp.nextLine();
                line = line.trim().replace("<question>", "").replace("</question>", "");
                ArrayList<String> trunks = splitIntoTrunks(line);
                String res = "";

                for (String trunk : trunks) {
                    res += convertTrunk(trunk);
                }

                res = res.replaceAll("\r\n\t\t\t\tO", "");

                print.write(res + "." + newLine);
            }

            print.close();
        } catch (FileNotFoundException | UnsupportedEncodingException ex) {
            Logger.getLogger(TrainingDataBuiderv2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private ArrayList<String> splitIntoTrunks(String line) {
//        System.out.println(line);
        ArrayList<String> trunks = new ArrayList<>();
        boolean notTagged = true;
        int index = 0;

        while (index < line.length()) {
            if (notTagged == true) {
                int pos = line.indexOf("<", index);
                if (pos == -1) {
                    String trunk = line.substring(index, line.length()).trim();
                    if (trunk.length() > 0) {
                        trunks.add(trunk);
                    }
                    break;
                }
                String trunk = line.substring(index, pos).trim();
                if (trunk.length() > 0) {
                    trunks.add(trunk);
                }
                index = pos;
            } else {
                int pos = line.indexOf(">", line.indexOf(">", index) + 1) + 1;
                String trunk = line.substring(index, pos).trim();
                if (trunk.length() > 0) {
                    trunks.add(trunk);
                }
                index = pos;
            }

            notTagged = !notTagged;
        }

        return trunks;
    }

    public String convertTrunk(String trunk) {
        String res = "";
        String crfTag = "O";
        int index = -1;

        if (trunk.contains("<")) {
            crfTag = trunk.substring(1, trunk.indexOf(">"));
            trunk = trunk.replaceAll("<.{1,4}>", "");
            index = 0;
        }

        String words[] = trunk.split("\\s");

        for (String word : words) {
            String[] parts = word.split("/");
            String w = parts[0];
            String tag = parts[1];

            res += w + "\t" + tag + "\t"
                    + ((index == -1) ? "" : ((index++ == 0) ? "B-" : "I-")) + crfTag + newLine;
        }

        return res;
    }

    public static void main(String[] args) {
        TrainingDataBuiderv2 buider = new TrainingDataBuiderv2(
                "E:\\thien\\Learning\\NLP\\Project\\Data\\Split word tagged questions v2");
    }
}
