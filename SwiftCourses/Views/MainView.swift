//
//  MainView.swift
//  SwiftCourses
//
//  Created by BEREZIN Stanislav on 03.11.2020.
//

import SwiftUI

struct MainView: View {
    
    @State private var card = Card()
    
    var body: some View {
        ZStack {
            TextView(
                text: "Кликните по карточке",
                textColor: Color.black,
                opacity: !card.showTextView ? 1: 0
            )
                .offset(x: 0, y: -250)
            RectangleView(
                logo: "Course1",
                colors: [Color.purple, Color.orange],
                opacity: card.purpleIsHidden ? 0: 1,
                offsetY: card.isTappedOnPurpleCard ? -180: -90,
                scaleEffect: card.isTappedOnPurpleCard ? 1: 0.94,
                title: "Основы Swift",
                subTitle: "8 уроков"
            )
            .onTapGesture {
                card.isTappedOnPurpleCard.toggle()
            }
            RectangleView(
                logo: "Course2",
                colors: [Color.orange, Color.green],
                opacity: card.orangeIsHidden ? 0: 1,
                offsetY: card.isTappedOnOrangeCard ? -180: -60,
                scaleEffect: card.isTappedOnOrangeCard ? 1: 0.96,
                title: "Работа в UIKit",
                subTitle: "16 уроков"
            )
            .onTapGesture {
                card.isTappedOnOrangeCard.toggle()
            }
            RectangleView(
                logo: "Course3",
                colors: [Color.pink, Color.blue],
                opacity: card.redIsHidden ? 0: 1,
                offsetY: card.isTappedOnRedCard ? -180: -30,
                scaleEffect: card.isTappedOnRedCard ? 1: 0.98,
                title: "Основы SwiftUI",
                subTitle: "8 уроков"
            )
            .onTapGesture {
                card.isTappedOnRedCard.toggle()
            }
            RectangleView(
                logo: "Course4",
                opacity: card.greenIsHidden ? 0: 1,
                offsetY: card.isTappedOnGreenCard ? -180: 0,
                title: "Паттерны",
                subTitle: "8 уроков"
            )
            .onTapGesture {
                card.isTappedOnGreenCard.toggle()
            }
            
            TextView(
                text: card.description,
                textColor: .black,
                opacity: card.showTextView ? 1: 0
            ).offset(x: 0, y: 20)
                .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
