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
struct TotalAndDeliveryText: View {
    var subTotal:String
    var deliveryFee:String
    var total:String
    var body: some View {
        VStack(spacing: 10.0) {
            HStack(){
                TxtWrk(txt: "Subtotal", size:12)
                Spacer()
                TxtWrk(txt: subTotal, size:12,maxLines: 1)
            }
            HStack(){
                TxtWrk(txt: "Delivery fee", size:12)
                Spacer()
                TxtWrk(txt: deliveryFee, size:12,maxLines: 1)
            }
            HStack(){
                TxtWrkSB(txt: "Total", size:14)
                Spacer()
                TxtWrkSB(txt: total, size:14,maxLines: 1)
            }
        }.padding(.horizontal,16)
    }
}

struct AddressViewWidget: View {
    //    var addAddressTap: () -> Void
    var destination:AnyView
    var name:String
    var address:String
    var body: some View {
        
        VStack{
            HStack{
                TxtWrkSB(txt: "Address Details", size: 12)
                Spacer()
                NavigationButton(
                    destination: destination, action: {
                        print("Button tapped")
                    }) {
                        Image("edit_pencil").resizable().scaledToFit().frame(width: 18,height: 18)
                    }
            }
            Spacer().frame(height: 14)
            HStack(alignment: .top){
                Button(action: {
                    // addAddressTap()
                }){
                    Image("home2").resizable().scaledToFit().frame(width: 16,height: 16)
                }.frame(width: 30,height: 30).background(Color("orangeHue")).cornerRadius(5)
                Spacer().frame(width: 12)
                VStack(alignment: .leading){
                    TxtWrkSB(txt:name, size: 14,color: "textH")
                    Spacer().frame(height: 2)
                    TxtWrk(txt:address, size: 13,color: "textSub",maxLines: 5)
                }
                
                
            }
        }.padding(.horizontal,16)
    }
}
struct AddressViewWidget2: View {
    var name:String
    var address:String
    var body: some View {
        
        VStack{
            HStack(alignment: .top){
                Button(action: {
                    // addAddressTap()
                }){
                    Image("home2").resizable().scaledToFit().frame(width: 16,height: 16)
                }.frame(width: 30,height: 30).background(Color("orangeHue")).cornerRadius(5)
                Spacer().frame(width: 12)
                VStack(alignment: .leading){
                    TxtWrk(txt:name, size: 15,color: "textH")
                    Spacer().frame(height: 2)
                    TxtWrk(txt:address, size: 13,color: "textSub",maxLines: 5)
                }
                
                
            }
        }.padding(.horizontal,16)
    }
}
