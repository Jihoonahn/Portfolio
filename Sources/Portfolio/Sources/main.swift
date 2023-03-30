import JavaScriptEventLoop
import JavaScriptKit
import Foundation

JSObject.global.document.object!.body.innerHTML = .string("")

var title = JSObject.global.document.createElement("title")
title.innerHTML = .string("Jihoonahn Portfolio")
_ = JSObject.global.document.head.appendChild(title)

var favicon = JSObject.global.document.createElement("link")
favicon.rel = .string("icon")
favicon.type = .string("image/x-icon")
favicon.href = .string("favicon.ico")
_ = JSObject.global.document.head.appendChild(favicon)

JavaScriptEventLoop.installGlobalExecutor()

PortfolioApp.main()
