//
//  Command.swift
//  Patterns
//
//  Created by Khushneet Inder Singh on 10/7/19.
//  Copyright © 2019 Khushneet Inder Singh. All rights reserved.
//

import Foundation

protocol Command {
    func execute()
}

struct Light {
    func on() {
        
    }
}

struct LightOnCommand : Command {
    var light : Light
    
    init(_ light:Light) {
        self.light = light
    }
    
    func execute() {
        light.on()
    }
}
