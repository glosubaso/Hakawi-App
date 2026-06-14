import SwiftUI

struct page1: View {
    
    @State private var name: String = ""
    @State private var selectedCharacter: String? = nil
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("طب و تخير")
                    .font(.system(size: 30))
                    .foregroundColor(Color(red: 107/255, green: 134/255, blue: 142/255))
                    .padding(.top, 90)
                
                HStack(spacing: 60) {
                    VStack {
                        Image("girl")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 170)
                        
                        Button("الشيخه") {
                            selectedCharacter = "girl"
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Capsule().fill(Color(red: 107/255, green: 134/255, blue: 142/255)))
                    }
                    
                    VStack {
                        Image("boy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 170)
                        
                        Button("الشيخ") {
                            selectedCharacter = "boy"
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Capsule().fill(Color(red: 107/255, green: 134/255, blue: 142/255)))
                    }
                }
                
                VStack(spacing: 15) {
                    Text("اسمك طال عمرك:")
                        .font(.system(size: 23))
                        .foregroundColor(Color(red: 107/255, green: 134/255, blue: 142/255))
                    
                    TextField("اسمك ..", text: $name)
                        .padding()
                        .background(Color.black.opacity(0.13))
                        .cornerRadius(20)
                        .frame(maxWidth: 250)
                        .multilineTextAlignment(.trailing)
                    
                    Spacer()
                    
                    if let character = selectedCharacter {
                        NavigationLink(destination: page2(userName: name, character: character)) {
                            Text("كمّل")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 140, height: 40)
                                .background(Color(red: 0.3, green: 0.4, blue: 0.4))
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 8)
                        }
                        .disabled(name.isEmpty)
                    }
                    
                    NavigationLink(destination: page2(userName: "", character: "girl")) {
                        Text("مستعجل ماودي")
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.3, green: 0.4, blue: 0.4))
                            .frame(width: 200, height: 55)
                            .background(Color.white.opacity(0.9))
                            .cornerRadius(28)
                            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 5)
                    }
                    
                    Spacer()
                }
                
                Text("TEAM 404")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(.bottom, -20)
            }
            .padding(26)
        }
    }
}

#Preview {
    page1()
}
