//
//  ContentView.swift
//  SwiftCourses
//
//  Created by BEREZIN Stanislav on 03.11.2020.
//

import SwiftUI

struct RectangleView: View {
    
    var logo = "Course1"
    var colors = [Color.green, Color.blue]
    var width: CGFloat = 270
    var height: CGFloat = 170
    var cornerRadius: CGFloat = 16
    var opacity: Double = 1
    var offsetX: CGFloat = 0
    var offsetY: CGFloat = 0
    var scaleEffect: CGFloat = 1
    
    var title = "Основы Swift"
    var subTitle = "8 уроков"
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(
                        gradient: Gradient(colors: colors),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: width, height: height)
                .cornerRadius(cornerRadius)
                .shadow(radius: 10)
                .opacity(opacity)
                .offset(x: offsetX, y: offsetY)
                .scaleEffect(scaleEffect)
                .animation(.easeOut)
            Image(logo)
                .resizable()
                .frame(width: 50, height: 50)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .cornerRadius(25)
                .opacity(opacity)
                .offset(x: offsetX + 90, y: offsetY - 45)
                .scaleEffect(scaleEffect)
                .animation(.easeOut)
            VStack(alignment: .leading) {
                TextView(text: title)
                TextView(text: subTitle, font: .title2)
            }
            .offset(x: offsetX - 40, y: offsetY - 30)
            .scaleEffect(scaleEffect)
            .opacity(opacity)
            .animation(.easeOut)
        }
    }
}

struct TextView: View {
    
    let text: String
    var font: Font = .title
    var fontWeight: Font.Weight = .thin
    var textColor: Color = .white
    var opacity: Double = 1
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(fontWeight)
            .foregroundColor(textColor)
            .opacity(opacity)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
