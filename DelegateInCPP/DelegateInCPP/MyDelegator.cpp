//
//  MyDelegator.cpp
//  DelegateInCPP
//
//  Created by Khushneet Inder Singh on 12/08/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

#include "MyDelegator.hpp"

void MyDelegator::doSomthing() {
    if (delegate->willDoSomething()) {
        printf("Nothing Special");
        delegate->didSomething();
    }
    
}
