//
//  GameScene.swift
//  Faces Extension
//
//  Created by Jamie vullo on 6/5/20.
//  Copyright © 2020 Jamie vullo. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var SecondHand:SKSpriteNode = SKSpriteNode()
    var MinuteHand:SKSpriteNode = SKSpriteNode()
    var HourHand:SKSpriteNode = SKSpriteNode()
    
    override func sceneDidLoad() {
        if let secHand:SKSpriteNode = self.childNode(withName: "SecondHand") as? SKSpriteNode{
        SecondHand = secHand
        }
        
        if let minHand:SKSpriteNode = self.childNode(withName: "MinuteHand") as? SKSpriteNode{
        MinuteHand = minHand
        }
        
        if let hrHand:SKSpriteNode = self.childNode(withName: "HourHand") as? SKSpriteNode{
        HourHand = hrHand
        }


        
        
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        let date = Date()
        let calendar = Calendar.current
        let hour = CGFloat(calendar.component(.hour, from: date))
        let minutes = CGFloat(calendar.component(.minute, from: date))
        let seconds = CGFloat(calendar.component(.second, from: date))
        SecondHand.zRotation = -1 * deg2rad(seconds * 6)
        MinuteHand.zRotation = -1 * deg2rad(minutes * 6)
        HourHand.zRotation = -1 * deg2rad(hour * 30 + minutes/2)
    }
    
    func deg2rad(_ number: CGFloat) -> CGFloat {
    return number * .pi / 180
    }
}
