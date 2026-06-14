import SwiftUI

struct page3: View {
    let storyTitle: String
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            // الخلفية
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 3)

            VStack(spacing: 10) {
                Spacer()

                // العنوان
                Text(storyTitle)
                    .font(.system(size: 18))
                    .fontWeight(.medium)

                Spacer()

                // صورة القصة
                Image("intro")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(radius: 10)

                // النص
                VStack(spacing: 10) {
                    Text("في وقت القايلة، الكل ينام...")
                    Text("إلا سلمان.")
                    Text("طالع يلعب، وفجأة شاف حمار غريب.")
                    Text("يا ترى وش صار لسلمان؟")
                    Text("اسمع القصة واعرف ليه ما نطلع")
                        .fontWeight(.semibold)
                    Text("وقت القايلة")
                        .fontWeight(.semibold)
                }
                .multilineTextAlignment(.center)
                .padding()

                // الأزرار
                HStack(spacing: 15) {
                    NavigationLink(destination: page4()) {
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

                    NavigationLink(destination: page5()) {
                        Text("اقرأ القصة")
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 45)
                            .background(Color.white.opacity(0.8))
                            .foregroundColor(.black)
                            .cornerRadius(15)
                    }
                }

                Spacer()

               
                Spacer()

                // اسم الفريق
                Text("TEAM 404")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    page3(storyTitle: "حمارة القايلة")
}
