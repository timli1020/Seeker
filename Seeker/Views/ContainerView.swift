//
//  ContainerView.swift
//  Seeker
//
//  Created by Tim Li on 2/26/23.
//

import SwiftUI

struct ContainerView: View {
    let container: Container;
    var body: some View {
        ScrollView {
            VStack {
                ForEach(container.jobs) {job in
                    JobView(job: job)
                };
            }
        }
    };
}

struct ContainerView_Previews: PreviewProvider {
    static var container: Container = User.staticContainerData[0];
    static var previews: some View {
        ContainerView(container: container)
    };
}
