//
//  MyDelegatingObject.hpp
//  DelegateInCPP
//
//  Created by Khushneet Inder Singh on 12/08/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

#ifndef MyDelegatingObject_hpp
#define MyDelegatingObject_hpp

#include <stdio.h>
#include "MyDelegate.h"

class MyDelegatingObject : public MyDelegate {
    
public:
    virtual bool willDoSomething();
    virtual void didSomething();
    void doYourTask();
};
#endif /* MyDelegatingObject_hpp */
