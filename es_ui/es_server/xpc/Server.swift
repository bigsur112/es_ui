//
//  Server.swift
//  es_server
//
//  Created by caicai on 2022/6/22.
//

import Foundation
import EndpointSecurity

class Server : NSObject {
    let listener = NSXPCListener(machServiceName: "com.caidev.es_server")
    override init(){
        super.init()
        listener.delegate = self
        listener.resume()
    }
}

extension Server : NSXPCListenerDelegate {
    func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
        newConnection.exportedInterface = NSXPCInterface(with: Ess.self)
        newConnection.exportedObject = Server.Export()
        newConnection.resume()
        return true
    }
}

extension Server {
    static let share = Server()
}

