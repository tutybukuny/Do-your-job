/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 */
class Main {

    public static void main(String[] args) {
        Pattern p = Pattern.compile("(?!')(?=(\\W|\\d)).");
        Matcher m = p.matcher("don1t");
        System.out.println(m.find());
    }
}
