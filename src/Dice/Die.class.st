Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: anInteger [
	|d|
	d := Die new.
	d faces: anInteger.
	^ d
]

{ #category : #accessor }
Die >> + aDicable [
	^ aDicable sumWithDie: self.
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessor }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [
	super initialize.
	faces := 6
]

{ #category : #accessing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ')'.
]

{ #category : #accessing }
Die >> roll [
	^ faces atRandom
]

{ #category : #accessing }
Die >> sumWithDie: aDie [
	^ DieHandle new addDie: self;
						 addDie: aDie;
						 yourself.
]

{ #category : #accessor }
Die >> sumWithHandle: aDieHandle [
	| handle |
	handle := DieHandle new.
	handle addDie: self.
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
]
