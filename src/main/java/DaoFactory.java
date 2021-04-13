

/*
    1. We decouple the creation of a DAO from our servlets (controller layer)
    2. We avoid creating instances of the DAO over and over again when we don't need to.
 */
public class DaoFactory {
    private static Products productsDao;

    public static Products getProductsDao() {
        if (productsDao == null) {
            productsDao = new MySQLProductsDao();
        }
        return productsDao;
    }
}