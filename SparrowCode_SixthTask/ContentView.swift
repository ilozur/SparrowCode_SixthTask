//
//  ContentView.swift
//  SparrowCode_SixthTask
//
//  Created by Edmond Podlegaev on 15.12.2023.
//

import SwiftUI

struct ContentView: View {
    let countOfRectangles: Int = 7
    @State private var isPressed: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            let layout = isPressed ? AnyLayout(VStackLayout(spacing: 0)) : AnyLayout(HStackLayout())
            layout {
                ForEach(isPressed ? Array(0 ... countOfRectangles - 1).reversed() : Array(0 ... countOfRectangles - 1), id: \.self) { rectangle in
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
