//
//  Scene12Controller.swift
//  Blocky
//
//  Created by Lodewijck Vogelzang on 22-08-14.
//  Copyright (c) 2014 Lodewijck Vogelzang. All rights reserved.
//

import UIKit

final class Level12: Level {
    
    let levelNumber = 12
    var tiles = [[1,1,0,1,1],[1,0,0,0,1],[1,0,0,0,1],[1,1,1,1,1]]
    let cameraFollowsBlock = false
    
    let blocky: Blocky
    let enemies: [Enemy]
    let foods: [Food]
    
    init() {
        
        let pattern0 = [("S", 0.8), ("S", 0.8), ("S", 0.8), ("E", 0.8), ("H", 1.0), ("W", 0.8), ("N", 0.8), ("N", 0.8), ("N", 0.8), ("H", 0.4)]
        let pattern1 = [("S", 0.8), ("S", 0.8), ("S", 0.8), ("W", 0.8), ("H", 1.0), ("E", 0.8), ("N", 0.8), ("N", 0.8), ("N", 0.8), ("H", 0.4)]
        
        let enemy0 = Enemy(enemyNumber: 0, startLocation: (0,3), animationPattern: pattern0)
        let enemy1 = Enemy(enemyNumber: 1, startLocation: (4,3), animationPattern: pattern1)
        
        let food0 = Food(foodNumber: 0)
        let food1 = Food(foodNumber: 1)
        
        blocky =  Blocky(startLocation: (2,3), endLocation: (2,3))
        enemies = [enemy0, enemy1]
        foods = [food0, food1]
        
    }
    
}