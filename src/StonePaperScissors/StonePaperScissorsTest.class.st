Class {
	#name : #StonePaperScissorsTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
StonePaperScissorsTest >> testAgains [
	self assert: (Stone new play: Stone new) equals: #draw.
	self assert: (Scissors  new play: Scissors  new) equals: #draw.
	self assert: (Paper new play: Paper new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperIsWinning [
	self assert: (Stone new play: Paper new) equals: #paper.
	self assert: (Paper new play: Stone new) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorIsWinning [
	self assert: (Scissors new play: Paper new) equals: #scissors.
	self assert: (Paper new play: Scissors new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneIsWinning [
	self assert: (Stone new play: Scissors new) equals: #stone.
	self assert: (Scissors new play: Stone new) equals: #stone
]
