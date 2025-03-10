// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// Go get 'em!
//
// END-TODO(Name)

method terminate_x_y(N: nat)
{
  var x, y := 0, 0;
  while x != 0 || y != N
// BEGIN-TODO(Termination)
  // Note that order of decreases clauses matter here (lexicographical orderings)
  decreases  N - y
  decreases x
  invariant 0 <= y <= N
  invariant 0 <= x <= N

// END-TODO(Termination)
  {
    if
    {
      case x != 0 => x := x - 1;
      case y != N => x, y := N, y + 1;
    }
  }
}
