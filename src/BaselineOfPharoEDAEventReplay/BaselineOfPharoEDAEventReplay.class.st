Class {
	#name : #BaselineOfPharoEDAEventReplay,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoEDAEventReplay
}

{ #category : #baselines }
BaselineOfPharoEDAEventReplay >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			self includePharoEDA: spec.
            self includeTeapot: spec.
			self declarePackagesIn: spec.
			self declareGroupsIn: spec ]
]

{ #category : #meta }
BaselineOfPharoEDAEventReplay >> declareGroupsIn: spec [
	spec
		group: 'core'
			with:
			#(#'EDAER-Domain');
		group: 'tests'
			with:
			#(#'EDAER-Domain-Tests');
		group: 'default' with: #('core' 'tests')
]

{ #category : #meta }
BaselineOfPharoEDAEventReplay >> declarePackagesIn: spec [
	spec
		package: #'EDAER-Domain'
			with: [ spec requires: #('PharoEDA' 'Teapot') ];
		package: #'EDAER-Domain-Tests'
			with: [ spec requires: #('EDAER-Domain') ]
]

{ #category : #dependencies }
BaselineOfPharoEDAEventReplay >> includePharoEDA: spec [
	spec
		baseline: 'PharoEDA'
		with: [ spec repository: 'github://osoco/pharo-eda:main' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfPharoEDAEventReplay >> includeTeapot: spec [
	spec
		baseline: 'Teapot'
		with: [ spec repository: 'github://zeroflag/Teapot/source' ].
    ^ spec
]
