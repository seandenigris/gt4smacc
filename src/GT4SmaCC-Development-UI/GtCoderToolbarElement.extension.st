Extension { #name : #GtCoderToolbarElement }

{ #category : #'*GT4SmaCC-Development-UI' }
GtCoderToolbarElement >> addParserTab: look [
	<gtCreateComponentTab: 100>
	^ BrTab new
		look: BrGlamorousTabLook new;
		label: 'SmaCC';
		stencil: [ | element |
			element := GtSmaCCCreateParserElement new.
			element
				behaviorBlock: [ :cls | 
					look hide.
					navigationModel selectClass: cls ].
			navigationModel
				selectedPackageDo: [ :package | element forPackage: package ].
			navigationModel
				selectedTagDo: [ :tag | element forPackageTag: tag ].
			element ]
]
