class Solution
{
  static void insert(int arr[],int i)
  {
       // Your code here
  }
  //Function to sort the array using insertion sort algorithm.
  public void insertionSort(int arr[], int n)
  {
      //code here
      for(int i = 0; i < (n - 1); i++) {
          int index = i;
          if (arr[index] > arr[index + 1]) {
              while (index >= 0 && arr[index] > arr[index + 1]) {
                  int temp = arr[index];
                  arr[index] = arr[index + 1];
                  arr[index+1] = temp;
                  index--;
              }
          }
      }
  }
}
