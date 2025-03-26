package week4;

import org.junit.Test;
import static org.junit.Assert.*;

public class QuickSort {
    void swap(char[] a , int i, int j) {
		char temp= a[i];
		a[i]= a[j];
		a[j]= temp;
	}

    int partition(char[] a){
        char pivot = a[0];
        int L = 0;
        int R = 1;
        while(R <= a.length-1){
            if (a[R] < pivot){
                L++;
                swap(a,L,R);
                R++;
            } else {
                R++;
            }
        }
        swap(a,0,L);
        return L;
    }

    int partition_part(char[] a, int first, int last){
        char pivot = a[first];
        int L = first;
        int R = first+1;
        while(R <= last){
            if (a[R] < pivot){
                L++;
                swap(a,L,R);
                R++;
            } else {
                R++;
            }
        }
        swap(a,first,L);
        return L;
    }

	char[] sort(char[] a){
        sort_prime(a,0,a.length-1);
        return a;
    }
    
    void sort_prime(char[] a, int first, int last) {
		if (first < last) {
            System.out.println(String.valueOf(first) + " -> " + String.valueOf(last) + "  " + String.valueOf(a));
			int pivot = partition_part(a, first, last); // update pivotIndex
			sort_prime(a, first, pivot-1);
			sort_prime(a, pivot +1, last);
		}
	}

    @Test
    public void testParitition(){
        char[] example = new char[]{'g','a','t','h','e'};
        partition(example);
        assertEquals(String.valueOf(example), "eaght");
    }
    
    @Test
    public void testParititionPart(){
        char[] example = new char[]{'g','a','t','h','e'};
        partition_part(example, 0, example.length-1);
        assertEquals(String.valueOf(example), "eaght");
        char[] two = new char[]{'b','a'};
        partition_part(two, 0, two.length-1);
        assertEquals(String.valueOf(two), "ab");
    }

    @Test
    public void testBasics(){
        assertArrayEquals(sort(new char[]{}), new char[]{});
        assertArrayEquals(sort(new char[]{'b','a'}), new char[]{'a','b'});
        assertArrayEquals(sort(new char[]{'b','a','j'}), new char[]{'a','b','j'});
        assertArrayEquals(sort(new char[]{}), new char[]{});
        assertArrayEquals(sort(new char[]{'b','a','c','d','e','f','j','k','j'}), new char[]{'a','b','c','d','e','f','j','j','k'});
    }

    public static void main(String[] args){
        QuickSort qs = new QuickSort();
        System.out.println(qs.sort(new char[]{'b','a','c','d','e','f','j','k','j'}));
    }

}
