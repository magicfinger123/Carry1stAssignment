//
//  Skeleton.swift
//  Carry1st
//
//  Created by Michael Ossai on 26/11/2024.
//

import SwiftUI

struct SkeletonView: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 16), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(0..<6, id: \.self) { _ in
                    VStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 150)
                            .cornerRadius(8)

                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 20)
                            .cornerRadius(4)
                        

                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 20)
                            .cornerRadius(4)
                       
                    }
                }
            }
            .padding()
        }
    }
}
