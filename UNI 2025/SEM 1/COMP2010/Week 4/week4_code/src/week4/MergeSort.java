package week4;

import java.util.Arrays;

import org.junit.Test;
import static org.junit.Assert.*;

public class MergeSort {
    
    public static char[] sort(char[] unsorted){
        if (unsorted.length == 1)
          return unsorted;
        int    mid   = unsorted.length/2;
        char[] left  = sort(Arrays.copyOfRange(unsorted, 0, mid));
        char[] right = sort(Arrays.copyOfRange(unsorted, mid, unsorted.length));
        return merge(left, right);
    }

    public static char[] merge(char[] sorted_a, char[] sorted_b){
        char[] ret = new char[sorted_a.length + sorted_b.length];
        int i = 0;
        int j = 0;
        while (i < sorted_a.length && j < sorted_b.length){
            if(sorted_a[i] < sorted_b[j]){
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

    @Test
    public void testBasics(){
        assertArrayEquals(sort(new char[]{'b','a'}), new char[]{'a','b'});
        assertArrayEquals(sort(new char[]{'b','a','j'}), new char[]{'a','b','j'});
        assertArrayEquals(sort(new char[]{'b','a','c','d','e','f','j','k','j'}), new char[]{'a','b','c','d','e','f','j','j','k'});
    }
}
