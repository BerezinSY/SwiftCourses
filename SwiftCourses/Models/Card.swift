//
//  Card.swift
//  SwiftCourses
//
//  Created by BEREZIN Stanislav on 04.11.2020.
//

import Foundation

struct Card {
    
    var isTappedOnGreenCard = false
    var isTappedOnOrangeCard = false
    var isTappedOnRedCard = false
    var isTappedOnPurpleCard = false
    
    var orangeIsHidden: Bool {
        isTappedOnRedCard || isTappedOnGreenCard || isTappedOnPurpleCard
    }
    
    var redIsHidden: Bool {
        isTappedOnGreenCard || isTappedOnOrangeCard || isTappedOnPurpleCard
    }
    
    var greenIsHidden: Bool {
        isTappedOnRedCard || isTappedOnOrangeCard || isTappedOnPurpleCard
    }
    
    var purpleIsHidden: Bool {
        isTappedOnRedCard || isTappedOnOrangeCard || isTappedOnGreenCard
    }
    
    var showTextView: Bool {
        isTappedOnRedCard ||
            isTappedOnOrangeCard ||
            isTappedOnGreenCard ||
            isTappedOnPurpleCard
    }
    
    var description: String {
        var text = ""
        if isTappedOnPurpleCard {
            text = """
                В данном курсе вы сможете изучить основы программирования
                на Swift
                """
        } else if isTappedOnOrangeCard {
            text = """
                Данный курс полностью посвящен разработке приложений на
                фреймворке UIKit
                """
        } else if isTappedOnRedCard {
            text = """
                Курс посвящен разработке приложений на новом фреймворке SwiftUI
                """
        } else if isTappedOnGreenCard {
            text = """
                В данном курсе будут рассмотрены основные паттерны программирования,
                которые применяются при разработке приложений
                """
        }
        
        return text
    }
}
