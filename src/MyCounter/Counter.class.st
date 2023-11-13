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
