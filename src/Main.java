/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Scanner;

/**
 *
 */
class Main {

    public static void main(String[] args) {
        Scanner inp = new Scanner(System.in);
        while (true) {
            int t = inp.nextInt();
            if (t == 0) {
                return;
            }

            cal(t);
        }
    }

    private static void cal(int t) {
        int tax = ((t <= 1000000) ? 0 : ((1000000 < t && t <= 5000000) ? 10 : 20));
        System.out.println(t * (100 - tax) / 100);
    }
}
