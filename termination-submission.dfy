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
// Add your termination proof here.
// END-TODO(Termination)
  {
    if
    {
      case x != 0 => x := x - 1;
      case y != N => x, y := N, y + 1;
    }
  }
}
