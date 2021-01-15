Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'counter'
	],
	#category : #CounterExercise
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	|c|
	c := Counter new.
	self assert: c count equals: 0.
	c count: 3.
	self assert: c count equals: 3.
]

{ #category : #tests }
CounterTest >> testDecrement [
	|c|
	c := Counter new.
	self assert: c count equals: 0.
	c decrement.
	self assert: c count equals: -1.
	c count: 5.
	c decrement ; decrement ; decrement ; decrement.
	self assert: c count equals: 1.
]

{ #category : #tests }
CounterTest >> testIncrement [
	|c|
	c := Counter new.
	self assert: c count equals: 0.
	c increment.
	self assert: c count equals: 1.
	c increment ; increment ; increment ; increment.
	self assert: c count equals: 5.
]

{ #category : #tests }
CounterTest >> testStartingAt [
	|c|
	c := Counter startingAt: 5.
	self assert: c count equals: 5.
]
