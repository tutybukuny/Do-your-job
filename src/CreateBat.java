
import java.io.FileNotFoundException;
import java.io.PrintWriter;
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
public class CreateBat {

    public static void main(String[] args) {
        try {
            String newLine = "\r\n";
            PrintWriter writer = new PrintWriter("runMIRA.bat");

            for (int i = 1; i <= 3; i++) {
                writer.print(":: set of " + i + "-gram ---------------------------------"
                        + "------------------------" + newLine + newLine);
                writer.print(":: training " + i + "-gram no pos" + newLine + newLine);

                for (int j = 2; j <= 3; j++) {
                    for (int k = 1; k <= 5; k++) {
                        writer.print("crf_learn -a MIRA " + i
                                + "gram/template Tests/v" + j
                                + "/Test" + k + "/Train.txt " + i + "gram/miramodelv" + j
                                + "t" + k + newLine);
                    }
                    writer.print(newLine);
                }

                writer.print(":: training " + i + "-gram with pos" + newLine + newLine);

                for (int j = 2; j <= 3; j++) {
                    for (int k = 1; k <= 5; k++) {
                        writer.print("crf_learn -a MIRA " + i
                                + "gram/postemplate Tests/v" + j
                                + "/Test" + k + "/Train.txt " + i + "gram/miramodelv" + j
                                + "t" + k + "pos" + newLine);
                    }
                    writer.print(newLine);
                }

                writer.print(":: testing " + i + "-gram" + newLine + newLine);

                for (int j = 2; j <= 3; j++) {
                    for (int k = 1; k <= 5; k++) {
                        writer.print("crf_test -m " + i + "gram/miramodelv" + j + "t" + k
                                + " Tests/v" + j + "/Test" + k + "/Test.txt > " + i
                                + "gram/miraoutputv" + j + "t" + k + ".txt" + newLine);
                    }
                    writer.print(newLine);
                }

                for (int j = 2; j <= 3; j++) {
                    for (int k = 1; k <= 5; k++) {
                        writer.print("crf_test -m " + i + "gram/miramodelv" + j + "t" + k
                                + "pos Tests/v" + j + "/Test" + k + "/Test.txt > " + i
                                + "gram/miraoutputv" + j + "t" + k + "pos.txt" + newLine);
                    }
                    writer.print(newLine);
                }

                writer.print(":: checking result for " + i + "-gram" + newLine + newLine);

                for (int j = 2; j <= 3; j++) {
                    for (int k = 1; k <= 5; k++) {
                        writer.print("perl conlleval.pl -l -d \"\\t\" < " + i
                                + "gram/miraoutputv" + j + "t" + k + ".txt > " + i
                                + "gram/miraresultv" + j + "t" + k + ".txt" + newLine);
                    }
                    writer.print(newLine);
                }

                for (int j = 2; j <= 3; j++) {
                    for (int k = 1; k <= 5; k++) {
                        writer.print("perl conlleval.pl -l -d \"\\t\" < " + i
                                + "gram/miraoutputv" + j + "t" + k + "pos.txt > " + i
                                + "gram/miraresultv" + j + "t" + k + "pos.txt" + newLine);
                    }
                    writer.print(newLine);
                }
            }

            writer.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(CreateBat.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
