package ass1;

import org.junit.*;
import static org.junit.Assert.*;

public class ChurchTests {

    Church zero  = null;
    Church one   = new Church();
    Church two   = new Church(one);
    Church three = new Church(two);
    Church four  = new Church(three);
    Church[] allChurches = {one, two, three, four};

    @Test
    public void testEqualsDirectly(){
        // testing the specific method works
        assertTrue(one.spec_equals(one));
        assertTrue(one.spec_equals(new Church()));
        assertTrue(one.spec_equals(new Church(zero)));
        assertTrue(one.spec_equals(new Church(null)));
        assertTrue(two.spec_equals(new Church(new Church())));
    }

    @Test
    public void testEqualsIndirectly(){
    }

    @Test
    public void testIncr(){
        assertEquals(one.incr(), two);
        assertEquals(two.incr(), three);
        assertEquals(one.incr(), new Church(new Church()));
        assertEquals(three.incr(), four);
    }

    @Test
    public void testIncrTwo(){}

    @Test
    public void testDecr(){
        assertEquals(one.decr(), zero);
        assertEquals(two.decr(), one);
        assertEquals(three.decr(), two);
    }

    @Test
    public void testDecrTwo(){
    }

    @Test
    public void testPlus(){
        assertEquals(one.plus(one), two);
        assertEquals(one.plus(three), four);
    }

    @Test
    public void testPlusTwo(){
    }

    @Test
    public void testMinus(){
        assertEquals(one.minus(one), zero);
        assertEquals(two.minus(one), one);
        assertEquals(three.minus(one), two);
    }

    @Test
    public void testMinusTwo(){
    }

    @Test
    public void testMult(){
        assertEquals("one by one", one.mult(one), one);
        assertEquals("one by two", one.mult(two), two);
        assertEquals("two  by two", two.mult(two), four);
    }

    @Test
    public void testMultViaEverything(){}
    
}
