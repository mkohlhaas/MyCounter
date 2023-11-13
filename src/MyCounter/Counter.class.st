"
A simple counter.
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'counter'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [

	^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [
	"get count"

	^ counter
]

{ #category : #accessing }
Counter >> count: anInteger [
	"set count"

	counter := anInteger
]

{ #category : #API }
Counter >> decrement [

	counter := counter - 1
]

{ #category : #accessing }
Counter >> increment [

	counter := counter + 1.
	^ self
]

{ #category : #initialization }
Counter >> initialize [

	super initialize.
	counter := 0.
	^ self.
]
