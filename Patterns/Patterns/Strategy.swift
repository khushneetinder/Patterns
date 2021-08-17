//
//  main.swift
//  Strategy
//
//  Created by Khushneet Inder Singh on 9/28/19.
//  Copyright © 2019 Khushneet Inder Singh. All rights reserved.
//

import Foundation

protocol FlyBehaviour {
	func Fly()
}

struct FlyWithWings : FlyBehaviour{
	func Fly() {
		print("See I can fly")
	}
}

struct FlyNoWay : FlyBehaviour{
	func Fly() {
		print("FLying has nothing to do with me")
	}
}

protocol QuackBehaviour {
	func Quack()
}

struct Quack : QuackBehaviour{
	func Quack() {
		print("I quack")
	}
}

struct Squeak : QuackBehaviour{
	func Quack() {
		print("I squeak")
	}
}

struct MuteQuack : QuackBehaviour{
	func Quack() {
		print("<<Silence>>")
	}
}

protocol Duck {
	var flyBehaviour : FlyBehaviour { get }
	var quarkBehaviour : QuackBehaviour { get }
	func Swim()
	func Display()
	func PerformFly()
	func PerformQuack()
}

extension Duck {
	// Optional method
	func Swim() {
		
	}
	func PerformFly() {
		flyBehaviour.Fly()
	}
	func PerformQuack() {
		quarkBehaviour.Quack()
	}
}

struct MallardDuck : Duck {
	var flyBehaviour: FlyBehaviour {
		get {
			return FlyWithWings()
		}
	}
	var quarkBehaviour: QuackBehaviour {
		get {
			return Quack()
		}
	}
	func Display() {
		print("I'm real Mallard Duck")
	}
	func Swim() {
		print("Mallard Duck can swim")
	}
}

struct RedheadDuck : Duck {
	var flyBehaviour: FlyBehaviour {
		get {
			return FlyWithWings()
		}
	}
	var quarkBehaviour: QuackBehaviour {
		get {
			return Quack() as QuackBehaviour
		}
	}
	func Display() {
		print("I'm real Readhed Duck")
	}
}

struct RubberDuck : Duck {
	var flyBehaviour: FlyBehaviour {
		get {
			return FlyNoWay()
		}
	}
	
	var quarkBehaviour: QuackBehaviour {
		get {
			return Squeak()
		}
	}
	
	func Swim() {
		print("Rubber Duck can swim")
	}
	func Display() {
		print("I'm just a Rubber Duck")
	}
}

struct Decoy : Duck {
	var flyBehaviour: FlyBehaviour {
		get {
			return FlyNoWay()
		}
	}
	var quarkBehaviour: QuackBehaviour {
		get {
			return MuteQuack()
		}
	}
	func Display() {
		print("I'm just a Decoy")
	}
	func PerformQuack() {
		print("na")
	}
}

struct Strategy {
	static func run () {
		let duck : Duck = Decoy()
		
		duck.Display()
		duck.Swim()
		duck.PerformFly()
		duck.PerformQuack()
	}
}
