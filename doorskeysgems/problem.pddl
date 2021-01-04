(define (problem doorskeysgems1)
  (:domain doorskeysgems)
  (:objects
    up down right left - direction
    key1 - key 
    gem1 - gem
  )
  (:init
    (= (xdiff up) 0) (= (ydiff up) 1)
    (= (xdiff down) 0) (= (ydiff down) -1)
    (= (xdiff right) 1) (= (ydiff right) 0)
    (= (xdiff left) -1) (= (ydiff left) 0)
    (= width 3) (= height 3)
    (= xpos 1) (= ypos 3)
    (wall 2 3) (wall 2 2) (door 2 1)
    (at key1 1 2) (at gem1 3 3)
    (doorloc 2 1) (itemloc 1 2) (itemloc 3 3)
  )
  (:goal (has gem1))
)
