//
//  DatePickersView.swift
//  KJSwiftUI
//
//  Copyright © 2020 Kristopher Johnson. All rights reserved.
//

import SwiftUI

struct DatePickersView: View {
    @State private var date = Date()

    private var formattedDate: String {
        let df = DateFormatter()
        df.dateStyle = .short
        df.timeStyle = .short
        return df.string(from: date)
    }
    
    var body: some View {
        VStack {
            DatePicker("Date", selection: $date)
                .labelsHidden()
            
            Text("Selected: ") + Text(formattedDate)
        }
    }
}

struct DatePickersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DatePickersView()
                .navigationBarTitle("DatePickersView", displayMode: .inline)
        }
    }
}
