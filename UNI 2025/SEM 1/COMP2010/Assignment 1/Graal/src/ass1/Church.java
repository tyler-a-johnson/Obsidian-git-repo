package ass1;

public class Church {

  //Field representing the previous church
  //null represents zero, therefore Chuurch with prev = null represents 1
  private Church prev;
  
  public Church(){ //Default constructor with no arguments, creates a church representing 1
    this.prev = null;
  }
  
  public Church(Church from){ //Second constructor, creates a church one down the linked list
    this.prev = from;
  }

  public boolean spec_equals(Church other){ //Recursively moves back through the list until one list is null. If both are null, the number is equal.
    if(this.prev == null && other.prev == null){ //Case case if equal
      return true;
    }

    if(this.prev == null || other.prev == null) { //Case if not equal (equal case already handled)
      return false;
    }
    
    return this.prev.spec_equals(other.prev); //Recursive call to compare the previous church in both lists
  }

  @Override
  public boolean equals(Object o){
    if (o instanceof Church)
      return spec_equals((Church)o);
    else
      return false;
  }

  public Church incr(){ //Creates and returns a church that is next on the linked list
    return new Church(this);
  }

  public Church decr(){ //Returns the previous church in the linked list
    if(this.prev == null){ //Base case for if church represents 1
      return null;
    }
    return this.prev;
  }

  public Church plus(Church other){
    if (other == null){ //Base case if other is zero
      return this;
    }
    return this.incr().plus(other.decr()); //Increments and returns this church by the value of other church
  }

  public Church mult(Church other){
    if(other == null){ //Base case, multiplying by zero returns zero. When other reaches zero the multiplication process is complete.
      return null;
    }
    return this.plus(this.mult(other.decr())); //Recursively adds "this" to "this", "other" number of times.
  }

  public Church minus(Church other){
    if (other == null){ //If other is zero, return this
      return this;
    }
    if (this.prev == null){ //If this is 1 and other is not zero, result will be zero (technically would be negative but we are not accounting for negatives)
      return null;
    }
    return this.decr().minus(other.decr()); //Recursively call minus to decrement this by the number of 
  }
}
