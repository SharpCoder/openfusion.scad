# openfusion.scad
A small library of openSCAD modules to mimc some fusion360 features. Simply copy+paste openfusion.scad into your openSCAD libraries folder.

### Modules

- circular_mirror(x, y, d, steps)
  - This module will repeat children elements in a circular pattern along a given <x,y> center point.
  - Arguments:
    - x = initial x offset
    - y = initial y offset
    - d = distance from <x, y> center point
    - steps = how many times to duplicate the content
- hexagon(r)
  - This module will create a hexagon, but radius is the distance from the center point to the middle of a side. (rather than to a pointy end).
  - Arguments
    - r = radius of the hexagon
- quadruple_mirror()
  - Mirror children elements upper right, upper left, lower right, lower left. (4 corners).
  - Arguments
    - None
- splat(d, count, x, y, z)
  - This module will repeat children elements equidistance "count" times along one or more vectors (x, y, and/or z) over some distance "d".
  - Arguments
    - d = maximum distance the children elemnets will travel
    - count = how many times to repeat the children elements over that distance
    - x = (true / false) should repeat along x-axis
    - y = (true / false) should repeat along y-axis
    - z = (true / false) should repeat along z-axis
      
