//
//  MyScene.m
//  4physicsBodys_Linked_By_RopeJoint
//
//  Created by YG on 2/17/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//


#import "MyScene.h"

@interface MyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;

@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* mySquare9;//add 7 more squares
@property SKSpriteNode* mySquare10;
@property SKSpriteNode* mySquare11;

@property SKSpriteNode* myShelf;
@property SKPhysicsJoint* myRopeJoint;
//@property SKPhysicsJoint* myRopeJoint1;
//@property SKPhysicsJoint* myRopeJoint2;
//@property SKPhysicsJoint* myRopeJoint3;
//@property SKPhysicsJoint* myRopeJoint4;
//@property SKPhysicsJoint* myRopeJoint5;
//@property SKPhysicsJoint* myRopeJoint6;
//@property SKPhysicsJoint* myRopeJoint7;



@property SKPhysicsJointSpring *mySpringJoint;
@property SKPhysicsJointSpring *mySpringJoint1;

@property SKPhysicsJointPin *myPinJoint;
@property SKPhysicsJointPin *myPinJoint1;
@property SKPhysicsJointPin *myPinJoint2;
@property SKPhysicsJointPin *myPinJoint3;
@property SKPhysicsJointPin *myPinJoint4;
@property SKPhysicsJointPin *myPinJoint5;
@property SKPhysicsJointPin *myPinJoint6;
@property SKPhysicsJointPin *myPinJoint7;

@property SKPhysicsJointFixed *myFixedJoin;
@property SKPhysicsJointFixed *myFixedJoin1;




@end

@implementation MyScene

-(void) activateJointRope{
    
    //limit
    _myRopeJoint = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    
    [self.physicsWorld addJoint:_myRopeJoint];
    

    //Pin
    //_myPinJoint = [SKPhysicsJointPin jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchor:_mySquare2.position];
    //[self.physicsWorld addJoint:_myPinJoint];
    _myPinJoint1 = [SKPhysicsJointPin jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchor:_mySquare3.position];
    [self.physicsWorld addJoint:_myPinJoint1];
    _myPinJoint2 = [SKPhysicsJointPin jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchor:_mySquare4.position];
    [self.physicsWorld addJoint:_myPinJoint2];
    _myPinJoint3 = [SKPhysicsJointPin jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchor:_mySquare5.position];
    [self.physicsWorld addJoint:_myPinJoint3];
    _myPinJoint4 = [SKPhysicsJointPin jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchor:_mySquare6.position];
    [self.physicsWorld addJoint:_myPinJoint4];
    _myPinJoint5 = [SKPhysicsJointPin jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchor:_mySquare7.position];
    [self.physicsWorld addJoint:_myPinJoint5];
    
    
    //Fixed
    _myFixedJoin = [SKPhysicsJointFixed jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare8.physicsBody anchor:_mySquare8.position];
    [self.physicsWorld addJoint:_myFixedJoin];
    _myFixedJoin1 = [SKPhysicsJointFixed jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare10.physicsBody anchor:_mySquare10.position];
    [self.physicsWorld addJoint:_myFixedJoin1];
    
    
    //Spring
    _mySpringJoint = [SKPhysicsJointSpring jointWithBodyA:_mySquare8.physicsBody bodyB:_mySquare9.physicsBody anchorA:_mySquare8.position anchorB:_mySquare8.position];
    
    [self.physicsWorld addJoint:_mySpringJoint];
    
    _mySpringJoint1 = [SKPhysicsJointSpring jointWithBodyA:_mySquare10.physicsBody bodyB:_mySquare11.physicsBody anchorA:_mySquare10.position anchorB:_mySquare10.position];
    
    [self.physicsWorld addJoint:_mySpringJoint1];
    
}



-(void) spawnSquares{
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(70, 70)];
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(60, 60)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(50, 50)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(40, 40)];
    _mySquare5 =[[SKSpriteNode alloc]initWithColor:[SKColor cyanColor] size:CGSizeMake(30, 30)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(20, 20)];
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(10, 10)];
    
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(15, 15)];
    _mySquare9 =[[SKSpriteNode alloc]initWithColor:[SKColor blackColor] size:CGSizeMake(10, 10)];
    _mySquare10 =[[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(15, 15)];
    _mySquare11 =[[SKSpriteNode alloc]initWithColor:[SKColor blackColor] size:CGSizeMake(10, 10)];

    
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.7)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.5)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3.5)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4.5)];
    
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.7, self.size.height/1.78)];
    [_mySquare9 setPosition:CGPointMake(self.size.width/1.7, self.size.width)];
    [_mySquare10 setPosition:CGPointMake(self.size.width/1.41, self.size.height/1.58)];
    [_mySquare11 setPosition:CGPointMake(self.size.width/1.41, self.size.height/1.58)];


    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare9.size];
    _mySquare10.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare10.size];
    _mySquare11.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare11.size];
    


    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    
    [_mySquare8.physicsBody setRestitution:1.0];
    [_mySquare9.physicsBody setRestitution:1.0];
    [_mySquare10.physicsBody setRestitution:1.0];
    [_mySquare11.physicsBody setRestitution:1.0];



    [self addChild:_mySquare7];
    [self addChild:_mySquare6];
    [self addChild:_mySquare5];
    [self addChild:_mySquare4];
    [self addChild:_mySquare3];
    [self addChild:_mySquare2];
    [self addChild:_mySquare1];
    
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    [self addChild:_mySquare10];
    [self addChild:_mySquare11];




    
}

-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 20)];
    _myShelf.position = CGPointMake(self.size.width/2.4, self.size.height/2);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    
    [_myShelf.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf];
    
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
      //  [self activeJointSpring];
        [self makeShelf];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
        
        // [_mySquare1.physicsBody setDynamic:NO];
        //  [_mySquare2.physicsBody setDynamic:NO];
        
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
