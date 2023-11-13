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

{ #category : #accessing }
Counter >> decrement [

	counter := counter - 1.
	^ self
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

{ #category : #printing }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream nextPut: $(.
	aStream nextPutAll: self count asString.
	aStream nextPut: $).
	
]
