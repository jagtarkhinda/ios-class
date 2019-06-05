//
//  GameScene.swift
//  MyFirstGame
//
//  Created by MacStudent on 2019-06-05.
//  Copyright © 2019 boxlife. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        // GameEngine constructor from android
        
        // setup the initial position of your sprites
        
        // ADD SOME TEXT TO THE SCREEN
        
        // 1. create a "label" object
        let scoreLabel = SKLabelNode(text:"HELLO WORLD!")
        
        // 2. set the (x,y) position of the label
        scoreLabel.position = CGPoint(x: 0, y: 0)
        
        // 3. change font/color of text
        scoreLabel.fontName = "Avenir"
        scoreLabel.fontSize = 45
        scoreLabel.fontColor = SKColor.yellow
        
        // 4. add the label to the scene
        //ggjgjgjdjg gjdjgjd
        addChild(scoreLabel)
        
        
        /// --------
        // add a square
        
        // 1. create a "square" object
        let square = SKSpriteNode(color: SKColor.red,
                                  size: CGSize(width: 100, height: 100))
        
        // 2. set the (x,y) position of the square
        square.position = CGPoint(x: 0, y:0)
        // 3. OPTIONAL: change the properties of the square
        // by default the anchor is at (0.5,0.5) - center
        //square.anchorPoint(CGPoint(x:0.5,y:0.5))
        square.anchorPoint = CGPoint(x: 1, y: 1)
        
        // 4. add the square to the scene
        addChild(square)
        
        
        
        // 1. create a "square" object
        let square1 = SKSpriteNode(color: SKColor.yellow,
                                  size: CGSize(width: 50, height: 50))
        
        // 2. set the (x,y) position of the square
        square1.position = CGPoint(x: 150, y:350)
        
        // 3. OPTIONAL: change the properties of the square
        
        // 4. add the square to the scene
        addChild(square1)
        
        
        // ---------------
        // Add an image node
        // 1. make the image
        let pikachuNode = SKSpriteNode(imageNamed: "pikachu")
        
        // 2. set the position
        pikachuNode.position = CGPoint(x:100, y:100)
        
        
        // 3. optional: configure any other properties
        
        // 4. add to scene
        //addChild(pikachuNode)
    
        
        // OUTPUT THE SCREEN SIZE
        let height = self.frame.size.height
        let width = self.frame.size.width
     
        print("Screen height: \(height)")
        print("Screen width: \(width)")
        
        // OPTION 2: use this if it easier - you get
        // the same result
        let height2 = self.size.height
        let width2 = self.size.width
        
        print("Screen height2: \(height2)")
        print("Screen width2: \(width2)")
        
        
        
        // MOVEMENT:
        
        // 1. define the movement pattern
        let m1 = SKAction.moveBy(x: 50, y: 0, duration: 0.5)
        let m2 = SKAction.moveBy(x:-50, y:0, duration:2)
        
        // chain patterns together
        let sequence:SKAction = SKAction.sequence([ m1,m2])
//        square1.run(sequence)

        let m3 = SKAction.repeatForever(sequence)
        square1.run(m3)
    }
}
