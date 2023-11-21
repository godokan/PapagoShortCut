//
//  WebView.swift
//  PapagoShortCut
//
//  Created by 구자민 on 2023/11/22.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    let url: URL
    
    func makeNSView(context: NSViewRepresentableContext<WebView>) -> WKWebView {
        let webView: WKWebView = WKWebView()
        let request = URLRequest(url: self.url)
        webView.customUserAgent = "Safati/605"
        webView.load(request)
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: NSViewRepresentableContext<WebView>) {}
}
