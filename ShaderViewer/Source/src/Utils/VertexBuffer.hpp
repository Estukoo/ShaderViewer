#include "Type/BufArray.h"

BufArray<float>* Vertices = new BufArray<float>({
    -0.66,  0.66,
    -0.66, -0.66,
     0.66,  0.66,
     0.66,  0.66,
    -0.66, -0.66,
     0.66, -0.66,
}, 2);

BufArray<float>* VertColors = new BufArray<float>({
    1.0, 0.0, 0.0, 0.1,
    1.0, 0.0, 1.0, 0.1,
    1.0, 1.0, 0.0, 0.1,
    1.0, 1.0, 0.0, 0.1,
    1.0, 0.0, 1.0, 0.1,
    1.0, 1.0, 0.0, 0.1,
}, 4);

BufArray<float>* TexCoords = new BufArray<float>({
    0.0, 0.0,
    0.0, 1.0,
    1.0, 0.0,
    1.0, 0.0,
    0.0, 1.0,
    1.0, 1.0,
}, 2);