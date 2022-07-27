//
//  ContentView.swift
//  MyXylophone
//
//  Created by Steven Williams on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {

            ZStack{
                RoundedRectangle(cornerRadius: 1)
                    .fill(.red)
                    .frame(width: 340, height: 80, alignment: .center)
                    .border(.red)
                
                Button(action: {
                    SoundManager.instance.playSound(sound: .C)
                }) {
                    Text("C")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 340, height: 80, alignment: .center)
                }.contentShape(Rectangle())
            }
            ZStack{
                RoundedRectangle(cornerRadius: 1)
                    .fill(.orange)
                    .frame(width: 330, height: 80, alignment: .center)
                    .border(.orange)
                Button(action: {
                    SoundManager.instance.playSound(sound: .D)
                }) {
                    Text("D")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 340, height: 80, alignment: .center)
                }.contentShape(Rectangle())
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 1)
                    .fill(.yellow)
                    .frame(width: 320, height: 80, alignment: .center)
                    .border(.yellow)
                Button(action: {
                    SoundManager.instance.playSound(sound: .E)
                }) {
                    Text("E")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 340, height: 80, alignment: .center)
                }.contentShape(Rectangle())
            }
            ZStack{
                RoundedRectangle(cornerRadius: 1)
                    .fill(.green)
                    .frame(width: 310, height: 80, alignment: .center)
                    .border(.green)
                Button(action: {
                    SoundManager.instance.playSound(sound: .F)
                }) {
                    Text("F")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 340, height: 80, alignment: .center)
                }.contentShape(Rectangle())
            }
           
            ZStack{
                RoundedRectangle(cornerRadius: 1)
                    .fill(.indigo)
                    .frame(width: 300, height: 80, alignment: .center)
                    .border(.indigo)
                Button(action: {
                    SoundManager.instance.playSound(sound: .G)
                }) {
                    Text("G")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 340, height: 80, alignment: .center)
                }.contentShape(Rectangle())
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 1)
                    .fill(.blue)
                    .frame(width: 290, height: 80, alignment: .center)
                    .border(.blue)
                Button(action: {
                    SoundManager.instance.playSound(sound: .A)
                }) {
                    Text("A")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 340, height: 80, alignment: .center)
                }.contentShape(Rectangle())
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 1)
                    .fill(.purple)
                    .frame(width: 280, height: 80, alignment: .center)
                    .border(.purple)
                Button(action: {
                    SoundManager.instance.playSound(sound: .B)
                }) {
                    Text("B")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 340, height: 80, alignment: .center)
                }.contentShape(Rectangle())
            }
            
        }

       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
