Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'counter'
	],
	#category : #CounterExercise
}

{ #category : #accessing }
Counter class >> startingAt: startValue [
	^self new count: startValue.
]

{ #category : #accessing }
Counter >> count [
	^counter
]

{ #category : #accessing }
Counter >> count: anInteger [
	counter := anInteger
]

{ #category : #accessing }
Counter >> decrement [
	counter := counter - 1.
]

{ #category : #accessing }
Counter >> increment [
	counter := counter + 1.
]

{ #category : #accessing }
Counter >> initialize [
	super initialize.
	counter := 0.
]

{ #category : #accessing }
Counter >> printOn: text [
	super printOn: text.
	text
		nextPutAll: ' with value ';
		nextPutAll: counter printString.
]
