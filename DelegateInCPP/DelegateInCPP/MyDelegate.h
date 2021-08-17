//
//  MyDelegate.h
//  DelegateInCPP
//
//  Created by Khushneet Inder Singh on 12/08/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

#ifndef MyDelegate_h
#define MyDelegate_h

class MyDelegate {
    
public:
    virtual bool willDoSomething() = 0;
    virtual void didSomething() = 0;
};

#endif /* MyDelegate_h */
