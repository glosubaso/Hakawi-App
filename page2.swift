import SwiftUI

struct Story: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

struct page2: View {
    
    let userName: String
    let character: String
    
    let stories = [
        Story(title: "حمارة القايلة", imageName:"intro"),
        Story(title: "ام السعف والليف", imageName: "السعف"),
        Story(title: "السعلوّه ", imageName: "السعلوه"),
        Story(title: "حدندن ", imageName: "حدندن"),
        Story(title: "ولد القليب ", imageName:"soon1"),
        Story(title: " مزعل طمية ", imageName:"soon2")
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    @State private var searchText = ""
    @State private var selectedStory: Story? = nil
    
    var filteredStories: [Story] {
        if searchText.isEmpty { stories }
        else { stories.filter { $0.title.localizedStandardContains(searchText) } }
    }

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                Spacer().frame(height: 50)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("البحث...", text: $searchText)
                        .multilineTextAlignment(.trailing)
                }
                .padding()
                .background(Color.white.opacity(0.9))
                .cornerRadius(25)
                .padding(.horizontal, 25)
                
                HStack {
                    Spacer()
                    
                    HStack(spacing: 12) {
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("مرحباً \(userName)")
                                .font(.system(size: 22, weight: .light))
                                .foregroundColor(.gray.opacity(0.8))
                            Rectangle()
                                .frame(width: 45, height: 1)
                                .foregroundColor(.gray.opacity(0.3))
                        }
                        
                        Image(character)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal, 35)
                .padding(.top, 30)
                .padding(.bottom, 30)

                ScrollView {
                    LazyVGrid(columns: columns, spacing:40) {
                        ForEach(filteredStories) { story in
                            Button(action: { selectedStory = story }) {
                                VStack(spacing: 12) {
                                    Image(story.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 155, height: 155)
                                        .cornerRadius(25)
                                        .clipped()
                                    
                                    Text(story.title)
                                        .font(.system(size: 16, weight: .medium))
                                        .foregroundColor(Color(red: 0.2, green: 0.3, blue: 0.4))
                                }
                                .padding(.bottom, 15)
                                .background(Color.white)
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.2), radius: 15, x: 0, y: 10)
                            }
                        }
                    }
                    .padding(.horizontal, 25)
                    .padding(.bottom, 20)
                }
                
                Text("TEAM 404")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                
                Spacer()
            }
        }
        .navigationDestination(isPresented: Binding(
            get: { selectedStory != nil },
            set: { if !$0 { selectedStory = nil } }
        )) {
            if let story = selectedStory {
                switch story.title {
                case "حمارة القايلة": page3(storyTitle: story.title)
                case "ام السعف والليف": page11(storyTitle: story.title)
                default: Text("قصة: \(story.title)")
                }
            }
        }
    }
}

#Preview {
    page2(userName: "غالية", character: "girl")
}
