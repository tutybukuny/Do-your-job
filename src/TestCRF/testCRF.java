/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package TestCRF;

import iitb.CRF.CRF;
import iitb.CRF.FeatureGeneratorNested;
import iitb.CRF.SegmentCRF;
import iitb.Model.FeatureGenImpl;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngọc Thiện
 */
public class testCRF {
    public static void main(String[] args) {
        try {
            FeatureGeneratorNested fg = new FeatureGenImpl("naive", 16);
            CRF crf = new SegmentCRF(16, fg, "");
        } catch (Exception ex) {
            Logger.getLogger(testCRF.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
