Class {
	#name : #GtGradWestHierarchicalCoordinateAssignmentStage,
	#superclass : #GtGradHierarchicalCoordinateAssignmentStage,
	#category : #'GToolkit-BlocGraph-Grad-Hierarchical'
}

{ #category : #'layout - computations' }
GtGradWestHierarchicalCoordinateAssignmentStage >> distanceToNextRankIncrement: aValue [
	^ aValue
]

{ #category : #'layout - computations' }
GtGradWestHierarchicalCoordinateAssignmentStage >> positionElement: anElement positionX: positionX positionY: positionY [
	anElement constraints gradHierarchical computedPosition:  positionY@positionX
]

{ #category : #'layout - computations' }
GtGradWestHierarchicalCoordinateAssignmentStage >> setNodeWidthAndHeight: aNode [
	aNode height: aNode element measuredWidth.
	aNode width: aNode element measuredHeight.
]
