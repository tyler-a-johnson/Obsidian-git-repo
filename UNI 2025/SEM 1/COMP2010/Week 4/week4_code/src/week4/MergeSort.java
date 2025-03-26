package week4;

import java.util.Arrays;

import org.junit.Test;
import static org.junit.Assert.*;

public class MergeSort {
    
    public static char[] sort(char[] unsorted, boolean upDown){
        if (unsorted.length == 1)
          return unsorted;
        int    mid   = unsorted.length/2;
        char[] left  = sort(Arrays.copyOfRange(unsorted, 0, mid), upDown);
        char[] right = sort(Arrays.copyOfRange(unsorted, mid, unsorted.length), upDown);
        return merge(left, right, upDown);
    }

    public static char[] merge(char[] sorted_a, char[] sorted_b, boolean upDown){
        char[] ret = new char[sorted_a.length + sorted_b.length];
        int i = 0;
        int j = 0;
        while (i < sorted_a.length && j < sorted_b.length){
            if((upDown && sorted_a[i] < sorted_b[j]) || (!upDown && sorted_a[i] > sorted_b[j])){
                ret[i+j] = sorted_a[i];
                i++;
            } else {
                ret[i+j] = sorted_b[j];
                j++;                
            }
        }

        // flush the left
        while (i < sorted_a.length){
            ret[i+j] = sorted_a[i];
            i++;
        }

        // flush the right
        while (j < sorted_b.length){
            ret[i+j] = sorted_b[j];
            j++;
        }
        return ret;
    }

    public static void main(String[] args) {
        char[] arr = {'g','a','c','d','e','f','j','k','j'};
        System.out.println(sort(arr, true ));
    }


    @Test
    public void testBasics(){
        //Ascending
        assertArrayEquals(sort(new char[]{'b','a'}, true), new char[]{'a','b'});
        assertArrayEquals(sort(new char[]{'b','a','j'}, true), new char[]{'a','b','j'});
        assertArrayEquals(sort(new char[]{'b','a','c','d','e','f','j','k','j'}, true), new char[]{'a','b','c','d','e','f','j','j','k'});
        
        //Descending
        assertArrayEquals(sort(new char[]{'g','a','c','d','e','f','j','k','j'}, false), new char[]{'k','j','j','g','f','e','d','c','a'});
        assertArrayEquals(sort(new char[]{'a','b'}, false), new char[]{'b','a'});
        assertArrayEquals(sort(new char[]{'b','a','j'}, false), new char[]{'j','b','a'});
    }
}
