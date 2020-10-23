//
//  ContentView.swift
//  slottttttAPP
//
//  Created by user on 2020/10/22.
//

import SwiftUI

struct ContentView: View {
    //主語
    private var symbols = ["I", "YOU", "WE"]
    //場所
    private var symbols1 = ["action1", "action2", "action3"]
    //時間
    private var symbols2 = ["time1", "time2","time3"]
    
    
    @State private var numbers = [1, 2, 0]
    @State private var numbers1 = [1, 2, 0]
    @State private var numbers2 = [1, 2, 0]
    
    
    
   // @State private var credits = 1000
   // private var betAmount = 5
    
    var body: some View {
        ZStack {
            //background
            Rectangle()
                .foregroundColor(Color(red:0/255, green: 0/255,  blue: 82/255))
                .edgesIgnoringSafeArea(.all)
            Rectangle()
                .foregroundColor(Color(red: 28/225, green: 195/255,blue:76/225))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer()
                
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("英文生成機")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    
                    
                }.scaleEffect(2)
                
                
                
                
                
                
                Spacer()
                
                
                
               
                
                Spacer()
                //cards
                HStack {
                    
                    Spacer()
                    
                    Image(symbols[numbers[0]])
                        .resizable().aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    
                    Image(symbols1[numbers[1]])
                        .resizable().aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    
                    Image(symbols2[numbers[2]])
                        .resizable().aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                //Button
                
                Button(action: {
                    
                    self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                    
                    
                    self.numbers1[0] = Int.random(in: 0...self.symbols1.count - 1)
                    
                    self.numbers1[1] = Int.random(in: 0...self.symbols1.count - 1)
                    
                    self.numbers1[2] = Int.random(in: 0...self.symbols1.count - 1)
                    
                    
                    self.numbers2[0] = Int.random(in: 0...self.symbols2.count - 1)
                    
                    self.numbers2[1] = Int.random(in: 0...self.symbols2.count - 1)
                    
                    self.numbers2[2] = Int.random(in: 0...self.symbols2.count - 1)
                    
                   
                    
                    /*
                     if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2] {
                     
                     self.credits += self.betAmount * 10
                     } else {
                     self.credits -= self.betAmount
                     }
                     */
                    
                }) {
                    Text("回転")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                    
                }
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

