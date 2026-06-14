import SwiftUI

struct page11: View {

    let storyTitle: String
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                // الخلفية
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 3)

                VStack(spacing: 5) {

                    Spacer()

                    // العنوان
                    Text(storyTitle)
                        .font(.system(size: 18))
                        .fontWeight(.medium)
Spacer()
                    // صورة القصة
                    Image("السعف")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .shadow(radius: 10)

                    // النص
                    VStack(spacing: 10) {
Text("""
    
    عندما يقترب الغروب وتهدأ القرية بين النخيل تُغلق الأبواب واحدًا تلو الآخر 
        وتهمس الأصوات القديمة:
        “دقّوا الأبواب… أم السعف والليف تطلع.”
    ماذا لو تحرّك الظل بين النخيل
      هذه حكاية سالم 
        استمع للحكاية… قبل أن يدخل الليل.

    """)
                    }
                    .multilineTextAlignment(.center)
                    .padding()

                    // الأزرار
                    HStack(spacing: 15) {
                        
                        // زر اسمع القصة
                        NavigationLink(destination: page12()) {
                            HStack {
                                Image(systemName: "speaker.wave.2.fill")
                                Text("اسمع القصة")
                                    .fontWeight(.semibold)
                            }
                            .frame(width: 140, height: 45)
                            .background(Color(red: 0.4, green: 0.5, blue: 0.5))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        }
                        
                        // زر اقرأ القصة
                        NavigationLink(destination: page13()) {
                            Text("اقرأ القصة")
                                .fontWeight(.semibold)
                                .frame(width: 140, height: 45)
                                .background(Color.white.opacity(0.8))
                                .foregroundColor(.black)
                                .cornerRadius(15)
                        }
                        
                    }
                    Spacer()
                  

                    // اسم الفريق
                    Text("TEAM 404")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                }
            }
        }
    }
}

#Preview {
    page11(storyTitle: " ام السعف والليف")
}
