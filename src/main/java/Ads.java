import java.util.List;

public interface Ads {
    List<Ad> all();
    long insert(Ad ad);
}