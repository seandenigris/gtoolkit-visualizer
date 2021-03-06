"
!Tree layout

This layout orders a graph's nodes in such a way that they form  a tree. The layout supports creation of both vertical and horizontal trees. In the first case the root node is at the top, with all of the other nodes being bellow it, as seen in the following example:

${example:name=GtGradVerticalTreeLayoutExamples>>#simpleTree|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

On the other hand,  in case of a  horizontal tree , the root node is placed to the left of all other nodes. An example can be seen below:

${example:name=GtGradHorizontalTreeLayoutExamples>>#simpleTree|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

The layout allows customization of distances between levels of the tree, as well as the nodes. The default value of distance between nodes is 1, meaning that the nodes on the same level are very close to each other.  The default value of level distance is 10. The next examples showcase horizontal and vertical trees created using firstly larger than default values of the  distances, and, secondly, with a smaller level distance.

Big distances:
${example:name=GtGradVerticalTreeLayoutExamples>>#simpleTreeWithBiggerDistances|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$
${example:name=GtGradHorizontalTreeLayoutExamples>>#simpleTreeWithBiggerDistances|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

Small distances:
${example:name=GtGradVerticalTreeLayoutExamples>>#simpleTreeWithSmallerDistances|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

${example:name=GtGradHorizontalTreeLayoutExamples>>#simpleTreeWithSmallerDistances|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

The layout can also handle graph which are not trees. This is done by firstly traversing the graph using DFS and forming a tree.  
An example of this feature shown bellow:

${example:name=GtGradVerticalTreeLayoutExamples>>#graphWithCycles|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

${example:name=GtGradHorizontalTreeLayoutExamples>>#graphWithCycles|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

Additionally, if the layout handles laying out a disconnected graph. That is, a graph that contains several disconnected componnents.
It is possible to configure the distance between trees, as demonstrated by the next examples,  with the first one having the
default distance between trees, and the second one a larger value of the distance parameter. The examples also demonstrate that disconnected horizontal trees are positioned one below the other, while in case of vertical trees, these components of a graph are placed one left/right of each other.

${example:name=GtGradVerticalTreeLayoutExamples>>#disconnectedGraph|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

${example:name=GtGradHorizontalTreeLayoutExamples>>#disconnectedGraphBiggerDistance|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

Another important aspect of the tree layout is that it supports alignment of nodes. More precisely, it can be specified if the nodes should have top, center or bottom alignment. In case of the horizontal layout, this actually means that nodes will have left, ceter or right alignment. Examples of different alignmets are shown in the next couple of examples:

${example:name=GtGradVerticalTreeLayoutExamples>>#simpleTreeWith10NodesOfIncreasingSizeRootAlignment|expanded=true|previewExpanded=true|previewShow=#gtLiveFor:}$

${example:name=GtGradHorizontalTreeLayoutExamples>>#simpleTreeWithNodesOfIncreasingSizeRootAlignment|expanded=true|previewExpanded=true|previewShow=#gtLiveFor:}$


${example:name=GtGradVerticalTreeLayoutExamples>>#simpleTreeWith10NodesOfIncreasingSizeCenterAlignment|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$
${example:name=GtGradHorizontalTreeLayoutExamples>>#simpleTreeWithNodesOfIncreasingSizeCenterAlignment|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

${example:name=GtGradVerticalTreeLayoutExamples>>#simpleTreeWith10NodesOfIncreasingSizeLeafAlignment|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

${example:name=GtGradHorizontalTreeLayoutExamples>>#simpleTreeWithNodesOfIncreasingLeafAlignment|expanded=true|previewExpanded=true|previewShow=gtLiveFor:}$

The trees can be reversed, so that in case of  a vertical tree, the root node is at the bottom, while in case of the horizontal tree, the root node is to the right of the all other nodes. The two examples are shown next:

${example:name=GtGradVerticalTreeLayoutExamples>>#simpleTreeReversed|expanded=true|expandedPreview=true|show=gtLiveFor:}$
${example:name=GtGradHorizontalTreeLayoutExamples>>#simpleTreeReversed|expanded=true|expandedPreview=true|show=gtLiveFor:}$

The previous examples demonstrate that this tree algorithm tends to create compact trees. However, in some cases, this is not preferable. By setting separateSubtrees parameter's value to true, all subtrees are clearly separated. An example is seen below:

${example:name=GtGradVerticalTreeLayoutExamples>>#distinctSubtrees|expanded=true|expandedPreview=true|show=gtLiveFor:}$
${example:name=GtGradHorizontalTreeLayoutExamples>>#distinctSubtrees|expanded=true|expandedPreview=true|show=gtLiveFor:}$


"
Class {
	#name : #GtGradTreeLayoutExamples,
	#superclass : #GtGradAbstractTreeLayoutExamples,
	#category : #'GToolkit-BlocGraph-Grad-Examples'
}

{ #category : #example }
GtGradTreeLayoutExamples >> binaryTreeWith15Nodes [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> binaryTreeWith15NodesReversed [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> binaryTreeWith7Nodes [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructBinaryTreeWith15Nodes [
	<gtExample>		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 15).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7);
	add: (4->8); add: (4->9); add: (5->10); add: (5->11); add: (6->12); add: (6->13);
	add: (7->14); add: (7->15).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: ((theNodes at: 1) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 1) graph) nodesAlongIncomingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 2) graph) nodesAlongIncomingEdgesCount equals: 1.
	self assert: ((theNodes at: 2) graph) connectedNodesCount equals: 3.
	self assert: ((theNodes at: 14) graph) nodesAlongOutgoingEdgesCount equals: 0. 
	self assert: ((theNodes at: 14) graph) nodesAlongIncomingEdgesCount equals: 1. 
	self assert: ((theNodes at: 15) graph) nodesAlongOutgoingEdgesCount equals: 0.
	self assert: ((theNodes at: 15) graph) nodesAlongIncomingEdgesCount equals: 1.

	self assert: theEdges size equals: 14.

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructBinaryTreeWith7Nodes [
	<gtExample>		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 7).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: ((theNodes at: 1) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 1) graph) nodesAlongIncomingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 2) graph) nodesAlongIncomingEdgesCount equals: 1.
	self assert: ((theNodes at: 2) graph) connectedNodesCount equals: 3.
	self assert: ((theNodes at: 6) graph) nodesAlongOutgoingEdgesCount equals: 0. 
	self assert: ((theNodes at: 6) graph) nodesAlongIncomingEdgesCount equals: 1. 
	self assert: ((theNodes at: 7) graph) nodesAlongOutgoingEdgesCount equals: 0.
	self assert: ((theNodes at: 7) graph) nodesAlongIncomingEdgesCount equals: 1.

	self assert: theEdges size equals: 6.

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructDisconnectedGraph [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 12).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7);
	add: (6->2); add: (5->3); add: (8->9); add: (8->10); add:(10->11); add: (11->12).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: theEdges size equals: 12.

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructDisconnectedGraphWithRootsOfDifferentSizes [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |

	theNodes := self nodes: (1 to: 12).
	
	pairsOfNodes := OrderedCollection new.
	
	"The first tree's root is. The second root is 8"
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7);
	add: (6->2); add: (5->3); add: (8->9); add: (8->10); add:(10->11); add: (11->12).
	
	(theNodes at: 1) size: 50@50.
	(theNodes at: 8) size: 80@70.
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: theEdges size equals: 12.

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructDisconnectedGraphWithTreeContainingOneNode [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 5).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (2->3); add: (2->4); add: (2->5).

	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	

	^ theNodes -> theEdges

	
 
]

{ #category : #'examples - instance creation' }
GtGradTreeLayoutExamples >> constructForest: theNodes [
	^ GtGradDFSTreeForest from: theNodes separateSubtrees: false
]

{ #category : #'examples - instance creation' }
GtGradTreeLayoutExamples >> constructGraphWithANodeWithSeveralIncomingEdges [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 6).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add: (1->4); add: (1->5);
					 add: (2->6); add: (3->6); add: (4->6); add: (5->6).

	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructGraphWithCycles [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 7).
	theNodes doWithIndex: [ :node :index |
			node labeled: (index asString).
		].
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7);
	add: (6->2); add: (5->3).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: theEdges size equals: 8.

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructSimpleTree [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 15).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7);
	add: (4->8); add: (4->9); add: (5->10); add: (5->11); add: (6->12); add: (6->13); add: (6->14); 	add: (6->15).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: ((theNodes at: 1) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 1) graph) nodesAlongIncomingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 2) graph) nodesAlongIncomingEdgesCount equals: 1.
	self assert: ((theNodes at: 6) graph) nodesAlongOutgoingEdgesCount equals: 4. 
	self assert: ((theNodes at: 6) graph) nodesAlongIncomingEdgesCount equals: 1. 
	self assert: ((theNodes at: 15) graph) nodesAlongOutgoingEdgesCount equals: 0.
	self assert: ((theNodes at: 15) graph) nodesAlongIncomingEdgesCount equals: 1.

	self assert: theEdges size equals: 14.

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructTreeWith10NodesOfIncreasingSize [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 10).
	
	theNodes doWithIndex: [ :aNodeElement :index |
		aNodeElement size: 10 asPoint * index.
	].
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7);
	add: (4->8); add: (4->9); add: (5->10).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructTreeWithNodesOfDifferentSizes [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 4).
	(theNodes at: 2) size: 40@40.
	(theNodes at: 3) size: 100@100.
	(theNodes at: 4) size: 70@70.
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(1->4).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: ((theNodes at: 1) graph) nodesAlongOutgoingEdgesCount equals: 3.
	self assert: ((theNodes at: 1) graph) nodesAlongIncomingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongOutgoingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongIncomingEdgesCount equals: 1.
	self assert: ((theNodes at: 2) graph) nodesAlongOutgoingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongIncomingEdgesCount equals: 1.
	self assert: ((theNodes at: 2) graph) nodesAlongOutgoingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongIncomingEdgesCount equals: 1.
	self assert: theEdges size equals: 3.

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructTreeWithNodesOfIncreasingSize [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 15).
	
	theNodes doWithIndex: [ :aNodeElement :index |
		aNodeElement size: 10 asPoint * index.
	].
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(2->4); add: (2->5); add: (3->6); add: (3->7);
	add: (4->8); add: (4->9); add: (5->10); add: (5->11); add: (6->12); add: (6->13); add: (6->14); add: (6->15).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	
	self assert: ((theNodes at: 1) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 1) graph) nodesAlongIncomingEdgesCount equals: 0.
	self assert: ((theNodes at: 2) graph) nodesAlongOutgoingEdgesCount equals: 2.
	self assert: ((theNodes at: 2) graph) nodesAlongIncomingEdgesCount equals: 1.
	self assert: ((theNodes at: 6) graph) nodesAlongOutgoingEdgesCount equals: 4. 
	self assert: ((theNodes at: 6) graph) nodesAlongIncomingEdgesCount equals: 1. 
	self assert: ((theNodes at: 15) graph) nodesAlongOutgoingEdgesCount equals: 0.
	self assert: ((theNodes at: 15) graph) nodesAlongIncomingEdgesCount equals: 1.

	self assert: theEdges size equals: 14.

	^ theNodes -> theEdges

	
 
]

{ #category : #'examples - instance creation' }
GtGradTreeLayoutExamples >> constructTreeWithNodesWithAndWithoutChildrenOnTheSameLevel [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 7).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add:(1->4); add: (2->5); add: (2->6);
	 add: (2->7).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	

	^ theNodes -> theEdges

	
 
]

{ #category : #example }
GtGradTreeLayoutExamples >> constructTreeWithNodesWithAndWithoutChildrenOnTheSameLevelBigger [
	<gtExample>
		
	| theNodes  pairsOfNodes theEdges |
	
	theNodes := self nodes: (1 to: 23).
	
	pairsOfNodes := OrderedCollection new.
	pairsOfNodes add: (1->2); add: (1->3); add: (2->4); add: (2->5); add: (2->6);
	add: (4->10); add: (4->11); add: (4->12); add: (5->13); add: (5->14); add: (5->15);
	add: (6->16); add: (6->17); add: (6->18); add: (3->7); add: (3->8); add: (3->9);
	add: (7->19); add: (7->20); add: (7->21); add:(21->22); add:(21->23).
	
	theEdges := self connectPairsOfNodes: theNodes pairs: pairsOfNodes.
	

	^ theNodes -> theEdges

	

]

{ #category : #example }
GtGradTreeLayoutExamples >> disconnectedGraph [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> disconnectedGraphBiggerDistance [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> disconnectedGraphWithRootsOfDifferentSize [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> disconnectedGraphWithTreeContainingOneNode [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> distinctSubtreesBiggerTree [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> graphWithCycles [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> simpleTree [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> simpleTreeReversed [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> simpleTreeWithBiggerDistances [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> simpleTreeWithNodesOfDifferentSizes [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> simpleTreeWithNodesOfIncreasingSizeCenterAlignment [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> simpleTreeWithNodesOfIncreasingSizeRootAlignment [
	^ self subclassResponsibility
]

{ #category : #example }
GtGradTreeLayoutExamples >> simpleTreeWithSmallerDistances [
	^ self subclassResponsibility
]

{ #category : #'examples - instance creation' }
GtGradTreeLayoutExamples >> treeLayout [
	self subclassResponsibility

]

{ #category : #'examples - instance creation' }
GtGradTreeLayoutExamples >> treeLayout: levelDistance nodeDistance: nodeDistance [
	self subclassResponsibility

]

{ #category : #'examples - instance creation' }
GtGradTreeLayoutExamples >> treeLayout: levelDistance nodeDistance: nodeDistance treesDistance: treesDistance [
	self subclassResponsibility

]
