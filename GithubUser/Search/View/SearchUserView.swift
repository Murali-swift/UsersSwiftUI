import SwiftUI

struct SearchUserView: View {
    @ObservedObject var viewModel = SearchUserViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                SearchUserBar(text: $viewModel.name) {
                    self.viewModel.search()
                }
                
                List(viewModel.users) { user in
                    NavigationLink(destination: UserDetailView()) {
                        SearchUserRow(viewModel: self.viewModel, user: user)
                    }
                }
            }
            .navigationBarTitle(Text("Users"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
