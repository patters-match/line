# Line: a one-line arcade game for ZX Spectrum
#
# by patters, with optimization assistance from Einar Saukas
#
# https://patters.itch.io/line
#
for l=-6 to 0: \
    beep .02,l*5+20: \
next l: \
for d=1 to 3: \
    poke 23693,65: \
    border 0: \
    cls : \
    ink 2: \
    for e=19 to 20: \
        plot 268-e,69+l/2: \
        draw 0,e-82.1-l/2: \
        draw e+e-286,0: \
        draw 0,163: \
        draw 247,0: \
        draw 0,-e-44-l/2: \
    next e: \
    print ink 3;"LEVEL ";l;at 20,28+d;"//"(d to ): \
    ink rnd*4+3.5: \
    for y=84-l*3-e to 84: \
        print at rnd*17+2,rnd*25+4;"*": \
        beep .0001,60: \
    next y: \
    ink 8: \
    plot 8,y: \
    for x=5 to 124: \
        let k=2-4*(inkey$=""): \
        let y=y+k: \
        poke 23620*point (x+x,y),35: \
        draw 2,k: \
    next x: \
    next l: \
    beep .01,20: \
    beep .01,30: \
    poke 23620,5+32*(l=e): \
    beep .2,-20: \
next d: \
dim a$(32): \
ink 1+5*(l=e): \
for n=0 to 10: \
    print at n,0; \
    over 1;a$;at e-n,0;a$: \
next n: \
print at 10,n; ink 7;"GAME OVER" and l<e;"WELL DONE" and l=e
