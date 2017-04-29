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

/**
 *
 * @author Ngọc Thiện
 */
public class WriteWrong {

    public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
        PrintWriter v2, v3, v2p, v3p;

        String path = "wrong\\";
        for (int i = 1; i <= 3; i++) {
            String folderPath = path + i + "gram";
            File[] files = new File(folderPath).listFiles();
            String location;
            if (i == 1) {
                location = path + "3w";
            } else if (i == 2) {
                location = path + "5w";
            } else {
                location = path + "7w";
            }

            v2 = new PrintWriter(location + "\\v2wrong.txt", "UTF-8");
            v3 = new PrintWriter(location + "\\v3wrong.txt", "UTF-8");
            v2p = new PrintWriter(location + "\\v2poswrong.txt", "UTF-8");
            v3p = new PrintWriter(location + "\\v3poswrong.txt", "UTF-8");

            for (File file : files) {
                PrintWriter print = null;
                String fileName = file.getName();
                if (fileName.contains("v2")) {
                    if (fileName.contains("pos")) {
                        print = v2p;
                    } else {
                        print = v2;
                    }
                } else {
                    if (fileName.contains("pos")) {
                        print = v3p;
                    } else {
                        print = v3;
                    }
                }

                Scanner inp = new Scanner(file, "UTF-8");
                String sentence = "";
                boolean wrong = false;
                String newLine = "\r\n";
                while (inp.hasNext()) {
                    String line = inp.nextLine();
                    if (line.length() == 0) {
                        if (wrong) {
                            print.write(sentence + newLine);
                        }
                        sentence = "";
                        wrong = false;
                        continue;
                    }

                    sentence += line;
                    String[] chunks = line.split("\\s");
                    wrong = !chunks[3].equals(chunks[2]);
                    if (!chunks[3].equals(chunks[2])) {
                        sentence += "\tWRONG HERE!!!";
                    }

                    sentence += newLine;
                }

                if (sentence.length() > 0 && wrong) {
                    print.write(sentence + newLine);
                }

                print.flush();
            }

            v2.close();
            v3.close();
            v2p.close();
            v3p.close();
        }
    }
}
