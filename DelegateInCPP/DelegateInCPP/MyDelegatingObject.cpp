//
//  MyDelegatingObject.cpp
//  DelegateInCPP
//
//  Created by Khushneet Inder Singh on 12/08/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

#include "MyDelegatingObject.hpp"
#include "MyDelegator.hpp"

bool MyDelegatingObject::willDoSomething() {
    return true;
}

void MyDelegatingObject::didSomething() {
    
}

void MyDelegatingObject::doYourTask(){
    MyDelegator d;
    d.setDelegate(this);
    d.doSomthing();
}
