-- ------------------------------------------------ Foreign Keys -----------------------------------------------
ALTER TABLE actor DROP FOREIGN KEY fk_actor_tenantId;
ALTER TABLE actormember DROP FOREIGN KEY fk_actormember_tenantId;
ALTER TABLE breakpoint DROP FOREIGN KEY fk_breakpoint_tenantId;
-- ALTER TABLE queriable_log DROP FOREIGN KEY fk_queriable_log_tenantId;
ALTER TABLE queriablelog_p DROP FOREIGN KEY fk_queriablelog_p_tenantId;
ALTER TABLE category DROP FOREIGN KEY fk_category_tenantId;
ALTER TABLE command DROP FOREIGN KEY fk_command_tenantId;
ALTER TABLE connector_instance DROP FOREIGN KEY fk_connector_instance_tenantId;
ALTER TABLE data_instance DROP FOREIGN KEY fk_data_instance_tenantId;
ALTER TABLE data_mapping DROP FOREIGN KEY fk_data_mapping_tenantId;
ALTER TABLE datasource DROP FOREIGN KEY fk_datasource_tenantId;
ALTER TABLE datasourceparameter DROP FOREIGN KEY fk_datasourceparameter_tenantId;
ALTER TABLE dependency DROP FOREIGN KEY fk_dependency_tenantId;
ALTER TABLE dependencymapping DROP FOREIGN KEY fk_dependencymapping_tenantId;
ALTER TABLE document_content DROP FOREIGN KEY fk_document_content_tenantId;
ALTER TABLE document_mapping DROP FOREIGN KEY fk_document_mapping_tenantId;
ALTER TABLE event_trigger_instance DROP FOREIGN KEY fk_event_trigger_instance_tenantId;
ALTER TABLE external_identity_mapping DROP FOREIGN KEY fk_external_identity_mapping_tenantId;
ALTER TABLE flownode_instance DROP FOREIGN KEY fk_flownode_instance_tenantId;
ALTER TABLE group_ DROP FOREIGN KEY fk_group__tenantId;
ALTER TABLE hidden_activity DROP FOREIGN KEY fk_hidden_activity_tenantId;
-- ALTER TABLE job_desc DROP FOREIGN KEY fk_job_desc_tenantId;
ALTER TABLE job_param DROP FOREIGN KEY fk_job_param_tenantId;
ALTER TABLE message_instance DROP FOREIGN KEY fk_message_instance_tenantId;
-- ALTER TABLE migration_plan DROP FOREIGN KEY fk_migration_plan_tenantId;
ALTER TABLE custom_usr_inf_def DROP FOREIGN KEY fk_custom_usr_inf_def_tenantId;
ALTER TABLE custom_usr_inf_val DROP FOREIGN KEY fk_custom_usr_inf_val_tenantId;
ALTER TABLE pending_mapping DROP FOREIGN KEY fk_pending_mapping_tenantId;
ALTER TABLE processcategorymapping DROP FOREIGN KEY fk_processcategorymapping_tenantId;
ALTER TABLE process_comment DROP FOREIGN KEY fk_process_comment_tenantId;
ALTER TABLE process_definition DROP FOREIGN KEY fk_process_definition_tenantId;
ALTER TABLE process_instance DROP FOREIGN KEY fk_process_instance_tenantId;
ALTER TABLE processsupervisor DROP FOREIGN KEY fk_processsupervisor_tenantId;
ALTER TABLE profile DROP FOREIGN KEY fk_profile_tenantId;
ALTER TABLE profileentry DROP FOREIGN KEY fk_profileentry_tenantId;
ALTER TABLE profilemember DROP FOREIGN KEY fk_profilemember_tenantId;
ALTER TABLE ref_biz_data_inst DROP FOREIGN KEY fk_ref_biz_data_inst_tenantId;
ALTER TABLE role DROP FOREIGN KEY fk_role_tenantId;
ALTER TABLE theme DROP FOREIGN KEY fk_theme_tenantId;
ALTER TABLE user_ DROP FOREIGN KEY fk_user__tenantId;
ALTER TABLE user_membership DROP FOREIGN KEY fk_user_membership_tenantId;
ALTER TABLE waiting_event DROP FOREIGN KEY fk_waiting_event_tenantId;

ALTER TABLE profilemember DROP FOREIGN KEY fk_profilemember_profileId;
ALTER TABLE profileentry DROP FOREIGN KEY fk_profileentry_profileId;


--  ------------------------ Foreign Keys to disable if archiving is on another BD ------------------
ALTER TABLE arch_document_mapping DROP FOREIGN KEY fk_arch_document_mapping_tenantId;
ALTER TABLE arch_flownode_instance DROP FOREIGN KEY fk_arch_flownode_instance_tenantId;
ALTER TABLE arch_process_comment DROP FOREIGN KEY fk_arch_process_comment_tenantId;
ALTER TABLE arch_process_instance DROP FOREIGN KEY fk_arch_process_instance_tenantId;
ALTER TABLE arch_transition_instance DROP FOREIGN KEY fk_arch_transition_instance_tenantId;
ALTER TABLE arch_data_instance DROP FOREIGN KEY fk_arch_data_instance_tenantId;
ALTER TABLE arch_data_mapping DROP FOREIGN KEY fk_arch_data_mapping_tenantId;

ALTER TABLE arch_process_comment DROP FOREIGN KEY fk_arch_process_comment_arch_process_instanceId;
-- ALTER TABLE arch_document_mapping DROP FOREIGN KEY fk_arch_document_mapping_arch_process_instanceId;


-- ------------------------------------------------ Index -----------------------------------------------
DROP INDEX fk_event_trigger_instance_flownode_instanceId_idx on event_trigger_instance;
DROP INDEX fk_process_definition_categoryId_idx on process_definition;
DROP INDEX fk_profilemember_profileId_idx on profilemember;
DROP INDEX fk_arch_flownode_instance_actorId_idx on arch_flownode_instance;

DROP INDEX fk_actor_tenantId_idx on actor;
DROP INDEX fk_actormember_actorId_idx on actormember;
DROP INDEX fk_actormember_user_Id_idx on actormember;
DROP INDEX fk_actormember_roleId_idx on actormember;
DROP INDEX fk_actormember_group_Id_idx on actormember;
DROP INDEX fk_actormember_tenantId_idx on actormember;
DROP INDEX fk_breakpoint_tenantId_idx on breakpoint;
DROP INDEX fk_breakpoint_process_definitionId_idx on breakpoint;
DROP INDEX fk_breakpoint_process_instanceId_idx on breakpoint;
DROP INDEX fk_data_instance_tenantId_idx on data_instance;
DROP INDEX fk_data_mapping_data_instanceId_idx on data_mapping;
DROP INDEX fk_data_mapping_tenantId_idx on data_mapping;
DROP INDEX fk_datasource_tenantId_idx on datasource;
DROP INDEX fk_datasourceparameter_tenantId_idx on datasourceparameter;
DROP INDEX fk_dependency_tenantId_idx on dependency;
DROP INDEX fk_dependencymapping_tenantId_idx on dependencymapping;
DROP INDEX fk_document_content_tenantId_idx on document_content;
DROP INDEX fk_external_identity_mapping_user_Id_idx on external_identity_mapping;
DROP INDEX fk_external_identity_mapping_roleId_idx on external_identity_mapping;
DROP INDEX fk_external_identity_mapping_group_Id_idx on external_identity_mapping;
DROP INDEX fk_external_identity_mapping_tenantId_idx on external_identity_mapping;
DROP INDEX fk_group__tenantId_idx on group_;
DROP INDEX fk_role_tenantId_idx on role;
DROP INDEX fk_user__tenantId_idx on user_;
DROP INDEX fk_custom_usr_inf_def_tenantId_idx on custom_usr_inf_def;
DROP INDEX fk_custom_usr_inf_val_tenantId_idx on custom_usr_inf_val;
DROP INDEX fk_user_membership_user_Id_idx on user_membership;
DROP INDEX fk_user_membership_roleId_idx on user_membership;
DROP INDEX fk_user_membership_group_Id_idx on user_membership;
DROP INDEX fk_user_membership_tenantId_idx on user_membership;
DROP INDEX fk_queriable_log_tenantId_idx on queriable_log;
DROP INDEX fk_queriablelog_p_tenantId_idx on queriablelog_p;
DROP INDEX fk_arch_document_mapping_arch_process_instanceId_idx on arch_document_mapping;
DROP INDEX fk_arch_document_mapping_tenantId_idx on arch_document_mapping;
DROP INDEX fk_document_mapping_process_instanceId_idx on document_mapping;
DROP INDEX fk_document_mapping_tenantId_idx on document_mapping;
DROP INDEX fk_process_definition_tenantId_idx on process_definition;
DROP INDEX fk_process_comment_process_instanceId_idx on process_comment;
DROP INDEX fk_process_comment_user_Id_idx on process_comment;
DROP INDEX fk_process_comment_tenantId_idx on process_comment;
DROP INDEX fk_process_instance_tenantId_idx on process_instance;
DROP INDEX fk_process_instance_process_definitionId_idx on process_instance;
DROP INDEX fk_flownode_instance_actorId_idx on flownode_instance;
DROP INDEX fk_flownode_instance_tenantId_idx on flownode_instance;
DROP INDEX fk_connector_instance_tenantId_idx on connector_instance;
DROP INDEX fk_event_trigger_instance_tenantId_idx on event_trigger_instance;
DROP INDEX fk_waiting_event_flownode_instanceId_idx on waiting_event;
DROP INDEX fk_waiting_event_tenantId_idx on waiting_event;
DROP INDEX fk_waiting_event_process_definitionId_idx on waiting_event;
DROP INDEX fk_message_instance_tenantId_idx on message_instance;
DROP INDEX fk_message_instance_process_definitionId_idx on message_instance;
-- DROP INDEX fk_migration_plan_tenantId_idx on migration_plan;
DROP INDEX fk_pending_mapping_user_Id_idx on pending_mapping;
DROP INDEX fk_pending_mapping_actorId_idx on pending_mapping;
DROP INDEX fk_pending_mapping_tenantId_idx on pending_mapping;
DROP INDEX fk_pending_mapping_flownode_instanceId_idx on pending_mapping;
DROP INDEX fk_hidden_activity_user_Id_idx on hidden_activity;
DROP INDEX fk_hidden_activity_tenantId_idx on hidden_activity;
DROP INDEX fk_arch_process_instance_process_definitionId_idx on arch_process_instance;
DROP INDEX fk_arch_process_instance_sourceObjectId_idx ON arch_process_instance;
DROP INDEX fk_arch_process_instance_tenantId_idx on arch_process_instance;
DROP INDEX fk_arch_flownode_instance_tenantId_idx on arch_flownode_instance;
DROP INDEX fk_arch_transition_instance_tenantId_idx on arch_transition_instance;
DROP INDEX fk_profile_tenantId_idx on profile;
DROP INDEX fk_profileentry_profileId_idx on profileentry;
DROP INDEX fk_profileentry_tenantId_idx on profileentry;
DROP INDEX fk_profilemember_user_Id_idx on profilemember;
DROP INDEX fk_profilemember_group_Id_idx on profilemember;
DROP INDEX fk_profilemember_roleId_idx on profilemember;
DROP INDEX fk_profilemember_tenantId_idx on profilemember;
DROP INDEX fk_job_desc_tenantId_idx on job_desc;
DROP INDEX fk_job_param_tenantId_idx on job_param;
DROP INDEX fk_processsupervisor_user_Id_idx on processsupervisor;
DROP INDEX fk_processsupervisor_group_Id_idx on processsupervisor;
DROP INDEX fk_processsupervisor_roleId_idx on processsupervisor;
DROP INDEX fk_processsupervisor_tenantId_idx on processsupervisor;
DROP INDEX fk_processsupervisor_process_definitionId_idx on processsupervisor;
DROP INDEX fk_category_tenantId_idx on category;
DROP INDEX fk_command_tenantId_idx on command;
DROP INDEX fk_processcategorymapping_process_instanceId_idx on processcategorymapping;
DROP INDEX fk_processcategorymapping_tenantId_idx on processcategorymapping;
DROP INDEX fk_arch_process_comment_user_Id_idx on arch_process_comment;
DROP INDEX fk_arch_process_comment_arch_process_instanceId_idx on arch_process_comment;
DROP INDEX fk_arch_process_comment_tenantId_idx on arch_process_comment;
DROP INDEX fk_arch_data_instance_tenantId_idx on arch_data_instance;
DROP INDEX fk_arch_data_mapping_tenantId_idx on arch_data_mapping;
