
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Ngọc Thiện
 */
public class GetTestSentence {
    
    static ArrayList<String> sentences = new ArrayList<>();
    
    public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
//        File[] folders = new File("C:\\Users\\tutyb\\Downloads\\Compressed\\Tagged Questions\\Fine").listFiles();
        File[] files = new File("C:\\Users\\tutyb\\Downloads\\Compressed\\Tagged Questions\\Law").listFiles();
        
//        for (File folder : folders) {
//            File[] files = folder.listFiles();
            
            for (File file : files) {
                try (Scanner inp = new Scanner(file)) {
                    while (inp.hasNext()) {
                        String line = inp.nextLine();
                        
                        if (line.contains("<question>")) {
                            sentences.add(line.trim());
                        }
                    }
                } catch (FileNotFoundException ex) {
                    Logger.getLogger(GetTestSentence.class.getName()).log(Level.SEVERE, null, ex);
                }
//            }
        }
        
        PrintWriter rawOut = new PrintWriter("Tagged by Cham.xml", "UTF-8");
        PrintWriter testOut = new PrintWriter("Raw Sentence by Cham.xml", "UTF-8");
        ArrayList<Integer> exists = new ArrayList<>();
        Random rand = new Random();
        
        for (int i = 0; i < 50; i++) {
            int r = rand.nextInt(sentences.size());
            
            while (exists.contains(r)) {
                r = rand.nextInt(sentences.size());
            }
            
            exists.add(r);
            
            rawOut.println(sentences.get(r));
            testOut.println(sentences.get(r));
        }
        
        rawOut.close();
        testOut.close();
    }
}
