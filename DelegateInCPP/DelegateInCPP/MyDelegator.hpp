//
//  MyDelegator.hpp
//  DelegateInCPP
//
//  Created by Khushneet Inder Singh on 12/08/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

#ifndef MyDelegator_hpp
#define MyDelegator_hpp

#include <stdio.h>
#include "MyDelegate.h"

class MyDelegator {
    MyDelegate* delegate;
    
public:
    void doSomthing();
    void setDelegate(MyDelegate* d){
        this->delegate = d;
    }
};
#endif /* MyDelegator_hpp */
