//
//  ProductAPPBar.swift
//  Carry1st
//
//  Created by Michael Ossai on 01/12/2024.
//
import SwiftUI

struct ProductAPPBar: View {
    var backTap: () -> Void
    var body: some View {
        HStack(alignment: .center) {
            HStack {
                Button(action: {
                    backTap()
                }) {
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18.0, height: 18.0)
                }
                Spacer()
            }.frame(width: 70)
            
            Spacer()
            TxtWrk(txt: "Product details", size: 16)
            Spacer()
            
            HStack {
                Spacer()
                Image("share").resizable()
                    .scaledToFill().frame(width: 34.0, height: 34.0)
                Image("favourite").resizable()
                    .scaledToFill()
                    .frame(width: 34.0, height: 34.0)
            }.frame(width: 70)
            
        }.padding([.top, .leading, .trailing], 16.0)
    }
}

struct ProductImageWidget: View {
    @State var selection:Int
    var image: String
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(0..<productImages.count, id: \.self) { index in
                    HStack {
                        AsyncImage(url: URL(string: image)) { phase in
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
                        .frame(width: 342-32, height: 250-32) // Adjust as needed
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.bottom, 8)
                        .tag(index)
//                        Image(productImages[index])
//                            .resizable()
//                        //.scaledToFit()
//                            .frame(width: 342-32, height: 250-32)
//                            .cornerRadius(10)
//                            .tag(index)
                    } .frame(width: 342, height: 250)
                        .background(Color("colorF5"))
                        .cornerRadius(10)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Hide default indicator
            .frame(width: .infinity, height: 250)
            
            Spacer().frame(height: 15)
            WormIndicatorView(selection: $selection, count: productImages.count)
                .padding(.bottom, 20)
            Spacer().frame(height: 15)
        }
    }
}

struct productInfo: View {
    var code:String
    var name: String
    var amount:String
    var condition: String
    var formerAmount:String?
    var discount:String?
    
    var body: some View {
        VStack(alignment: .leading){
            TxtWrk(txt: code, size: 12, color: "orange00")
            Spacer().frame(height: 5)
            TxtWrk(txt: name, size: 16,maxLines: 1)
            Spacer().frame(height: 5)
            HStack {
                TxtWrkSB(txt: amount, size: 20,maxLines: 1).frame(width: 150)
                Spacer().frame(width: 10)
                if let formerAmount = formerAmount{
                    TxtWrk(txt: formerAmount, size: 14,color: "hash").strikethrough(true, color: Color("brandFail"))
                        .foregroundColor(.black)
                        .frame(width: 110)
                }
                Spacer()
                if let discount = discount{
                    Button(action: {}){
                        TxtWrkSB(txt: discount, size: 10,color: "orange00")
                    }.padding(.horizontal,9)
                        .padding(.vertical,6)
                        .background(Color("orangeE6"))
                        .cornerRadius(40)
                }
            }
            Spacer().frame(height: 15)
            HStack {
                TxtWrk(txt: "Condition:", size: 12,maxLines: 1)
                Button(action: {}){
                    TxtWrkSB(txt: condition, size: 10,color: "kprimary")
                }.padding(.horizontal,9)
                    .padding(.vertical,5)
                    .background(Color("colorEE"))
                    .cornerRadius(40)
            }
            
            
        }
        .padding(.horizontal, 16.0)
    }
}
