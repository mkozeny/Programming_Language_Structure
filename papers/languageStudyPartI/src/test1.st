a := Array new: 5.
	a at: 1 put: 2.
	a at: 2 put: 7.
	a at: 3 put: 0.
	a at: 4 put: 5.
	a at: 5 put: 3.
a insertionSort: [ :x :y | x < y ].
a do: [ :item | Transcript show: item; cr ]