import SwiftUI
import AVFoundation  // مهم جدًا لتشغيل الصوت

struct page4: View {
    @State private var isPlaying = false
    @State private var currentTime: Double = 0
    @State private var duration: Double = 100
    @State private var audioPlayer: AVAudioPlayer?  // مشغل الصوت
    @Environment(\.dismiss) var dismiss

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
                    Text("حمارة القايلة")
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 40)
                }
                
                // صورة القصة
                Spacer()
                Image("intro")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .shadow(radius: 10)
                
                Spacer()
                
                // شريط التقدم (ثابت الآن)
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
                    
                    Button(action: {
                        toggleAudio()  // تشغيل/إيقاف الصوت
                    }) {
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
                    
                    Button(action: {
                        dismiss()
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
        .onAppear {
            setupAudio()
        }
    }
    
    // إعداد الصوت
    func setupAudio() {
        if let path = Bundle.main.path(forResource: "Recording", ofType: "m4a") { // ضع اسم ملفك هنا
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
            } catch {
                print("خطأ في تحميل الصوت: \(error.localizedDescription)")
            }
        }
    }
    
    // تشغيل/إيقاف الصوت
    func toggleAudio() {
        if isPlaying {
            audioPlayer?.pause()
        } else {
            audioPlayer?.play()
        }
        isPlaying.toggle()
    }
}

#Preview {
    page4()
}
