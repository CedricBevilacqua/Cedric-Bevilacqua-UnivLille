Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#classInstVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #tests }
DieTest >> testAddTwoDice [
	| hd |
	hd := (Die withFaces: 6) + (Die withFaces: 6).
	self assert: hd dice size = 2.
]

{ #category : #tests }
DieTest >> testAddingADiaAndHandle [
	| hd |
	hd := (Die withFaces: 6)
		+
		(DieHandle new addDie: 6;
			yourself).
		self assert: hd dice size equals: 2.
]

{ #category : #tests }
DieTest >> testAddingAnHandleWithADie [
	| handle res |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	res := handle + (Die withFaces: 20).
	self assert: res diceNumber equals: 3
]

{ #category : #tests }
DieTest >> testCreationIsOk [
	| d |
	d := Die withFaces: 20.
	self assert: d faces equals: 20
]

{ #category : #tests }
DieTest >> testInitializationIsOk [
	| d |
	d := Die new.
	self assert: d faces equals: 6
]

{ #category : #tests }
DieTest >> testRolling [
	| d |
	d := Die new.
	10 timesRepeat:
		[ self assert: (d roll between: 1 and: 6) ]
]
