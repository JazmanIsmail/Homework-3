// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// Go get 'em!
//
// END-TODO(Name)

function Mult(x: nat, y: nat): nat {
    if y == 0 then 0 else x + Mult(x, y - 1)
}

lemma MultCommutative(x: nat, y: nat)
    decreases x + y
    ensures Mult(x, y) == Mult(y, x)
{
// BEGIN-TODO(MultComm)
// Base case: If x == 0, then Mult(0, y) == 0 and Mult(y, 0) == 0
  if x == 0 {
    assert Mult(0, y) == 0;
    assert Mult(y, 0) == 0 by {
      if y == 0 {
      } else {
        calc {
          Mult(y, 0);
          == // Definition of Mult 
          0;
        }
      }
    }
    assert Mult(0, y) == Mult(y, 0);
  }
  // Base case: If y == 0, then Mult(x, 0) == 0 and Mult(0, x) == 0
  else if y == 0 {
    assert Mult(x, 0) == 0;
    assert Mult(0, x) == 0 by {
      if x == 0 {
      } else {
        calc {
          Mult(0, x);
          == // Definition of Mult 
          0;
        }
      }
    }
    assert Mult(x, 0) == Mult(0, x);
  }
  // Inductive step:
  else {
    // Inductive hypothesis: Mult(x, y - 1) == Mult(y - 1, x)
    MultCommutative(x, y - 1);
    // Inductive hypothesis: Mult(x - 1, y) == Mult(y, x - 1)
    MultCommutative(x - 1, y);
    // Now prove Mult(x, y) == Mult(y, x)
    calc {
      Mult(x, y);
      == // Definition of Mult 
      x + Mult(x, y - 1);
      == // Inductive hypothesis: Mult(x, y - 1) == Mult(y - 1, x) 
      x + Mult(y - 1, x);
      == // Definition of Mult (reversed) 
      Mult(y, x);
    }
  }
// END-TODO(MultComm)
}