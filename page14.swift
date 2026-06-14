
import SwiftUI

struct page14: View {

            @Environment(\.dismiss) var dismiss  //
            var body: some View {
                NavigationView {
                    ZStack {
                        Image("background")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                        
    VStack {
                            Spacer()
Text(" ام السعف و الليف")
   .font(.system(size: 28, weight: .semibold))
  .foregroundColor(.black)
.padding(.top, 40)
                            
                            Spacer()
                            
                            Image("page12")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 300)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                            
                            Text("""
        
         في تلك القرية عاش طفل اسمه سالم واخته الهنوف ،كان شجاعًا لكنه فضولي
        وفي إحدى الليالي، تأخر شوي قرب البيت.
        ‎ ، وشاف ظل طويل يتحرك بين النخيل
        ‎        فتساءل هو واخته : هل هو خيال أو صدق؟ 
        """)
                            .font(.system(size: 18))
                            .multilineTextAlignment(.center)
                            .lineSpacing(5)
                            .padding(.horizontal, 30)
                            
                            Spacer()
                            
                            HStack(spacing: 16) {
                                // الزر الاول - ارجع
                                Button(action: {
                                    dismiss() //  هنا يتم الرجوع للصفحة السابقة
                                }) {
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
                                
                                // الزر الثاني - كمّل
                                NavigationLink(destination: page15()) {
                                    Text("كمّل")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(width: 140, height: 45)
                                        .background(Color(red: 0.3, green: 0.4, blue: 0.4))
                                        .cornerRadius(30)
                                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 8)
                                }
                                .padding(.vertical, 40)
                            }
                            
                            Text("TEAM 404")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(.gray)
                                .padding(.top, 8)
                                .padding(.bottom, 30)
                        }
                    }
                }
            }
        }

     

    

#Preview {
    page14()
}
