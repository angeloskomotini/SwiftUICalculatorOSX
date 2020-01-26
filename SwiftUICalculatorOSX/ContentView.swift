//
//  ContentView.swift
//  SwiftUICalculatorOSX
//
//  Created by Angelos Staboulis on 26/1/20.
//  Copyright © 2020 Angelos Staboulis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var items=[0,1,2,3,4,5,6,7,8,9]
    @State var signs=["=",".","/","*","-","+"]
    @State var readout=String()
    var body: some View {
        VStack{
            HStack{
                Text(verbatim: readout)
                    .frame(width: 150, height: 30, alignment: .trailing)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
            }
            .frame(width: 150, height: 30, alignment: .top)
            .foregroundColor(Color.white)
            .background(Color.blue)
            Spacer()
            HStack{
                Button(action: {
                    self.createReadout(caption: String(self.items[9]))
                }) {
                    Text(String(items[9]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.items[8]))
                }) {
                    Text(String(items[8]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.items[7]))
                }) {
                    Text(String(items[7]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.signs[2]))
                }) {
                    Text(signs[2])
                }
            }.frame(width: 150, height: 30, alignment: .top)
            HStack{
                Button(action: {
                    self.createReadout(caption: String(self.items[6]))
                }) {
                    Text(String(items[6]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.items[5]))
                }) {
                    Text(String(items[5]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.items[4]))
                }) {
                    Text(String(items[4]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.signs[3]))
                }) {
                    Text(signs[3])
                }
            }.frame(width: 150, height: 30, alignment: .top)
            HStack{
                Button(action: {
                    self.createReadout(caption: String(self.items[3]))
                }) {
                    Text(String(items[3]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.items[2]))
                }) {
                    Text(String(items[2]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.items[1]))
                }) {
                    Text(String(items[1]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.signs[4]))
                }) {
                    Text(signs[4])
                }
            }.frame(width: 150, height: 30, alignment: .top)
            HStack{
                Button(action: {
                    self.createReadout(caption: String(self.items[0]))
                }) {
                    Text(String(items[0]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.signs[1]))
                }) {
                    Text(String(signs[1]))
                }
                Button(action: {
                    self.showResult(readoutParameter: self.readout as String)
                }) {
                    Text(String(signs[0]))
                }
                Button(action: {
                    self.createReadout(caption: String(self.signs[5]))
                }) {
                    Text(signs[5])
                }
            }.frame(width: 150, height: 30, alignment: .top)
            HStack{
                Button(action: {
                    self.clearResult()
                }) {
                    Text("C")
                }.frame(width: 150, height: 20, alignment: .leading)
            }.frame(width: 150, height: 30, alignment: .top)
        }.frame(width: 210, height: 220, alignment: .center)
        
    }
    func clearResult(){
        readout = " "
    }
    func createReadout(caption:String){
        readout = readout + caption
    }
    func showResult(readoutParameter:String){
        let result = NSExpression(format: readoutParameter, [])
        let showResult = result.expressionValue(with: nil, context: nil) as! Double
        readout = String(showResult)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(readout: "")
    }
}
