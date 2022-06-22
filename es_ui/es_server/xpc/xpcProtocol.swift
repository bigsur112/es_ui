//
//  xpcProtocol.swift
//  es_server
//
//  Created by caicai on 2022/6/22.
//

import Foundation
import EndpointSecurity

@objc protocol Ess {
    func new_client(_ cb: @escaping (es_new_client_result_t,Data?) -> Void) //共享内存数据
    func delete_client(_ uuid: UUID,_ cb: @escaping (es_result_t) -> Void)
    func subscribe(_ uuid: UUID,types: Data,_ cb: @escaping (es_return_t) -> Void) // [es_evevt_type]
    func subscriptions(_ uuid: UUID,_ cb: @escaping (es_result_t,Data)->Void) // [es_evevt_type]
    func unsubscribe(_ uuid: UUID, types: Data, _ cb: @escaping(es_result_t) -> Void) // [es_evevt_type]
    func unsubscribeAll(_ uuid: UUID,_ cb: @escaping(es_result_t) -> Void)
    
    func mute_process(_ uuid: UUID,_ auditToken: audit_token_t,_ cb: @escaping (es_result_t) -> Void)
    func mute_process_events(_ uuid: UUID,_ auditToken: audit_token_t,_ types:Data,_ cb: @escaping(es_result_t) -> Void) // [es_evevt_type]
    func mute_path(_ uuid: UUID,path: String, type: es_mute_path_type_t,_ cb: @escaping(es_result_t) -> Void)
    func mute_path(_ uuid: UUID,path: String, type: es_mute_path_type_t,types: Data,_ cb: @escaping(es_result_t) -> Void) // [es_evevt_type]
    func muted_paths_events(_ uuid: UUID,_ cb: @escaping(Data) -> Void) // [es_paths]
    
    func unmute_process(_ uuid: UUID,_ auditToken: audit_token_t,_ cb: @escaping (es_result_t) -> Void)
    func unmute_process_events(_ uuid: UUID,_ auditToken: audit_token_t,_ types:Data,_ cb: @escaping(es_result_t) -> Void)
    func unmute_path(_ uuid: UUID,path: String, type: es_mute_path_type_t,_ cb: @escaping(es_result_t) -> Void)
    func unmute_path(_ uuid: UUID,path: String, type: es_mute_path_type_t,types: Data,_ cb: @escaping(es_result_t) -> Void)
    func unmute_all_path(_ uuid: UUID,_ cb: @escaping (es_result_t) -> Void)
}
