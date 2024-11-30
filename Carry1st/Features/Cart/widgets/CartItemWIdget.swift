//
//  CartItemWIdget.swift
//  Carry1st
//
//  Created by Michael Ossai on 29/11/2024.
//
import SwiftUI

struct CartItemWidget: View {
    @State var count: Int

    var productItem: ProductData
    var onQuantityChange: (Int) -> Void  // Callback to update quantity in SwiftData
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: productItem.imageLocation)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                @unknown default:
                    EmptyView()
                }
            }
            .scaledToFit()
            .frame(width: 60, height: 60)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.bottom, 8)
            
            Spacer().frame(width: 8)
            
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        TxtWrk(txt: productItem.currencyCode, size: 12, color: "orange00", maxLines: 1)
                        TxtWrk(txt: productItem.name, size: 16, maxLines: 1)
                        TxtWrk(txt: setAmountString(amountValue: productItem.price, isoCodeStr: productItem.currencyCode), size: 12, color: "textBody", maxLines: 1)
                    }
                    Spacer()
                    CounterBtnSmall2(
                        count: $count,
                        minValue: 0,
                        maxValue: 1000,
                        onCountChange: { newCount in
                            onQuantityChange(newCount)  // Notify parent view
                        }
                    )
                }
            }
        }
        .padding(.horizontal, 16)
        .onAppear{
            count = productItem.quantity
        }
    }
}
struct CartItemWidgetSmall: View {
    @State var count: Int

    var productItem: ProductData
    var onQuantityChange: (Int) -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center){
                Spacer().frame(width: 0)
                
                AsyncImage(url: URL(string: productItem.imageLocation)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                    @unknown default:
                        EmptyView()
                    }
                }
                .scaledToFit()
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.bottom, 8)
    
                
                Spacer().frame(width: 8)
                VStack(alignment: .leading){
                    TxtWrk(txt: productItem.currencyCode, size: 12, color: "orange00", maxLines: 1)
                    TxtWrk(txt: productItem.name, size: 16, maxLines: 1)
                    TxtWrk(txt: setAmountString(amountValue: productItem.price, isoCodeStr: productItem.currencyCode), size: 12, color: "textBody", maxLines: 1)
                }
                .frame(width: .infinity)
                Spacer()
                VStack{
                    Spacer()
                    CounterBtnVerySmall(count: $count, minValue: 0, maxValue: 100000000000)
                }
                
                
            }.padding(.horizontal,16)
        }
        .padding(.vertical, 10.0)
    }
}
