//
//  JobView.swift
//  Seeker
//
//  Created by Tim Li on 2/26/23.
//

import SwiftUI

struct JobView: View {
    let job: Job;
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: 200, height: 65)
            .overlay {
                VStack(alignment: .leading){
                    Text(job.positionName)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white);
                    Text(job.companyName)
                        .font(.caption)
                        .foregroundColor(Color.white);
                }
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

struct JobView_Previews: PreviewProvider {
    static var previews: some View {
        let job: Job = User.staticJobData[0];
        JobView(job: job);
    }
}
