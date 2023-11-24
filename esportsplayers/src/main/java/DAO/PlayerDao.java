package DAO;

import Model.Player;
import ORM.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import java.util.List;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class PlayerDao {

    private static final int PAGE_SIZE = 12;
    private SessionFactory factory;

    // Constructor para inicializar la SessionFactory
    public PlayerDao() {
        // Cargar la configuración de Hibernate desde hibernate.cfg.xml
        factory = HibernateUtil.getSessionFactory();
    }

    public void displayPage(int pageNumber) {
        int pageSize = 12; // Set the number of elements per page

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Transaction transaction = null;
            try {
                transaction = session.beginTransaction();

                // Get the total number of players
                Query<Long> countQuery = session.createQuery("SELECT COUNT(*) FROM Player", Long.class);
                long totalPlayers = countQuery.uniqueResult();

                // Calculate the total number of pages
                long totalPages = (totalPlayers / pageSize) + ((totalPlayers % pageSize == 0) ? 0 : 1);

                // Adjust pageNumber to handle circular navigation
                pageNumber = (int) ((pageNumber - 1 + totalPages) % totalPages + 1);

                // Your existing logic to fetch players
                Query<Player> query = session.createQuery("FROM Player", Player.class);
                query.setFirstResult((pageNumber - 1) * pageSize);
                query.setMaxResults(pageSize);
                List<Player> players = query.getResultList();

                for (Player player : players) {
                    System.out.println(player);
                }

                // Print the current page and total number of pages
                System.out.println("\nPage: " + pageNumber + " of " + totalPages);

                transaction.commit();
            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void close() {
        factory.close();
    }
}