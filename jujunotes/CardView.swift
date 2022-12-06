//
//  CardView.swift
//  jujunotes
//
//  Created by Aleksandra Koen on 11.11.2022.
//

import SwiftUI

struct CardView: View {
    let workout: Workout
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(workout.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label(workout.dateAsString(), systemImage: "clock")
                Spacer()
            }
        }
        .padding()
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var workout = Workout.sampleData[1]
    static var previews: some View {
        CardView(workout: workout)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
