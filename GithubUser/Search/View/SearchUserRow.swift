import SwiftUI

struct SearchUserRow: View {
    @ObservedObject var viewModel: SearchUserViewModel
    @State var user: User

    var body: some View {
        HStack {
            AsyncImage(url: user.avatar_url)
            .frame(width: 44, height: 44)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
            
            Text(user.login)
                .font(Font.system(size: 18).bold())
            
            Spacer()
        }
        .frame(height: 60)
    }
}
