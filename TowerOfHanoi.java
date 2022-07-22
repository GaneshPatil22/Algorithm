public class Solution {
    ArrayList<ArrayList<Integer>> operation = new ArrayList<ArrayList<Integer>>();
    public ArrayList<ArrayList<Integer>> towerOfHanoi(int A) {
        TOH(A, 1, 2, 3);
        return operation;
    }

    void TOH(int a, int sour, int aux, int dest) {
        if (a < 0) {
            return;
        }
        if (a == 0) {
            return;
        }
        TOH(a-1, sour, dest, aux);
        ArrayList<Integer> op = new ArrayList<>();
        op.add(a);
        op.add(sour);
        op.add(dest);
        operation.add(op);
        TOH(a-1, aux, sour, dest);
    }
}
