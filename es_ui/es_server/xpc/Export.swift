//
//  Export.swift
//  es_server
//
//  Created by caicai on 2022/6/22.
//

import Foundation
import EndpointSecurity

extension Server {
    class Export : NSObject {
        
    }
}

extension Server.Export : Ess {
    func new_client(_ cb: @escaping (es_new_client_result_t, Data?) -> Void) {
        var p : OpaquePointer? = nil
        let r = es_new_client(&p) { client, mp in
            self.handle(client, mp)
        }
        var data : Data? = nil
        if r == ES_NEW_CLIENT_RESULT_SUCCESS {
            //TODO 创建共享内存
        }
        cb(r,data)
    }
    
    func delete_client(_ uuid: UUID, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func subscribe(_ uuid: UUID, types: Data, _ cb: @escaping (es_return_t) -> Void) {
        
    }
    
    func subscriptions(_ uuid: UUID, _ cb: @escaping (es_result_t, Data) -> Void) {
        
    }
    
    func unsubscribe(_ uuid: UUID, types: Data, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func unsubscribeAll(_ uuid: UUID, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func mute_process(_ uuid: UUID, _ auditToken: audit_token_t, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func mute_process_events(_ uuid: UUID, _ auditToken: audit_token_t, _ types: Data, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func mute_path(_ uuid: UUID, path: String, type: es_mute_path_type_t, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func mute_path(_ uuid: UUID, path: String, type: es_mute_path_type_t, types: Data, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func muted_paths_events(_ uuid: UUID, _ cb: @escaping (Data) -> Void) {
        
    }
    
    func unmute_process(_ uuid: UUID, _ auditToken: audit_token_t, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func unmute_process_events(_ uuid: UUID, _ auditToken: audit_token_t, _ types: Data, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func unmute_path(_ uuid: UUID, path: String, type: es_mute_path_type_t, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func unmute_path(_ uuid: UUID, path: String, type: es_mute_path_type_t, types: Data, _ cb: @escaping (es_result_t) -> Void) {
        
    }
    
    func unmute_all_path(_ uuid: UUID, _ cb: @escaping (es_result_t) -> Void) {
        
    }
}

extension Server.Export {
    func handle(_ client: OpaquePointer,_ message: UnsafePointer<es_message_t>) {
        
    }
}
