package com.ieseljust.esportsplayers;

/**
 *
 * @author Carles
 */
import DAO.PlayerDao;
import java.util.Scanner;

public class Esportsplayers {

    public static void main(String[] args) {
        PlayerDao playerDao = new PlayerDao();
        Scanner scanner = new Scanner(System.in);

        int pageNumber = 1;
        int pageSize = 10;

        while (true) {
            System.out.println("Options: <S> next, <A> previous, <G n> Go to n, <Q> exit");
            String input = scanner.nextLine().toUpperCase();

            switch (input) {
                case "S":
                    pageNumber++;
                    break;
                case "A":
                    if (pageNumber > 1) {
                        pageNumber--;
                    }
                    break;
                case "Q":
                    playerDao.close();
                    System.exit(0);
                    break;
                default:
                    if (input.startsWith("G ")) {
                        try {
                            int goToPage = Integer.parseInt(input.substring(2));
                            if (goToPage > 0) {
                                pageNumber = goToPage;
                            } else {
                                System.out.println("Invalid page number.");
                            }
                        } catch (NumberFormatException e) {
                            System.out.println("Invalid input.");
                        }
                    } else {
                        System.out.println("Invalid input.");
                    }
            }

            playerDao.displayPage(pageNumber);
        }
    }
}