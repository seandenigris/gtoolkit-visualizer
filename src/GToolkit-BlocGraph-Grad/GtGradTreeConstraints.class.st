"
I store layout properties of the nodes within tree layout that are used during layout computation.

Those properties can be later accessed after layout computation for testing and debug purposes
"
Class {
	#name : #GtGradTreeConstraints,
	#superclass : #BlLayoutConstraints,
	#instVars : [
		'computedPosition'
	],
	#category : #'GToolkit-BlocGraph-Grad-Tree'
}

{ #category : #accessing }
GtGradTreeConstraints >> computedPosition [
	<return: #Point>

	^ computedPosition
]

{ #category : #accessing }
GtGradTreeConstraints >> computedPosition: anObject [
	computedPosition := anObject
]

{ #category : #initialization }
GtGradTreeConstraints >> initialize [
	super initialize.
	computedPosition := 0@0.

]
