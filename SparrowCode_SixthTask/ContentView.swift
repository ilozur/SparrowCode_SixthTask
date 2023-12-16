//
//  ContentView.swift
//  SparrowCode_SixthTask
//
//  Created by Edmond Podlegaev on 15.12.2023.
//

import SwiftUI

struct ContentView: View {
    let countOfRectangles: Int = 12
    @State private var isPressed: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            let layout = isPressed ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            layout {
                ForEach(0 ..< countOfRectangles, id: \.self) { rectangle in
                    RoundedRectangle(cornerRadius: geometry.size.height / CGFloat(countOfRectangles) / 10)
                    .foregroundStyle(Color.blue)
                    .aspectRatio(contentMode: .fit)
                    .offset(
                        x: isPressed ? CGFloat(rectangle) * (geometry.size.width - geometry.size.height / CGFloat(countOfRectangles)) / CGFloat(countOfRectangles - 1) : 0,
                        y: isPressed ? 0 : geometry.size.height / 2)
                    .onTapGesture {
                        withAnimation {
                            isPressed.toggle()
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
