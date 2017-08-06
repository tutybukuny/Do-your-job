
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
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
 * @author tutyb
 */
public class MrBachOrder {

    public static void main(String[] args) {
        HashMap<String, Tag> tags = new HashMap<>();

        File folder = new File("E:\\thien\\Learning\\NLP\\Project\\Code\\DoYourJob\\order");
        File[] files = folder.listFiles();

        for (File file : files) {
            try (Scanner inp = new Scanner(file)) {
                while (inp.hasNext()) {
                    String line = inp.nextLine();
                    if (line.length() == 0) {
                        continue;
                    }

                    String[] tokens = line.split("\\s");
                    String right = tokens[tokens.length - 2];
                    String expec = tokens[tokens.length - 1];

                    if (!tags.containsKey(right)) {
                        tags.put(right, new Tag(right));
                    }

                    Tag tag = tags.get(right);
                    tag.count++;
                    if (!tag.hash.containsKey(expec)) {
                        tag.hash.put(expec, 0);
                    }

                    int c = tag.hash.get(expec) + 1;
                    tag.hash.put(expec, c);
                    tags.put(right, tag);
                }
            } catch (FileNotFoundException ex) {
                Logger.getLogger(MrBachOrder.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        try (PrintWriter writer = new PrintWriter("evaluation", "UTF-8")) {
            for (String key : tags.keySet()) {
                Tag tag = tags.get(key);
                writer.println("Tag " + tag.tag);
                writer.println("Số lần xuất hiện: " + tag.count);
                writer.println("Kết quả nhận diện: ");
                writer.println("\t\tSố lần");

                for (String k : tag.hash.keySet()) {
                    int c = tag.hash.get(k);
                    writer.println("\t" + k + ":\t" + c + "\t" + (round((float) c / (float) tag.count*100, 2)) + "%");
                }

                writer.println("\r\n-------------------------------");
                writer.println();
            }
        } catch (FileNotFoundException | UnsupportedEncodingException ex) {
            Logger.getLogger(MrBachOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static double round(double value, int places) {
        if (places < 0) {
            throw new IllegalArgumentException();
        }

        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }

    static class Tag {

        public String tag;
        public int count;
        public HashMap<String, Integer> hash;

        public Tag(String tag) {
            this.tag = tag;
            count = 0;
            hash = new HashMap<>();
        }
    }
}
