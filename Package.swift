// swift-tools-version:4.0
//
//  Package.swift
//  PerfectFileMaker
//
//  Created by Kyle Jessup on 2016-07-20.
//	Copyright (C) 2018 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2018 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription
let package = Package(name: "PerfectFileMaker", 
	products: [.library(name: "PerfectFileMaker",targets: ["PerfectFileMaker"]),],
    dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-XML.git", from: "3.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-CURL.git", from: "3.0.0"),
	],
    targets: [
        .target(
            name: "PerfectFileMaker",
            dependencies: ["PerfectXML", "PerfectCURL"]),
        .testTarget(
            name: "PerfectFileMakerTests",
            dependencies: ["PerfectFileMaker"]),
    ])