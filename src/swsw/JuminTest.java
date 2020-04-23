package swsw;

import java.util.Scanner;

public class JuminTest {
    public static void main(String[] args) {

        System.out.println("주민등록번호를 - 없이 입력하세요");
        System.out.println("ex) 6612011234567");

        Scanner sc = new Scanner(System.in);
        String a1 = sc.nextLine();

        sc.close();

        char a1_arr[] = a1.toCharArray();

        int i_arr[] = { 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5, 6, 7, 8, 9 };

        int result = 0;

        for (int i = 0; i < 12; i++) {

            System.out.println(a1_arr[i] + "  " + i_arr[i]);

            int temp = Integer.parseInt(a1_arr[i] + "");
            temp = temp * i_arr[i];

            result = result + temp;
        }

        System.out.println();
        System.out.println(result);
        result %= 11;
        System.out.println(result);
        result = 11 - result;
        System.out.println(result);
        result %= 10;
        System.out.println(result);
        System.out.println(result);

    }
}