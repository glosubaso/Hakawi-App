import SwiftUI

struct page12: View {
    @State private var isPlaying = false
    @State private var currentTime: Double = 0
    @State private var duration: Double = 100
    @Environment(\.dismiss) var dismiss  // <-- هنا

    var body: some View {
        ZStack {
            // الخلفية
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 3)
            
            VStack(spacing: 20) {
                // الهيدر
                VStack {
                    Text(" ام السعف والليف")
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 40)
                }
                
                // صورة القصة
                Spacer()
                Image("السعف")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .shadow(radius: 10)
                
                Spacer()
                
                // شريط التقدم
                VStack(spacing: 10) {
                    HStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 2)
                        
                        Circle()
                            .fill(Color(red: 0.4, green: 0.5, blue: 0.5))
                            .frame(width: 16, height: 16)
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 2)
                    }
                    .padding(.horizontal, 40)
                }
                
                // أزرار التحكم
                HStack(spacing: 40) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .frame(width: 35, height: 25)
                            .foregroundColor(Color(red: 0.4, green: 0.5, blue: 0.5))
                    }
                    
                    Button(action: { isPlaying.toggle() }) {
                        Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                            .resizable()
                            .frame(width: 30, height: 35)
                            .foregroundColor(Color(red: 0.4, green: 0.5, blue: 0.5))
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: 35, height: 25)
                            .foregroundColor(Color(red: 0.4, green: 0.5, blue: 0.5))
                    }
                }
                .padding(.vertical, 20)
                
                // الأزرار السفلية
                VStack(spacing: 15) {
                    Spacer()
                    
                    // زر ارجع يعمل بشكل صحيح
                    Button(action: {
                        dismiss()  // <-- هنا
                    }) {
                        Text("ارجع")
                            .fontWeight(.semibold)
                            .frame(width:120, height: 20)
                            .padding()
                            .background(Color(red: 0.4, green: 0.5, blue: 0.5))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    Spacer()
                    
                    Text("TEAM 404")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.bottom, -20)
                }
            }
        }
    }
}

#Preview {
    page12()
}
