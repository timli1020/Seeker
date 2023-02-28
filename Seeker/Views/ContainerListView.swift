//
//  ContainerListView.swift
//  Seeker
//
//  Created by Tim Li on 2/27/23.
//

import SwiftUI

struct ContainerListView: View {
    let containers: [Container];
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(containers) {container in
                    ContainerView(container: container)
                };
            }
        }
    }
}

struct ContainerListView_Previews: PreviewProvider {
    static var containers = User.staticContainerData;
    
    static var previews: some View {
        ContainerListView(containers: containers);
    }
}
