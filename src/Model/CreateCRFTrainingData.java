/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import edu.stanford.nlp.ling.WordTag;
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
 * @author tutyb
 */
public class CreateCRFTrainingData {

    private File folder;
    private PrintWriter print;

    public CreateCRFTrainingData(String folderPath) {
        try {
            folder = new File(folderPath);
            print = new PrintWriter("CRFTraining.dat", "UTF-8");
            run(folder);
            print.close();
        } catch (FileNotFoundException | UnsupportedEncodingException ex) {
            Logger.getLogger(CreateCRFTrainingData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void run(File f) {
        File[] files = f.listFiles();

        for (File file : files) {
            if (file.getPath().contains("\\.")) {
                continue;
            }

            if (file.isFile()) {
                taggerRunning(file);
            } else {
                run(file);
            }
        }
    }

    private void taggerRunning(File file) {
        try {
            Scanner inp = new Scanner(file);
            String newLine = "\r\n";

            inp.nextLine();
//            print.write(inp.nextLine() + newLine);
//            System.out.println(file.getName());
            while (inp.hasNext()) {
                String line = inp.nextLine();
                if (line.contains("root") || line.contains("test")
                        || line.contains("answer") || line.contains("base")) {
//                    print.write(line + newLine);
                    continue;
                }

                line = line.trim().replace("<question>", "").replace("</question>", "");

                ArrayList<String> trunks = splitIntoTrunks(line);

                String res = "";

                for (String trunk : trunks) {
                    res += trunkTagging(trunk);
                }

                print.println(res);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(QuestionTaggerv2.class.getName()).log(Level.SEVERE, null, ex);
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

    private String trunkTagging(String trunk) {
        String res = "";
        ArrayList<WordTag> words;
        String tag;
        boolean notTagged = !trunk.contains("<");

        if (!notTagged) {
            int index = trunk.indexOf(">");
            tag = trunk.substring(0, index + 1).replace("<", "").replace(">", "");
            trunk = trunk.replaceAll("<(.(?!<))+>", "");
        } else {
            tag = "O";
        }

        String toks[] = trunk.split("\\s");

        for (int i = 0; i < toks.length; i++) {
            String t = ((tag.equals("O")) ? tag : ((i == 0) ? "B-" : "I-") + tag);

            res += toks[i] + "\t" + t + "\r\n";
        }

        return res;
    }

    public static void main(String[] args) {
        CreateCRFTrainingData questionTagger = new CreateCRFTrainingData(
                "E:\\thien\\Learning\\NLP\\Project\\Data\\Tagged Questions");
//        VietnameseMaxentTagger tagger = new VietnameseMaxentTagger(LibConst.VTB_TAGER);
//        ArrayList<WordTag> words = (ArrayList<WordTag>) tagger.tagText2("vạch kẻ đường", LibConst.TOKENIZER_PROPERTIES);
//
//        for (WordTag word : words) {
//            System.out.println(word.word() + " " + word.tag());
//        }
    }
}
