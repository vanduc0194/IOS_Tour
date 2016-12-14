//
//  main.swift
//  Test
//
//  Created by NguyenVanDuc on 11/24/16.
//  Copyright © 2016 NguyenVanDuc. All rights reserved.
//

import Foundation

print("Hello, World!")

class StudentMarks {
    // Khai báo thuộc tính
    var diemToan = 8
    var diemLy = 9
    var diemHoa = 10
}


// Tạo thể hiện (object)
let sm = StudentMarks()

// Truy cập các thuộc tính của class
print("Điểm toán là \(sm.diemToan)")
print("Điểm lý là \(sm.diemLy)")
print("Điểm hoá là \(sm.diemHoa)")
