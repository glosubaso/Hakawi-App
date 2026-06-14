
import SwiftUI
import AVFoundation

struct page17: View {
    @State private var audioPlayer: AVAudioPlayer?

    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    // العنوان
                    Text("ام السعف والليف ")
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 40)

                    Spacer()

                    // الصورة
                    Image("page14")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 40))

                    // النص
                    Text("""

وش قالت أم السعف والليف لسالم؟

""")
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .padding(.horizontal, 30)

                    Spacer()

                    // الأزرار
                    VStack(spacing: 16) {

                        NavigationLink(destination: page18()) {
                            Text("الأطفال مكانهم بيوتهم")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 220, height: 45)
                                .background(Color(red: 0.3, green: 0.4, blue: 0.4))
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 8)
                        }

                        NavigationLink(destination: page18()) {
                            Text("العب معي")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 220, height: 45)
                                .background(Color(red: 0.3, green: 0.4, blue: 0.4))
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 8)
                        }
                    }
Spacer()
                    Text("TEAM 404")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.gray)
                        .padding(.bottom, 30)
                }
            }
            .onAppear {
                playSound()
            }
            .onDisappear {
                audioPlayer?.stop()   // ← يوقف الصوت عند الخروج
            }
        }
    }

    // تشغيل الصوت
    func playSound() {
        guard let url = Bundle.main.url(forResource: "quizSound", withExtension: "m4a") else {
            print("❌ ملف الصوت غير موجود")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("❌ خطأ في تشغيل الصوت: \(error.localizedDescription)")
        }
    }
}

#Preview {
    page17()
}
