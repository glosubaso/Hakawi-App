import SwiftUI

struct page7: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
      //  NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    // العنوان (نفس page5)
                    Text("حمارة القايلة")
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 40)

                    Spacer()

                    // الصورة (نفس المقاس والشكل)
                    Image("page9")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 40))

                    // النص (نفس الخط والمسافات)
                    Text("""
فجأة، لمح سلمان شي غريب جاي من بعيد!
حمارة بلون غامق وشايلة على ظهرها
سلة خوص كبيرة. لكن وش الغريب؟
يوم قرب شاف سلمان رجولها مقلوبة!
وهي تمشي بخطوات غريبة ومربكة.
هذه هي حمارة القايلة!
""")
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .padding(.horizontal, 30)

                    Spacer()

                    // الأزرار (نفس التصميم)
                    HStack(spacing: 16) {

                        // زر ارجع
                        Button {
                            dismiss()
                        } label: {
                            Text("ارجع")
                                .foregroundColor(.gray)
                        }
                        .frame(width: 140, height: 45)
                        .background(Color.white)
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray.opacity(0.4))
                        )

                        // زر كمّل
                        NavigationLink(destination: page8()) {
                            Text("كمّل")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 140, height: 45)
                                .background(Color(red: 0.3, green: 0.4, blue: 0.4))
                                .cornerRadius(30)
                                .shadow(
                                    color: Color.black.opacity(0.2),
                                    radius: 10,
                                    x: 0,
                                    y: 8
                                )
                        }
                    }
                    .padding(.vertical, 40)

                    // اسم الفريق
                    Text("TEAM 404")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.gray)
                        .padding(.top, 8)
                        .padding(.bottom, 30)
                }
            }
      //  }//nav
    }
}

#Preview {
    page7()
}

