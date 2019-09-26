//
//  ContentView.swift
//  AlertsInSwiftUI
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isAlertVisible: Bool = true
    var body: some View {
        Button(action: {
            self.isAlertVisible.toggle()
        }) {
            Text("Show alert")
        }.alert(isPresented: $isAlertVisible) {
            Alert(title: Text("Hello from the alert view!"), message: Text("This is some text for the message property ;)"), primaryButton: Alert.Button.default(Text("With action"), action: {
                print("The action is triggered!")
            }), secondaryButton: Alert.Button.cancel(Text("Close me")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
