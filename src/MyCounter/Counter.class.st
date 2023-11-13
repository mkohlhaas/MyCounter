"
`Counter` is a simple concrete class which supports incrementing and decrementing.

Its API is
- `decrement` 
- `increment`
- `count`

Its creation message is `startAt:`
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'counter'
	],
	#category : #MyCounter
}

{ #category : #'instance creation' }
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

{ #category : #modifying }
Counter >> decrement [

	counter := counter - 1
]

{ #category : #modifying }
Counter >> increment [

	counter := counter + 1
]

{ #category : #initialization }
Counter >> initialize [

	super initialize.
	counter := 0
]

{ #category : #printing }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream nextPut: $(.
	aStream nextPutAll: self count asString.
	aStream nextPut: $).
	
]
