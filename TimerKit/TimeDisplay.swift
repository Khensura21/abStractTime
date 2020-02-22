//
//  TimeDisplay.swift
//  TimerKit
//
//  Created by Nien Lam on 2/13/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct TimeDisplay: View {
    // Binding variable.
    @Binding var timeRemaining: Int
    
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: 120))
            .foregroundColor(.black)
            .onTapGesture {
                // On tap gesture, increment timer by 10.
                self.timeRemaining += 10
            }
    }
}

struct TimeDisplay_Previews: PreviewProvider {
    static var previews: some View {
        TimeDisplay(timeRemaining: .constant(80))
    }
}
