//
//  ContentView.swift
//  SparrowCode_SixthTask
//
//  Created by Edmond Podlegaev on 15.12.2023.
//

import SwiftUI

let countOfRectangles: Int = 7
var isPressed: Bool = false

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let layout = isPressed ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            layout {
                ForEach(0 ..< countOfRectangles, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color.blue)
                    .aspectRatio(contentMode: .fit)
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
