import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class RandomNumbersToFile {
    public static void main(String[] args) {
        Random rand = new Random();
        try {
            FileWriter writer = new FileWriter("slumpade_tal.txt");
            for (int i = 0; i < 600; i++) {
                writer.write(rand.nextInt(600) + "\n");
            }
            writer.close();
            System.out.println("Slumpade tal skrivna till slumpade_tal.txt");
        } catch (IOException e) {
            System.out.println("Kunde inte skriva till filen: " + e.getMessage());
        }
    }
}
