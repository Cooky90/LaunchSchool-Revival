
# Freezing,Cloning and Duplicating Collections

when cloning a froozen object, it is keeping the frozen attribute. Hence why you cannot assign a frozen object to a variable and then modify it. You can however modify it's contents. So you would not be able to push more elements TO a frozen array even if it was cloned but you would be able to modify the objects/elements inside(shallow freeze).

Dup work slightly different in that if dup a frozen object, you CAN still modify that object i.e you'd be able to push extra elements on to it.

So esentially, freezing an object prevents it from being modified. Clone keeps the frozen attribute, duplicate does NOT keep the frozen attribute. Both clone and dup are shallow copies i.e. only top level object is frozen, NOT it's contents which can be modified.
