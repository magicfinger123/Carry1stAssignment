//
//  ProductItemView.swift
//  Carry1st
//
//  Created by Michael Ossai on 26/11/2024.
//
import SwiftUI
struct ProductItemView: View {
    var product: ProductItem
    @Environment(\.modelContext) var context
    var onAddToCart: () -> Void
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                //                Spacer().frame(height: 6)
                AsyncImage(url: URL(string: product.imageLocation ?? "")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView() // Show a loading indicator while the image is being loaded
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit() // Adjust as needed (e.g., .scaledToFill())
                    case .failure:
                        Image(systemName: "photo") // Fallback image
                            .resizable()
                            .scaledToFit()
                    @unknown default:
                        EmptyView()
                    }
                }
                .scaledToFit()
                .frame(width: 164, height: 125) // Adjust as needed
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.bottom, 8)
        
            VStack(alignment: .leading,spacing: 2) {
                TxtWrk(txt: product.name ?? "", size: 12,color: "textH")
                HStack {
                    TxtWrk(txt: product.description ?? "", size: 8,color: "color7C")
                }
                TxtWrkSB(txt: String(product.price ?? 0.0), size: 14,color: "kprimary")
            }.padding(.horizontal,12)
            //                .frame(width: 110)
            Spacer().frame(height: 10)
            
            
        }
        VStack{
            Spacer().frame(height: 14)
            HStack{
                
                    Button(action: {}){
                        TxtWrkSB(txt: "5", size: 10,color: "orange00")
                    }.padding(.horizontal,9)
                        .padding(.vertical,6)
                        .background(Color("orangeE6"))
                        .cornerRadius(40)

                Spacer()
            }.frame(height: 20)
            
            Spacer()
        }.padding(.horizontal,12)
        
        VStack {
            Spacer()
            HStack {
                Spacer()
                PlusButton {
                    onAddToCart()
                   // CartService.shared.addItem(context: context, product: product, qty: 1)
                }
            }
        }
    }.frame(width: 164.0, height: 200.0)
        .background(Color("colorF5"))
        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
}
}
