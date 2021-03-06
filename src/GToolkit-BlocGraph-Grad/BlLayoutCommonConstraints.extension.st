Extension { #name : #BlLayoutCommonConstraints }

{ #category : #'*GToolkit-BlocGraph-Grad' }
BlLayoutCommonConstraints >> gradHierarchical [
	^ self at: GtGradHierarchicalLayout
]

{ #category : #'*GToolkit-BlocGraph-Grad' }
BlLayoutCommonConstraints >> gradKamadaKawai [
	^ self at: GtGradKamadaKawaiLayout
]

{ #category : #'*GToolkit-BlocGraph-Grad' }
BlLayoutCommonConstraints >> gradTree [
	^ self at: GtGradAbstractTreeLayout
]
