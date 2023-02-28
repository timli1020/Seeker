//
//  User.swift
//  Seeker
//
//  Created by Tim Li on 2/26/23.
//

import Foundation

struct User {
    let id: UUID;
    var name: String;
    var containers: [Container]
}

struct Container: Identifiable {
    let id: UUID;
    var containerName: String;
    var jobs: [Job];
    
    init(id: UUID = UUID(), containerName: String, jobs: [Job]) {
        self.id = id;
        self.containerName = containerName;
        self.jobs = jobs;
    }
}

struct Job: Identifiable {
    let id: UUID;
    var companyName: String;
    var positionName: String;
    var dateApplied: Date;
    
    init(id: UUID = UUID(), companyName: String, positionName: String, dateApplied: Date) {
        self.id = id;
        self.companyName = companyName;
        self.positionName = positionName;
        self.dateApplied = dateApplied;
    }
}

extension User {
    static let staticJobData: [Job] = [
        Job(companyName: "Google", positionName: "Software Engineer", dateApplied: Date()),
        Job(companyName: "Microsoft", positionName: "Sr Software Engineer", dateApplied: Date()),
        Job(companyName: "Amazon", positionName: "Project Manager", dateApplied: Date()),
        Job(companyName: "Netflix", positionName: "Software Engineer", dateApplied: Date()),
        Job(companyName: "Facebook", positionName: "Sr Software Engineer", dateApplied: Date()),
        Job(companyName: "Capital One", positionName: "Project Manager", dateApplied: Date()),
        Job(companyName: "Bloomberg", positionName: "Software Engineer", dateApplied: Date()),
        Job(companyName: "Netflix", positionName: "Software Engineer", dateApplied: Date()),
        Job(companyName: "Facebook", positionName: "Sr Software Engineer", dateApplied: Date()),
        Job(companyName: "Capital One", positionName: "Project Manager", dateApplied: Date()),
        Job(companyName: "Bloomberg", positionName: "Software Engineer", dateApplied: Date()),
    ];
    
    static let staticContainerData: [Container] = [
        Container(containerName: "Applied", jobs: staticJobData),
        Container(containerName: "Interview", jobs: staticJobData),
        Container(containerName: "Offer", jobs: staticJobData),
    ];
}
