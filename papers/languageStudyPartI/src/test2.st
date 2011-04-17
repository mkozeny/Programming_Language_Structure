a := Array new: 7.
	a at: 1 put: 12.
	a at: 2 put: 7.
	a at: 3 put: 10.
	a at: 4 put: 32.
	a at: 5 put: 77.
	a at: 6 put: 43.
	a at: 7 put: 13.
a insertionSort: [ :x :y | x < y ].
a do: [ :item | Transcript show: item; cr ]