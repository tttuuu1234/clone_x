//
//  ContentView.swift
//  CloneX
//
//  Created by Tsubasa on 2024/10/14.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        VStack(content: {
            Button(action: {}, label: {
                HStack(content: {
                    Image(systemName: "star")
                    Text("Googleのアカウントで続ける")
                        .font(.system(size: 16))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                })
            })
            .buttonStyle(RoundedButtonStyle())
        })
    }
}

struct RoundedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 24)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerSize: CGSize(width: 16, height: 16), style: .continuous)
                    .fill(.clear)
                    .stroke(.gray.opacity(0.3), style: StrokeStyle(lineWidth: 2))
            )
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

#Preview {
    ContentView()
}
