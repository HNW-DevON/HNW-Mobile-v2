//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by dgsw8th71 on 1/4/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Service",
    product: .staticFramework,
    dependencies: [
        .Project.ThirdPartyLib
    ],
    resources: ["Resources/**"]
)
