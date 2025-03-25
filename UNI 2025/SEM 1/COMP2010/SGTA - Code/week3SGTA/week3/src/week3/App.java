
package week3;

public class App {

   
    //PRE: n is an integer at least 0
    //POST: Returns value
    public static int computeM (int n){ 
    
            int[] memo = new int[n+3];
            memo[0] = 1;
            memo[1] = 2;
            memo[2] = 3;
            
            if(n < 3){
                return memo[n];
            }
            else{
                for(int i = 3; i < n+1; i++){
                    memo[i] = 2*memo[i-1] + memo[i-2] + memo[i-3];
                }
            }
            return memo[n];
        }

    public static int computeM_PartialLookup(int n){
        int memoNew[] = {1, 2 ,3};

        for(int i = 3; i <= n; i++){
            
            memoNew[i%3] = 2*memoNew[(i-1)%3] + memoNew[(i-2)%3] + memoNew[(i-3)%3];

        }
        return memoNew[n%3];
    }

    public static int integerSquareRoot(int x){
        //PRE: x>=0

        if(x == 1){ return 1;}
    
        int upper = x;
        int lower = 1;
        
        while(lower <= upper){ 
            int mid = (upper + lower)/2;
            if (mid*mid < x){
                lower = mid + 1;
            }
            else {
                upper = mid - 1;
            }

        }
        return upper;
    }


    
    
    public static void main(String[] args) {
            int sqr = 10;

            System.out.println(integerSquareRoot(sqr));
    }
}
