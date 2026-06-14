import SwiftUI

struct page0: View {
    @State private var navigateToPage1 = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("first")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer().frame(height: 200)
                    
                    VStack(spacing: 15) {
                        Text("ياهلا وسهلا")
                            .font(.system(size: 45, weight: .bold))
                            .foregroundColor(Color(red: 0.2, green: 0.3, blue: 0.3))
                        
                        Text("اختر طريقتك واستمتع بالقصة")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button(action: { navigateToPage1 = true }) {
                        Text(" ابدا ")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 260, height: 60)
                            .background(Color(red: 0.3, green: 0.4, blue: 0.4))
                            .cornerRadius(30)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 8)
                    }
                    
                    Spacer()
                    
                    Text("TEAM 404")
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .padding(.bottom, -20)
                }
                .padding(26)
                
                NavigationLink(destination: page1(), isActive: $navigateToPage1) {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    page0()
}
