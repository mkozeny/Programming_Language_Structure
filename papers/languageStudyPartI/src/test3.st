a := Array new: 10.
	a at: 1 put: 2.
	a at: 2 put: 27.
	a at: 3 put: 140.
	a at: 4 put: 312.
	a at: 5 put: 72.
	a at: 6 put: 41.
	a at: 7 put: 32.
	a at: 8 put: 67.
	a at: 9 put: 71.
	a at: 10 put: 89.
a insertionSort: [ :x :y | x < y ].
a do: [ :item | Transcript show: item; cr ]	
