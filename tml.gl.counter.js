inlets = 1;
outlets = 1;

var g = new Global("tmlglcounterjsglobalcount");
g.a = 0;

function bang()
{
    g = new Global("tmlglcounterjsglobalcount");
    g.a++;
    
    outlet(0, g.a);
}
