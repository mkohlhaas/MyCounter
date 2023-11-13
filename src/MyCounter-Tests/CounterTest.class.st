"
A CounterTest is a test class for testing the behavior of Counter
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #testing }
CounterTest >> testAllMethods [

	| c |
	c := Counter startingAt: 5.
	self assert: (c increment; count) equals: 6.
]

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [

	self
		assert: ((Counter startingAt: 19)
				 increment;
				 count)
		equals: 20
]

{ #category : #testing }
CounterTest >> testCounterisSetAndRead [

	| c |
	c := Counter new.
	c count: 2.
	self assert: c count equals: 2.
]

{ #category : #testing }
CounterTest >> testDecrement [

	| c |
	c := Counter new.
	c count: 2.
	c decrement; decrement.
	self assert: c count equals: 0.
]

{ #category : #testing }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c count: 2.
	c increment; increment.
	self assert: c count equals: 4.
]

{ #category : #testing }
CounterTest >> testInitialize [

	| c |
	c := Counter new.
	self assert: c count equals: 0.
]

{ #category : #testing }
CounterTest >> testStartingAt [

	| c |
	c := Counter startingAt: 5.
	self assert: c count equals: 5.
]
