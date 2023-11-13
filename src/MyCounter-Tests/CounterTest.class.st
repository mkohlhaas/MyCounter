"
A CounterTest is a test class for testing the behavior of Counter
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

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
