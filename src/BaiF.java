
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 */
public class BaiF {

    public static void main(String[] args) {
        Scanner inp = new Scanner(System.in);
        int n;

        while (true) {
            n = inp.nextInt();
            if (n == 0) {
                return;
            }

            cal(n);
        }
    }

    private static void cal(int n) {
        int c = 1;
        while (n != 1) {
            n = ((n % 2 == 0) ? n / 2 : 3 * n + 1);
            c++;
        }

        System.out.println(c);
    }
}
