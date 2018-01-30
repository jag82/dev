#README.md

You should always include a README. Here's why and how.


From https://github.com/noffle/art-of-readme:


Key elements

Once a README is located, the brave module spelunker must scan it to discern if it matches the developer's needs. This becomes essentially a series of pattern matching problems for their brain to solve, where each step takes them deeper into the module and its details.

Let's say, for example, my search for a 2D collision detection module leads me to collide-2d-aabb-aabb. I begin to examine it from top to bottom:

    Name -- self-explanatory names are best. collide-2d-aabb-aabb sounds promising, though it assumes I know what an "aabb" is. If the name sounds too vague or unrelated, it may be a signal to move on.

    One-liner -- having a one-liner that describes the module is useful for getting an idea of what the module does in slightly greater detail. collide-2d-aabb-aabb says it

        Determines whether a moving axis-aligned bounding box (AABB) collides with other AABBs.

    Awesome: it defines what an AABB is, and what the module does. Now to gauge how well it'd fit into my code:

    Usage -- rather than starting to delve into the API docs, it'd be great to see what the module looks like in action. I can quickly determine whether the example JS fits the desired style and problem. People have lots of opinions on things like promises/callbacks and ES6. If it does fit the bill, then I can proceed to greater detail.

    API -- the name, description, and usage of this module all sound appealing to me. I'm very likely to use this module at this point. I just need to scan the API to make sure it does exactly what I need and that it will integrate easily into my codebase. The API section ought to detail the module's objects and functions, their signatures, return types, callbacks, and events in detail. Types should be included where they aren't obvious. Caveats should be made clear.

    Installation -- if I've read this far down, then I'm sold on trying out the module. If there are nonstandard installation notes, here's where they'd go, but even if it's just a regular npm install, I'd like to see that mentioned, too. New users start using Node all the time, so having a link to npmjs.org and an install command provides them the resources to figure out how Node modules work.

    License -- most modules put this at the very bottom, but this might actually be better to have higher up; you're likely to exclude a module VERY quickly if it has a license incompatible with your work. I generally stick to the MIT/BSD/X11/ISC flavours. If you have a non-permissive license, stick it at the very top of the module to prevent any confusion.
