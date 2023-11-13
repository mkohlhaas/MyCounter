"
A CounterTest is a test class for testing the behavior of Counter
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testAllMethods [

	| c |
	c := Counter startingAt: 5.
	self assert: (c increment; count) equals: 6.
]

{ #category : #tests }
CounterTest >> testCounterisSetAndRead [

	| c |
	c := Counter new.
	c count: 2.
	self assert: c count equals: 2.
]

{ #category : #tests }
CounterTest >> testDecrement [

	| c |
	c := Counter new.
	c count: 2.
	c decrement; decrement.
	self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c count: 2.
	c increment; increment.
	self assert: c count equals: 4.
]

{ #category : #tests }
CounterTest >> testInitialize [

	| c |
	c := Counter new.
	self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testStartingAt [

	| c |
	c := Counter startingAt: 5.
	self assert: c count equals: 5.
]
