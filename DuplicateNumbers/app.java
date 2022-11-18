public class app {
    public static void main(String[] args) {
        int[] numbers = { 1, 2, 3, 4, 4, 5, 6, 7, 7, 7, 8, 9, 10, 10 };
        isDuplicate(numbers);
    }

    public static boolean isDuplicate(int[] numbers) {
        for (int i = 1; i < numbers.length; i++) {
            if (numbers[i] == numbers[i - 1]) {
                return true;
            }
        }

        return false;

    }
}