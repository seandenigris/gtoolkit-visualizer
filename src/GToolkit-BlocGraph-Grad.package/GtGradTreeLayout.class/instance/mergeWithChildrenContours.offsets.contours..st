calculating
mergeWithChildrenContours: aNode offsets: anOffsetsDict contours: aContoursDict
	| total width| 
	
	total := 0.
	width := 0.
		
	(aNode graph connectedNodesAlongOutgoingEdges) doWithIndex: [ :child :i| 
		| d |
		d := 0.
		i = 1
			ifTrue: [ 
			 	aContoursDict at: aNode put: (aContoursDict at: child).
			]
			ifFalse: [ 
				d := self mergeContours: aNode child: child contours: aContoursDict.
				Halt now.
				anOffsetsDict at: child put: 0@(width + d).
			].
			
		width := (aNode measuredBounds width) + (2 * self nodeDistance).
		total := total + width + d.
	].


	^ total
	