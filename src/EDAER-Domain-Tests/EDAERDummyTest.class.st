Class {
	#name : #EDAERDummyTest,
	#superclass : #TestCase,
	#instVars : [
		'a',
		'b'
	],
	#category : #'EDAER-Domain-Tests'
}

{ #category : #tests }
EDAERDummyTest >> testTautology [
	self assert: true
]
