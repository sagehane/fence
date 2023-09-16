### Warning

This repo is ***very*** WIP and I plan to do some `git commit --amend`s in the foreseeable future.

### Usage

Build it with:

```sh
elm make src/Main.elm --output=main.js
```

run it with:

```sh
elm reactor
```

and click on `index.html` once going to `localhost`.

### The Rules of Fence

* The game is played by two players on a 9x9 grid with three types of stones;
one Red, one Green, and up to 79 Black.
* Each intersection on the grid is given a coordinate along the two axes and
ranges from (1, 1) to (9, 9).
* Two players are assigned the colours Red and Green respectively and takes
turns making a play.
* The game starts with Red and Green stones placed at (4, 5) and (6, 5)
respectively on an otherwise empty grid.
* A player must follow two procedures to fulfill a play:
  1. They must first place a Black stone at any empty intersection.
  2. They must then move the player's ascribed stone to an empty adjacent
intersection.
     * Two intersections are adjacent if both the coordinate of the respective
     axes differ no more than 1.
* The game ends with a player's defeat when said player forfeits or is unable to
fulfill a play.
