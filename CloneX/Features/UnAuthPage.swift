//
//  ContentView.swift
//  CloneX
//
//  Created by Tsubasa on 2024/10/14.
//

import SwiftUI
import SwiftData

struct UnAuthPage: View {
    
    var body: some View {
        NavigationStack {
            VStack(content: {
                Text("X")
                Spacer()
                
                Text("「いま」起きていること\nをみつけよう")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.black)
                    Spacer()                                    
                
                Group(content: {
                    Button(action: {}, label: {
                        HStack(content: {
                            Image(systemName: "star")
                            Text("Googleのアカウントで続ける")
                                .font(.system(size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                        })
                    })
                    .buttonStyle(RoundedButtonStyle())
                    .padding(.bottom, 8)
                    
                    Button(action: {}, label: {
                        HStack(content: {
                            Image(systemName: "star")
                            Text("Appleのアカウントで続ける")
                                .font(.system(size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                        })
                    })
                    .buttonStyle(RoundedButtonStyle())
                    .padding(.bottom, 16)
                    
                    HStack {
                        Capsule()
                            .fill(.gray)
                            .frame(height: 0.8)
                        Text("または")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Capsule()
                            .fill(.gray)
                            .frame(height: 0.8)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 16)
                    
                    NavigationLink {
                        
                    } label: {
                        Button(action: {}, label: {
                            HStack(content: {
                                Text("アカウントを作成")
                                    .font(.system(size: 16))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                
                            })
                        })
                        .buttonStyle(RoundedButtonStyle())
                    }
                    .padding(.vertical, 16)
                    
                    HStack {
                        Text("登録すると") +
                        Text("利用規約").foregroundColor(Color(.systemBlue))  +
                        Text("、")  +
                        Text("プライバシポリシー").foregroundColor(.blue)  +
                        Text("、")  +
                        Text("Cookieの使用").foregroundColor(.blue)  +
                        Text("に同意したものとみなされます。")
                    }
                    .font(.caption)
                    .fontWeight(.regular)
                    .lineSpacing(6)
                    .padding(.top, 8)
                    
                    
                    HStack {
                        Text("アカウントをお持ちの方は")
                            .foregroundColor(.black.opacity(0.8))
                            .font(.footnote)
                        
                        NavigationLink {
                            HomePage()
                        } label: {
                            Text("ログイン")
                                .font(.footnote)
                        }
                    }
                    .padding(.vertical, 40)
                })
                .padding(.horizontal, 30)
            })
            .padding(.bottom, 10)
        }
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
    UnAuthPage()
}
