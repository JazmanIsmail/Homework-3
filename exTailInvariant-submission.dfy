// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// Go get 'em!
//
// END-TODO(Name)

predicate isOdd(m: int)
{
  m % 2 == 1
}

/* (a) Obtain a head invariant by replacing a constant in the postcondition by a
 * variable and implement the method. */
method OddityHead(s: seq<int>) returns (b: bool)
    ensures b <==> forall i | 0 <= i < |s| :: isOdd(s[i])
{
// BEGIN-TODO(HeadInv)
// Write an implementation for this method using a loop with a so-called head
// invariant, which Leino refers to in his loop design technique 12.0.

var i := 0;
b := true;

while i < |s|
  invariant 0 <= i <= |s|
  invariant b <==> forall j | 0 <= j < i :: isOdd(s[j])
  {
    b := b && isOdd(s[i]);
    i := i + 1;
  }

// END-TODO(HeadInv)
}


/* (b) Implement this method again using a tail invariant of the shape
 * (forall i | 0 <= i < |s| :: isOdd(s[i]) <==> ...) */
method OddityTail(s: seq<int>) returns (b: bool)
    ensures b <==> forall i | 0 <= i < |s| :: isOdd(s[i])
{
// BEGIN-TODO(TailInv)
// Write an implementation for this method using a loop with a so-called tail
// invariant, which Leino refers to in his loop design technique 12.1.

var i := |s|;
b := true;

while i > 0
  invariant 0 <= i <= |s|
  invariant b <==> forall j | i <= j < |s| :: isOdd(s[j])
  {
    i := i - 1;
    b := isOdd(s[i]) && b;
  }

// END-TODO(TailInv)
}