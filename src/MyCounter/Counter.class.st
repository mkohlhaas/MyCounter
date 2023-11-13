"
A simple counter.
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	"get count"

	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	"set count"

	count := anInteger
]

{ #category : #API }
Counter >> decrement [

	count := count - 1
]
