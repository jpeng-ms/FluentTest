//
//  ContentView.swift
//  FluentTest
//
//  Created by Emlyn Bolton-Maggs on 2022-11-08.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewmodel = ViewModel()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            AvatarGroupContainer(participantList: viewmodel.participants,
                                 avatarGroup: viewmodel.avatarGroup)
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.9, execute: {
                viewmodel.participants =  [
                    ParticipantInfoModel(displayName: "pp"),
                    ParticipantInfoModel(displayName: "sd"),
                    ParticipantInfoModel(displayName: "jj"),
                    ParticipantInfoModel(displayName: "jm"),
                    ParticipantInfoModel(displayName: "jd"),
                    ParticipantInfoModel(displayName: "jq")
                ]
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                viewmodel.participants =  [
                    ParticipantInfoModel(displayName: "jj"),
                    ParticipantInfoModel(displayName: "jm"),
                    ParticipantInfoModel(displayName: "jd"),
                    ParticipantInfoModel(displayName: "jq")
                ]
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.1, execute: {
                viewmodel.participants = [
                    ParticipantInfoModel(displayName: "oo"),
                    ParticipantInfoModel(displayName: "oo"),
                ]
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class ViewModel: ObservableObject {
    var avatarGroup = ParticipantAvatarGroup()
    @Published var participants: [ParticipantInfoModel] = [
        ParticipantInfoModel(displayName: "oo"),
        ParticipantInfoModel(displayName: "oo"),
    ]
}
