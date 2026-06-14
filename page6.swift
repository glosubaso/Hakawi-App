import SwiftUI

struct page6: View {
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

                    Image("momImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 40))

                    Text("""

بس سلمان كان يقول: أنا ما أحب أنام!
أمه دايم تقول له: يا وليدي، انتبه لا تطلع!
ترى حمارة القايلة بتلقاك!
سلمان ما صدّق،
وفي يوم حار، طلع من الباب
عشان يلعب لحاله في الشارع الفاضي.
""")
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .padding(.horizontal, 30)

                    Spacer()

                    // الأزرار (نفس page5)
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
                        NavigationLink(destination: page7()) {
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
       // }//nav
    }
}

#Preview {
    page6()
}
