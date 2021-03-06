Class {
	#name : #GtGraphGraphHorizontalDominanceTreeLayout,
	#superclass : #GtGraphLayoutExamples,
	#category : 'GToolkit-BlocGraph-Layouts-Examples'
}

{ #category : #public }
GtGraphGraphHorizontalDominanceTreeLayout >> simple [
	<gtExample>
	<script: 'self new simple asSpartaForm asMorph openInWindow'>
	| view nodes |

	view := self view.
	nodes := self nodes: (1 to: 50).
	self connect: nodes from: [ :x | x // 2 ].
	view addChildren: nodes.
	view layout: GtGraphHorizontalDominanceTreeLayout new.
	
	self applyLayoutIn: view.
	
	^ view
]
