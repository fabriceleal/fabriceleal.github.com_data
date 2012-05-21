#!/bin/bash


# ... and pipes will inject into this, just like magic ;D
../jed/jed.js -d "function(arg){var ret=[]; for(var i in arg){ ret.push([i, arg[i]]);} return ret; }"
