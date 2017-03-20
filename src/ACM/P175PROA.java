/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ACM;

import java.util.Scanner;

/**
 *
 * @author Ngọc Thiện
 */
public class P175PROA {

    public static void main(String[] args) {
        Scanner inp = new Scanner(System.in);
        long a, b;
        long x = 0, y = 0;
        boolean yes = false;
        a = inp.nextLong();
        b = inp.nextLong();

        String s = inp.next();

        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);

            if (c == 'U') {
                y++;
            }
            if (c == 'D') {
                y--;
            }
            if (c == 'L') {
                x--;
            }
            if (c == 'R') {
                x++;
            }

            if (x == a && y == b) {
                yes = true;
            }
        }

        if (yes) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
}
