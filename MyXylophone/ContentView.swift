//
//  ContentView.swift
//  MyXylophone
//
//  Created by Steven Williams on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    
    private var btnHeight: CGFloat = 75
    @State var alpha: Double = 1.0
    
    var body: some View {
        
        VStack {
            noteC
            noteD
            noteE
            noteF
            noteG
            noteA
            noteB
            Spacer()
            Button("Presss Me"){
                self.alpha = 0.3
                SoundManager.instance.playSound(sound: .C)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                      //Bring's sender's opacity back up to fully opaque.
                    self.alpha = 1.0
                  }
                
            }
        }

       
    }
    
    var noteC: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .fill(.red)
                .frame(width: 340, height: btnHeight, alignment: .center)
                .border(.red)
            
            Button(action: {
                SoundManager.instance.playSound(sound: .C)
            }) {
                Text("C")
                    .foregroundColor(.white)
                    .opacity(alpha)
                    .font(.largeTitle)
                    .frame(width: 340, height: btnHeight, alignment: .center)
            }
        }
    }
    
    
    var noteD: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .fill(.orange)
                .frame(width: 330, height: btnHeight, alignment: .center)
                .border(.orange)
            Button(action: {
                SoundManager.instance.playSound(sound: .D)
            }) {
                Text("D")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 340, height: btnHeight, alignment: .center)
            }
        }
    }
    
    var noteE: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .fill(.yellow)
                .frame(width: 320, height: btnHeight, alignment: .center)
                .border(.yellow)
            Button(action: {
                SoundManager.instance.playSound(sound: .E)
            }) {
                Text("E")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 340, height: btnHeight, alignment: .center)
            }
        }
    }
    
    var noteF: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .fill(.green)
                .frame(width: 310, height: btnHeight, alignment: .center)
                .border(.green)
            Button(action: {
                SoundManager.instance.playSound(sound: .F)
            }) {
                Text("F")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 340, height: btnHeight, alignment: .center)
            }
        }
    }
    
    
    var noteG: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .fill(.indigo)
                .frame(width: 300, height: btnHeight, alignment: .center)
                .border(.indigo)
            Button(action: {
                SoundManager.instance.playSound(sound: .G)
            }) {
                Text("G")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 340, height: btnHeight, alignment: .center)
            }
        }
    }
    
    
    var noteA: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .fill(.blue)
                .frame(width: 290, height: btnHeight, alignment: .center)
                .border(.blue)
            Button(action: {
                SoundManager.instance.playSound(sound: .A)
            }) {
                Text("A")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 340, height: btnHeight, alignment: .center)
            }
        }
    }
    
    var noteB: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 1)
                .fill(.purple)
                .frame(width: 280, height: btnHeight, alignment: .center)
                .border(.purple)
            Button(action: {
                SoundManager.instance.playSound(sound: .B)
            }) {
                Text("B")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 340, height: btnHeight, alignment: .center)
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIView {
    func blink(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, alpha: CGFloat = 0.0) {
        UIView.animate(withDuration: duration, delay: delay, options: [.curveEaseInOut, .repeat, .autoreverse], animations: {
            self.alpha = alpha
        })
    }
}
