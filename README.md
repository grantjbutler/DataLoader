# DataLoader

DataLoader is a proof of concept for loading data in a SwiftUI application. This is heavily based off of Adam Wathan's [implementation](https://jsfiddle.net/adamwathan/xov6ksvd/) of a similar concept for Vue.js.

```swift
struct ContentView : View {
    var body: some View {
        NavigationView {
            DataLoader(url: URL(string: "https://jsonplaceholder.typicode.com/users")!, model: [User].self) { users in
                List(users) { user in
                    UserRow(user: user)
                }
            }
            .navigationBarTitle(Text("Users"))
        }
    }
}
```
