// 
//  Copyright (c) Microsoft Corporation. All rights reserved. 
//  Licensed under the MIT License. 
// 

import SwiftUI

struct AvatarGroupContainer: UIViewRepresentable {

    var participantList: [ParticipantInfoModel]
    var avatarGroup: ParticipantAvatarGroup

    func makeUIView(context: Context) -> ParticipantAvatarGroup {
        avatarGroup.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        return avatarGroup
    }

    func updateUIView(_ uiView: ParticipantAvatarGroup, context: Context) {
        avatarGroup.setAvatars(to: participantList)
    }
}

struct ParticipantInfoModel {
    var displayName: String
}
