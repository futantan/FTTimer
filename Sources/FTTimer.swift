//
//  FTTimer.swift
//
//  Created by luckytantanfu on 8/9/16.
//  Copyright © 2016 futantan. All rights reserved.
//



import Foundation

extension NSTimer {
    private class FTTimerClosureWraper {
        private (set) var timerClosure: () -> ()
        
        init(timerClosure: () -> () ) {
            self.timerClosure = timerClosure
        }
    }
    
    public class func scheduledTimerWithTimeInterval(timeInterval: NSTimeInterval, repeats: Bool, block: () -> ()) -> NSTimer {
        return scheduledTimerWithTimeInterval(timeInterval,
                                              target: self,
                                              selector: #selector(_executeBlockFromTimer),
                                              userInfo: FTTimerClosureWraper(timerClosure: block),
                                              repeats: repeats)
    }
    
    class func _executeBlockFromTimer(timer: NSTimer) {
        if let timerClosureWraper = timer.userInfo as? FTTimerClosureWraper {
            timerClosureWraper.timerClosure()
        }
    }
}