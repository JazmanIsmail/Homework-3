// BEGIN-TODO(Name)
// Please, before you do anything else, add your names here:
// Group 69
// Jazman Mohamad Ismail: 1923072
// Arhan Chhabra: 1940198
//
// Go get 'em!
//
// END-TODO(Name)

lemma ExA(x: int, y: int)
// BEGIN-TODO(PostA)
    ensures 5*x - 3 * (y + x) == 2*x - 3*y
// END-TODO(PostA)
{
    calc ==
    {
// BEGIN-TODO(CalcA)
    5*x - 3 * (y + x);
    ==
    5*x - 3*y - 3*x;
    == 
    2*x - 3*y;
// END-TODO(CalcA)
    }
}


lemma ExB(x: int, y: int)
// BEGIN-TODO(PostB)
ensures 2*(x + 4*y + 7) - 10 == 2*x + 8*y + 4
// END-TODO(PostB)
{
    calc ==
    {
// BEGIN-TODO(CalcB)
    2*(x + 4*y + 7) - 10;
    ==
    2*x + 8*y + 14 - 10;
    ==
    2*x + 8*y + 4;
// END-TODO(CalcB)
    }
}


lemma ExC(x: int)
// BEGIN-TODO(PostC)
ensures 7*x + 5 < (x + 3)*(x + 4)
// END-TODO(PostC)
{
    calc
    {
// BEGIN-TODO(CalcC)
    (x + 3)*(x + 4);
    == 
    x*x + 7*x + 12;
    >
    7*x + 5;
// END-TODO(CalcC)
    }
}
