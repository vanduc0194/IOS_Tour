//
//  func.swift
//  LinkedList
//
//  Created by NguyenVanDuc on 11/21/16.
//  Copyright © 2016 NguyenVanDuc. All rights reserved.
//

import Foundation


class Node {
    var data : Int
    var next : Node?
    init(data: Int){
        self.data = data
    }
    
    init(data: Int, next: Node?) {
        self.data = data
        self.next = next
    }
}

class LinkList{
    var head: Node?
    init() {
        head = nil
    }
    
    func insertAtBeginning(value: Int){
        let newNode = Node(data: value)
        if(head == nil){
            newNode.next = nil
            head = newNode
        }
        else{
            newNode.next = head
            head = newNode
        }
        print("One node inserted!!!")
    }
    
    func insertAtEnd(value: Int){
        let newNode = Node(data: value, next: nil)
        if(head == nil){
            head = newNode
        }
        else{
            var temp = head
            while(temp?.next != nil){
                temp = temp?.next
                temp?.next = newNode
            }
        }
        print("One node inserted!!!")
    }
    
    func insertAfter(value: Int, value1: Int){
        let newNode = Node(data: value)
        if(head == nil){
            newNode.next = nil
            head = newNode
        }
        else{
            var temp = head
            while(temp?.data != value1){
                temp = temp?.next
                newNode.next = temp?.next
                temp?.next = newNode
            }
        }
        print("One node inserted!!!")
    }
    
    func removeAtBeginning(){
        if(head == nil){
            print("List is Empty!")
        }
        else{
            if(head?.next == nil){
                head = nil
            }
            else{
                head = head?.next
            }
            print("One node deleted!!!")
        }
    }
    
    func removeEnd(){
        if(head == nil){
            print("List is Empty!")
        }
        else{
            var temp = head
            var temp1 = head
            if(head?.next == nil){
                head = nil
            }
            else{
                while(temp?.next != nil){
                    temp1 = temp
                    temp = temp?.next
                }
                temp1?.next = nil
            }
            print("One node deleted!!!")
        }
    }
    
    func display(){
        if(head == nil){
            print("List is Empty")
        }
        else{
            var temp = head
            print("--Link list--")
            while(temp?.next != nil){
                print(temp?.data as Any)
                temp = temp?.next
            }
        }
    }
    
    func menu(){
        print("--Menu: Link List of Ints--")
        print("1. Display LinkList")
        print("2. Insert a Node")
        print("3. Remove a Node")
        print("4. Exit")
        print("Enter your choice: ")
    }
}
    
    while(true){
        var choice: Int
    menu()
    choice = Int(readLine()!)!
    switch(choice){
    case 1: display()
    case 2:
    print("Insert at: ")
    print("1. At Beginning")
    print("2. At End")
    print("3. After node with value...")
    
    var choice1 = Int(readLine()!)
    switch(choice1){
    case 1:
    print("Enter value: ")
    var value = Int(readLine()!)
    insertAtBeginning(value: value)
    case 2:
    print("Enter value: ")
    var value = Int(readLine()!)
    insertAtEnd(value: value)
    case 3:
    print("Enter value: ")
    var value = Int(readLine()!)
    print("After value: ")
    var value1 = Int(readLine()!)
    InsertAfter(value: value, value1: value1)
    
    }
    
    var value = Int(readLine()!)
    push(value: value!)
    case 3: pop()
    case 4: exit(0)
    default:
    print("Wrong selection. Try again!!!")
    }
    }








