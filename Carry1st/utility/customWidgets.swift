//
//  customWidgets.swift
//  GIG Alpha
//
//  Created by Olajide Oguns on 12/07/2024.
//

import Foundation
import SwiftUI

//Text=================
struct TxtWrk: View {
    var txt:String
    var size:Double
    var color:String = "textH"
    var maxLines: Int?
    var alignment: TextAlignment = .leading
    
    var body: some View {
        Text(txt)
            .font(.custom("WorkSans-Regular", size: size))
            .foregroundColor(Color( color))
            .lineLimit(maxLines)
            .multilineTextAlignment(alignment)
    }
}
struct TxtSF: View {
    var txt:String
    var size:Double
    var color:String = "textH"
    var maxLines: Int?
    var alignment: TextAlignment = .leading
    var body: some View {
        Text(txt)
            .font(.custom("SFProDisplay-Regular", size: size))
            .foregroundColor(Color( color))
            .lineLimit(maxLines)
            .multilineTextAlignment(alignment)
    }
}
struct TxtWrkSB: View {
    var txt:String
    var size:Double
    var color:String = "kprimary"
    var maxLines: Int?
    var alignment: TextAlignment = .leading
    var body: some View {
        Text(txt)
            .font(.custom("WorkSans-SemiBold", size: size))
            .foregroundColor(Color( color))
            .lineLimit(maxLines)
            .multilineTextAlignment(alignment)
    }
}
struct CustomSearchAppBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack() {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search", text: $searchText)
                    .foregroundColor(Color("color7C"))
                    .font(.custom("WorkSans-Regular", size: 15))
                    .padding(8)
                //                    .background(Color(.systemGray6))
                //                    .cornerRadius(0)
            }
            .padding(.horizontal)
            .background(Color("textFieldColor"))
            .cornerRadius(8)
            
            Button(action: {
                // Add action for the button
            }) {
                Image("sell_icon")
                    .resizable()
                    .foregroundColor(Color("textBody"))
                    .frame(width: 14.0, height: 14.0)
            }
            .padding(0.0)
            .frame(width: 34.0, height: 34.0)
            .background(Color("textFieldColor"))
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
            
        }.padding([.top, .leading, .trailing], 16.0)
    }
}
struct CustomSearchAppBarBlue: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack() {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search", text: $searchText)
                    .foregroundColor(Color("color7C"))
                    .font(.custom("WorkSans-Regular", size: 15))
                    .padding(8)
            }
            .padding(.horizontal)
            .background(Color("textFieldColor"))
            .cornerRadius(8)
            
            Button(action: {
                // Add action for the button
            }) {
                Image("sell_icon")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 14.0, height: 14.0)
            }
            .padding(0.0)
            .frame(width: 34.0, height: 34.0)
            .background(Color("textH"))
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
            
        }.padding([.top, .leading, .trailing], 16.0)
    }
}
struct CustomSearchAppBar2: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack() {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                //                }
                TextField("Search", text: $searchText)
                    .foregroundColor(Color("color7C"))
                    .font(.custom("WorkSans-Regular", size: 15))
                    .padding(8)
                //                    .background(Color(.systemGray6))
                //                    .cornerRadius(0)
            }
            .padding(.horizontal)
            .background(Color("textFieldColor"))
            .cornerRadius(8)
            
            Button(action: {
                // Add action for the button
            }) {
                Image("type")
                    .resizable()
                    .foregroundColor(Color("textBody"))
                    .frame(width: 14.0, height: 14.0)
            }
            .padding(0.0)
            .frame(width: 34.0, height: 34.0)
            .background(Color("textFieldColor"))
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
            
        }.padding([.top, .leading, .trailing], 16.0)
    }
}
struct PlusButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "plus")
                .resizable()
                .frame(width: 12, height: 12)
                .foregroundColor(Color.white)
            
        }
        .frame(width: 42,height: 42)
        .background(Color.kprimary)
        .clipShape(RoundedCorner(radius: 12, corners: [.topLeft, .bottomRight]))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct HorizontalButton: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack{
            HStack {
                Image(imageName)
                    .resizable()
                    .foregroundColor(title == "Sign in" ? Color( "blueEF"):Color("textBody"))
                    .frame(width: 14.0, height: 14.0)
                Spacer().frame(width: 10)
                Text(title)
                    .font(.custom("SFProDisplay-Regular", size: 10))
                    .foregroundColor( title == "Sign in" ? Color( "blueEF"):Color( "color7C"))
                
            }
            .padding(.horizontal,10)
            .padding(.vertical,6)
            .background(Color("textFieldColor"))
            .cornerRadius(40)
        }
        .frame(height: 26)
    }
}


struct CategoryCard: View {
    var category: ProductCategory
    //var tap: () -> Void
    var body: some View {
        //        Button(action: {
        //            tap()
        //        }) {
        VStack(alignment: .leading) {
            VStack{
                Image(imageName(for: category.name)).resizable()
                //.scaledToFit()
                    .frame(width: 55, height: 72)
            }.frame(width: 104.0, height: 104.0)
                .background(Color("colorF5"))
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            Spacer().frame(height: 4)
            TxtWrk(txt: category.name, size: 14,color: "blackColor")
            Spacer().frame(height: 2)
            
        }
    }
    /// }
}


struct SliderView: View {
    @State var selection:Int
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                Image("slider1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 343, height: 143)
                //.aspectRatio(contentMode: .fill)
                    .tag(0)
                Image("slider2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 343, height: 143)
                //.aspectRatio(contentMode: .fill)
                    .tag(1)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Hide default indicator
            .frame(width: .infinity, height: 144)
            
            Spacer().frame(height: 15)
            WormIndicatorView(selection: $selection, count: 2)
                .padding(.bottom, 20)
            Spacer().frame(height: 15)
        }
    }
}

struct WormIndicatorView: View {
    @Binding var selection: Int
    var count: Int
    
    let activeWidth: CGFloat = 32 // Width of active rectangle
    let activeHeight: CGFloat = 10 // Height of active rectangle
    let inactiveWidth: CGFloat = 10 // Width of inactive rectangles
    let inactiveHeight: CGFloat = 10 // Height of inactive rectangles
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<count, id: \.self) { index in
                if selection == index {
                    Rectangle()
                        .fill(Color("kprimary"))
                        .frame(width: activeWidth, height: activeHeight)
                        .cornerRadius(10)
                } else {
                    Rectangle()
                        .fill(Color("colorEE"))
                        .frame(width: inactiveWidth, height: inactiveHeight)
                        .cornerRadius(10)
                    
                }
            }
        }
    }
}

struct BackAndTitle: View {
    var title: String
    var backAction: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                backAction()
            }) {
                Image("back")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18.0, height: 18.0)
            }
            Spacer().frame(width: 10)
            TxtWrk(txt: title, size: 16)
            Spacer()
        }
        .padding([.top, .leading, .bottom], 9.0)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}


struct CounterBtn: View {
    @Binding var count: Int
    var minValue: Int = 0
    var maxValue: Int = Int.max
    
    var body: some View {
        HStack{
            Button(action: {
                if count > minValue {
                    count -= 1
                }
            }) {
                TxtWrkSB(txt: "-", size: 18).frame(width: 48, height: 48)
                    .background(Color("colorEE"))
                    .cornerRadius(8)
            }
            
            TxtWrkSB(txt: "\(count)", size: 16).padding(.horizontal,12)
            
            Button(action: {
                if count < maxValue {
                    count += 1
                }
            }) {
                TxtWrkSB(txt: "+", size: 18,color: "background-color").frame(width: 48, height: 48)
                    .background(Color("kprimary"))
                    .cornerRadius(8)
            }
        }
    }
}

struct CounterBtnSmall2: View {
    @Binding var count: Int
    var minValue: Int = 0
    var maxValue: Int = Int.max
    var onCountChange: (Int) -> Void  // Callback for count changes
    var body: some View {
        HStack {
            Button(action: {
                if count > minValue {
                    count -= 1
                    onCountChange(count)  // Notify parent
                }
            }) {
                if count == 1 {
                    Image(systemName: "trash")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.red)
                        .frame(width: 36, height: 36)
                        .background(Color("colorEE"))
                        .cornerRadius(8)
                    
                } else {
                    TxtWrkSB(txt: "-", size: 12)
                        .frame(width: 36, height: 36)
                        .background(Color("colorEE"))
                        .cornerRadius(8)
                }
            }
            
            TxtWrkSB(txt: "\(count)", size: 14).padding(.horizontal, 8)
            
            Button(action: {
                if count < maxValue {
                    count += 1
                    onCountChange(count)  // Notify parent
                }
            }) {
                TxtWrkSB(txt: "+", size: 12, color: "background-color")
                    .frame(width: 36, height: 36)
                    .background(Color("kprimary"))
                    .cornerRadius(8)
            }
        }
    }
}
struct CounterBtnSmall: View {
    @Binding var count: Int
    var minValue: Int = 0
    var maxValue: Int = Int.max
    
    var body: some View {
        HStack{
            Button(action: {
                if count > minValue {
                    count -= 1
                }
            }) {
                if count == 1{
                    Image(systemName: "trash").resizable().frame(width: 12,height: 12).foregroundColor(.red)
                        .frame(width: 36,height: 36).background(Color("colorEE"))
                        .cornerRadius(8)
                }else{
                    TxtWrkSB(txt: "-", size: 12).frame(width: 36, height: 36)
                        .background(Color("colorEE"))
                        .cornerRadius(8)
                }
            }
            
            TxtWrkSB(txt: "\(count)", size: 14).padding(.horizontal,8)
            
            Button(action: {
                if count < maxValue {
                    count += 1
                }
            }) {
                TxtWrkSB(txt: "+", size: 12,color: "background-color").frame(width: 36, height: 36)
                    .background(Color("kprimary"))
                    .cornerRadius(8)
            }
        }
    }
}
struct CounterBtnVerySmall: View {
    @Binding var count: Int
    var minValue: Int = 0
    var maxValue: Int = Int.max
    
    var body: some View {
        HStack{
            Button(action: {
                if count > minValue {
                    count -= 1
                }
            }) {
                if count == 1{
                    Image(systemName: "trash").resizable().frame(width: 12,height: 12).foregroundColor(.red)
                        .frame(width: 27,height: 27).background(Color("colorEE"))
                        .cornerRadius(5)
                }else{
                    TxtWrkSB(txt: "-", size: 10).frame(width: 27, height:27)
                        .background(Color("colorEE"))
                        .cornerRadius(5)
                }
            }
            
            TxtWrkSB(txt: "\(count)", size: 12).padding(.horizontal,4)
            
            Button(action: {
                if count < maxValue {
                    count += 1
                }
            }) {
                TxtWrkSB(txt: "+", size: 10,color: "background-color").frame(width: 27, height: 27)
                    .background(Color("kprimary"))
                    .cornerRadius(5)
            }
        }
    }
}

struct AddToCartBtn: View {
    var tap: () -> Void
    var body: some View {
        Button(action: {
            tap()
        }){
            HStack {
                Image("cart_plus").resizable().scaledToFit().frame(width: 20,height: 20)
                TxtWrkSB(txt: "Add to cart", size: 15,color: "background-color")
            }
        }.frame(width: 200,height: 48)
            .background(Color("kprimary"))
            .cornerRadius(8)
    }
}

struct SizeSelectionView: View {
    @Binding var selectedSize: String
    let sizes: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            TxtWrk(txt: "Size", size: 12, color: "kprimary")
            Spacer().frame(height: 10)
            HStack(alignment: .center, spacing: 6.0) {
                ForEach(sizes, id: \.self) { size in
                    Button(action: {
                        selectedSize = size
                    }) {
                        TxtWrk(txt: size, size: 16, color: selectedSize == size ? "background-color" : "kprimary")
                            .padding(.horizontal, 12.0)
                            .padding(.vertical, 9.0)
                            .background(
                                selectedSize == size ? Color("kprimary") : Color("colorF5")
                            )
                            .cornerRadius(5)
                    }
                }
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 9.0)
    }
}

struct ColorSelectionView: View {
    @Binding var selectedColor: Color
    let colors: [Color]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Color")
                .font(.system(size: 12))
                .foregroundColor(Color("kprimary"))
            Spacer().frame(height: 10)
            HStack(alignment: .center, spacing: 6.0) {
                ForEach(colors, id: \.self) { color in
                    Button(action: {
                        selectedColor = color
                    }) {
                        ZStack {
                            Rectangle()
                                .fill(color)
                                .frame(width: 40, height: 40)
                                .cornerRadius(5)
                                .background(Color("background-color"))
                            
                            
                            if selectedColor == color{
                                Rectangle()
                                    .fill(Color.black.opacity(0.40))
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                            }
                            if selectedColor == color
                            {
                                Image(systemName: "checkmark.rectangle")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 15, height: 15)
                            }
                            
                        }
                    }
                    
                }
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 9.0)
    }
}
struct ProductStoreVistDescriptionGift: View {
    @Binding var isGift: Bool
    var vistStoreTap: () -> Void
    var storeName: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading){
            Spacer().frame(height: 20)
            HStack {
                HStack{
                    Image("sell_icon").resizable().scaledToFit().frame(width: 16,height: 16).foregroundColor(Color("color7C"))
                    TxtWrk(txt:storeName, size: 14,color: "color7C")
                }
                Spacer()
                HStack{
                    TxtWrk(txt: "Vist store", size: 12,
                           color: "orange00")
                    Spacer().frame(width: 2)
                    Image(systemName: "chevron.forward").resizable().scaledToFit().frame(width: 10,height: 10).foregroundColor(Color("orange00"))
                    
                }.onTapGesture {
                    vistStoreTap()
                }
            }
            Spacer().frame(height: 20)
            TxtWrk(txt:"Description", size: 12,color:"kprimary")
            Spacer().frame(height: 7)
            TxtWrk(txt:description, size: 14,color:"kprimary",maxLines: 10000)
            Spacer().frame(height:20)
            Button(action: {
                isGift.toggle()
            }) {
                HStack {
                    Image(systemName: isGift ? "checkmark.square.fill" : "square")
                        .resizable()
                        .frame(width: 24,height: 24)
                        .foregroundColor( Color("kprimary"))
                    TxtWrk(txt: "Is this a gift? Let’s wrap it",
                           size: 12,color: "kprimary")
                }
                
            }
            Spacer().frame(height: 50)
            
            
            
        }.padding(.horizontal,16)
    }
}

struct IconAndTextBtn: View {
    var title:String
    var icons:String
    var body: some View {
        HStack(alignment: .center){
            Image(icons).resizable().scaledToFit().frame(width: 24,height: 24)
            Spacer().frame(width: 10)
            TxtWrkSB(txt: title, size: 16,color: "background-color")
            
            
        }
        .frame(width: 344.0, height: 48.0)
        .background(Color("kprimary"))
        .cornerRadius(8)
        .padding(.vertical,10)
    }
}
struct TextBtn: View {
    var title:String
    var body: some View {
        TxtWrkSB(txt: title, size: 15,color: "background-color")
            .frame(width: 344.0, height: 48.0)
            .background(Color("kprimary"))
            .cornerRadius(8)
            .padding(.vertical,10)
    }
}

struct HDivider: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray.opacity(0.25))
            .frame(height: 0.3)
            .padding(.vertical, 9)
            .padding(.horizontal, 16)
    }
}
struct NormalBackAndTitleAppBar: View {
    var title: String
    var backAction: () -> Void
    var body: some View {
        
        HStack {
            Button(action: {
                backAction()
            }) {
                Image("back")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18.0, height: 18.0)
                    .padding()
                    .background(
                        Circle()
                            .fill(Color("lightBg")) // Customize the color here
                            .frame(width: 34, height: 34) // Adjust the size as needed
                    )
                
            }.background(Color("lightBg"))
                .cornerRadius(8)
                .frame(width: 34,height: 34)
            
            TxtWrkSB(txt: title, size:15).frame(width: 300,height: 42)
        }
    }
}
struct NavigationButton<Label: View, Destination: View>: View {
    let destination: Destination
    let action: (() -> Void)?
    let label: Label
    
    init(destination: Destination, action: (() -> Void)? = nil, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.action = action
        self.label = label()
    }
    
    var body: some View {
        Button(action: {
            action?()
        }) {
            NavigationLink(destination: destination) {
                label
            }
        }
    }
}

struct TxtField: View {
    var icon: String
    var placeholder: String
    @Binding var text: String
    var obscure: Bool = false
    var body: some View {
        HStack {
            Image(icon).resizable().scaledToFit().frame(width: 23,height: 23)
                .foregroundColor(Color("textBody"))
            if obscure {
                SecureField(placeholder, text: $text)
                    .foregroundColor(Color("color7C"))
                    .font(.custom("WorkSans-Regular", size: 13))
                    .padding(1)
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(Color("color7C"))
                    .font(.custom("WorkSans-Regular", size: 13))
                    .padding(1)
            }
        }.frame(width:.infinity,height: 48)
            .padding(.horizontal)
            .background(Color("textFieldColor"))
            .cornerRadius(8)
    }
}


struct PreviewAddressWidget: View {
    var title:String
    var address:String
    var body: some View {
        VStack(alignment: .leading){
            TxtWrkSB(txt: title,
                     size: 14,maxLines: 1,alignment: .leading)
            Spacer()
            TxtWrkSB(txt: address,
                     size: 13,color: "textSub",maxLines: 1,alignment: .leading)
        }.padding()
            .background(Color("lightBg"))// Set background color
            .cornerRadius(15) // Set corner radius
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color("textHairline"), lineWidth: 1) // Set border color and width
            )
    }
}

struct ProfileInfo: View {
    var twoTxt: String
    var Name: String
    var email:String
    
    var body: some View {
        HStack{
            TxtWrkSB(txt: twoTxt, size: 24,color: "background-color")
                .frame(width:60, height: 60)
                .background(Color("orange00"))
                .clipShape(Circle())
            Spacer().frame(width:10)
            VStack(alignment: .leading){
                TxtWrkSB(txt:Name, size: 16,maxLines: 1)
                Spacer().frame(height: 5)
                TxtWrk(txt: email, size: 14,color: "textBody")
            }
            Spacer()
            
        }
    }
}

struct ProfileOption: View {
    var  title:String
    var  icon:String
    var body: some View {
        HStack(alignment: .center){
            Image(icon).resizable().scaledToFit().frame(width: 24,height: 24)
            Spacer().frame(width: 10)
            TxtWrk(txt:title,size:14,color:"textBody")
            Spacer()
            Image(systemName: "chevron.forward").resizable().scaledToFit().foregroundColor(Color("hash")).frame(width: 14,height: 14)
            
        }.padding(.vertical,14)
    }
}
