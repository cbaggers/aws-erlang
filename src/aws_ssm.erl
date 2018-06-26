%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Systems Manager</fullname>
%%
%% AWS Systems Manager is a collection of capabilities that helps you
%% automate management tasks such as collecting system inventory, applying
%% operating system (OS) patches, automating the creation of Amazon Machine
%% Images (AMIs), and configuring operating systems (OSs) and applications at
%% scale. Systems Manager lets you remotely and securely manage the
%% configuration of your managed instances. A <i>managed instance</i> is any
%% Amazon EC2 instance or on-premises machine in your hybrid environment that
%% has been configured for Systems Manager.
%%
%% This reference is intended to be used with the <a
%% href="http://docs.aws.amazon.com/systems-manager/latest/userguide/">AWS
%% Systems Manager User Guide</a>.
%%
%% To get started, verify prerequisites and configure managed instances. For
%% more information, see <a
%% href="http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html">Systems
%% Manager Prerequisites</a> in the <i>AWS Systems Manager User Guide</i>.
%%
%% For information about other API actions you can perform on Amazon EC2
%% instances, see the <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/">Amazon EC2
%% API Reference</a>. For information about how to use a Query API, see <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html">Making
%% API Requests</a>.
-module(aws_ssm).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         cancel_command/2,
         cancel_command/3,
         create_activation/2,
         create_activation/3,
         create_association/2,
         create_association/3,
         create_association_batch/2,
         create_association_batch/3,
         create_document/2,
         create_document/3,
         create_maintenance_window/2,
         create_maintenance_window/3,
         create_patch_baseline/2,
         create_patch_baseline/3,
         create_resource_data_sync/2,
         create_resource_data_sync/3,
         delete_activation/2,
         delete_activation/3,
         delete_association/2,
         delete_association/3,
         delete_document/2,
         delete_document/3,
         delete_inventory/2,
         delete_inventory/3,
         delete_maintenance_window/2,
         delete_maintenance_window/3,
         delete_parameter/2,
         delete_parameter/3,
         delete_parameters/2,
         delete_parameters/3,
         delete_patch_baseline/2,
         delete_patch_baseline/3,
         delete_resource_data_sync/2,
         delete_resource_data_sync/3,
         deregister_managed_instance/2,
         deregister_managed_instance/3,
         deregister_patch_baseline_for_patch_group/2,
         deregister_patch_baseline_for_patch_group/3,
         deregister_target_from_maintenance_window/2,
         deregister_target_from_maintenance_window/3,
         deregister_task_from_maintenance_window/2,
         deregister_task_from_maintenance_window/3,
         describe_activations/2,
         describe_activations/3,
         describe_association/2,
         describe_association/3,
         describe_automation_executions/2,
         describe_automation_executions/3,
         describe_automation_step_executions/2,
         describe_automation_step_executions/3,
         describe_available_patches/2,
         describe_available_patches/3,
         describe_document/2,
         describe_document/3,
         describe_document_permission/2,
         describe_document_permission/3,
         describe_effective_instance_associations/2,
         describe_effective_instance_associations/3,
         describe_effective_patches_for_patch_baseline/2,
         describe_effective_patches_for_patch_baseline/3,
         describe_instance_associations_status/2,
         describe_instance_associations_status/3,
         describe_instance_information/2,
         describe_instance_information/3,
         describe_instance_patch_states/2,
         describe_instance_patch_states/3,
         describe_instance_patch_states_for_patch_group/2,
         describe_instance_patch_states_for_patch_group/3,
         describe_instance_patches/2,
         describe_instance_patches/3,
         describe_inventory_deletions/2,
         describe_inventory_deletions/3,
         describe_maintenance_window_execution_task_invocations/2,
         describe_maintenance_window_execution_task_invocations/3,
         describe_maintenance_window_execution_tasks/2,
         describe_maintenance_window_execution_tasks/3,
         describe_maintenance_window_executions/2,
         describe_maintenance_window_executions/3,
         describe_maintenance_window_targets/2,
         describe_maintenance_window_targets/3,
         describe_maintenance_window_tasks/2,
         describe_maintenance_window_tasks/3,
         describe_maintenance_windows/2,
         describe_maintenance_windows/3,
         describe_parameters/2,
         describe_parameters/3,
         describe_patch_baselines/2,
         describe_patch_baselines/3,
         describe_patch_group_state/2,
         describe_patch_group_state/3,
         describe_patch_groups/2,
         describe_patch_groups/3,
         get_automation_execution/2,
         get_automation_execution/3,
         get_command_invocation/2,
         get_command_invocation/3,
         get_default_patch_baseline/2,
         get_default_patch_baseline/3,
         get_deployable_patch_snapshot_for_instance/2,
         get_deployable_patch_snapshot_for_instance/3,
         get_document/2,
         get_document/3,
         get_inventory/2,
         get_inventory/3,
         get_inventory_schema/2,
         get_inventory_schema/3,
         get_maintenance_window/2,
         get_maintenance_window/3,
         get_maintenance_window_execution/2,
         get_maintenance_window_execution/3,
         get_maintenance_window_execution_task/2,
         get_maintenance_window_execution_task/3,
         get_maintenance_window_execution_task_invocation/2,
         get_maintenance_window_execution_task_invocation/3,
         get_maintenance_window_task/2,
         get_maintenance_window_task/3,
         get_parameter/2,
         get_parameter/3,
         get_parameter_history/2,
         get_parameter_history/3,
         get_parameters/2,
         get_parameters/3,
         get_parameters_by_path/2,
         get_parameters_by_path/3,
         get_patch_baseline/2,
         get_patch_baseline/3,
         get_patch_baseline_for_patch_group/2,
         get_patch_baseline_for_patch_group/3,
         list_association_versions/2,
         list_association_versions/3,
         list_associations/2,
         list_associations/3,
         list_command_invocations/2,
         list_command_invocations/3,
         list_commands/2,
         list_commands/3,
         list_compliance_items/2,
         list_compliance_items/3,
         list_compliance_summaries/2,
         list_compliance_summaries/3,
         list_document_versions/2,
         list_document_versions/3,
         list_documents/2,
         list_documents/3,
         list_inventory_entries/2,
         list_inventory_entries/3,
         list_resource_compliance_summaries/2,
         list_resource_compliance_summaries/3,
         list_resource_data_sync/2,
         list_resource_data_sync/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_document_permission/2,
         modify_document_permission/3,
         put_compliance_items/2,
         put_compliance_items/3,
         put_inventory/2,
         put_inventory/3,
         put_parameter/2,
         put_parameter/3,
         register_default_patch_baseline/2,
         register_default_patch_baseline/3,
         register_patch_baseline_for_patch_group/2,
         register_patch_baseline_for_patch_group/3,
         register_target_with_maintenance_window/2,
         register_target_with_maintenance_window/3,
         register_task_with_maintenance_window/2,
         register_task_with_maintenance_window/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         send_automation_signal/2,
         send_automation_signal/3,
         send_command/2,
         send_command/3,
         start_automation_execution/2,
         start_automation_execution/3,
         stop_automation_execution/2,
         stop_automation_execution/3,
         update_association/2,
         update_association/3,
         update_association_status/2,
         update_association_status/3,
         update_document/2,
         update_document/3,
         update_document_default_version/2,
         update_document_default_version/3,
         update_maintenance_window/2,
         update_maintenance_window/3,
         update_maintenance_window_target/2,
         update_maintenance_window_target/3,
         update_maintenance_window_task/2,
         update_maintenance_window_task/3,
         update_managed_instance_role/2,
         update_managed_instance_role/3,
         update_patch_baseline/2,
         update_patch_baseline/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds or overwrites one or more tags for the specified resource. Tags
%% are metadata that you can assign to your documents, managed instances,
%% Maintenance Windows, Parameter Store parameters, and patch baselines. Tags
%% enable you to categorize your resources in different ways, for example, by
%% purpose, owner, or environment. Each tag consists of a key and an optional
%% value, both of which you define. For example, you could define a set of
%% tags for your account's managed instances that helps you track each
%% instance's owner and stack level. For example: Key=Owner and
%% Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production,
%% Pre-Production, or Test.
%%
%% Each resource can have a maximum of 50 tags.
%%
%% We recommend that you devise a set of tag keys that meets your needs for
%% each resource type. Using a consistent set of tag keys makes it easier for
%% you to manage your resources. You can search and filter the resources
%% based on the tags you add. Tags don't have any semantic meaning to Amazon
%% EC2 and are interpreted strictly as a string of characters.
%%
%% For more information about tags, see <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging
%% Your Amazon EC2 Resources</a> in the <i>Amazon EC2 User Guide</i>.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Attempts to cancel the command specified by the Command ID. There is
%% no guarantee that the command will be terminated and the underlying
%% process stopped.
cancel_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_command(Client, Input, []).
cancel_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCommand">>, Input, Options).

%% @doc Registers your on-premises server or virtual machine with Amazon EC2
%% so that you can manage these resources using Run Command. An on-premises
%% server or virtual machine that has been registered with EC2 is called a
%% managed instance. For more information about activations, see <a
%% href="http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html">Setting
%% Up Systems Manager in Hybrid Environments</a>.
create_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_activation(Client, Input, []).
create_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateActivation">>, Input, Options).

%% @doc Associates the specified Systems Manager document with the specified
%% instances or targets.
%%
%% When you associate a document with one or more instances using instance
%% IDs or tags, the SSM Agent running on the instance processes the document
%% and configures the instance as specified.
%%
%% If you associate a document with an instance that already has an
%% associated document, the system throws the AssociationAlreadyExists
%% exception.
create_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association(Client, Input, []).
create_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociation">>, Input, Options).

%% @doc Associates the specified Systems Manager document with the specified
%% instances or targets.
%%
%% When you associate a document with one or more instances using instance
%% IDs or tags, the SSM Agent running on the instance processes the document
%% and configures the instance as specified.
%%
%% If you associate a document with an instance that already has an
%% associated document, the system throws the AssociationAlreadyExists
%% exception.
create_association_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association_batch(Client, Input, []).
create_association_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociationBatch">>, Input, Options).

%% @doc Creates a Systems Manager document.
%%
%% After you create a document, you can use CreateAssociation to associate it
%% with one or more running instances.
create_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document(Client, Input, []).
create_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocument">>, Input, Options).

%% @doc Creates a new Maintenance Window.
create_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_maintenance_window(Client, Input, []).
create_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMaintenanceWindow">>, Input, Options).

%% @doc Creates a patch baseline.
%%
%% <note> For information about valid key and value pairs in
%% <code>PatchFilters</code> for each supported operating system type, see <a
%% href="http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html">PatchFilter</a>.
%%
%% </note>
create_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_patch_baseline(Client, Input, []).
create_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePatchBaseline">>, Input, Options).

%% @doc Creates a resource data sync configuration to a single bucket in
%% Amazon S3. This is an asynchronous operation that returns immediately.
%% After a successful initial sync is completed, the system continuously
%% syncs data to the Amazon S3 bucket. To check the status of the sync, use
%% the <a>ListResourceDataSync</a>.
%%
%% By default, data is not encrypted in Amazon S3. We strongly recommend that
%% you enable encryption in Amazon S3 to ensure secure data storage. We also
%% recommend that you secure access to the Amazon S3 bucket by creating a
%% restrictive bucket policy. To view an example of a restrictive Amazon S3
%% bucket policy for Resource Data Sync, see <a
%% href="http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync-create.html">Create
%% a Resource Data Sync for Inventory</a> in the <i>AWS Systems Manager User
%% Guide</i>.
create_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_data_sync(Client, Input, []).
create_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceDataSync">>, Input, Options).

%% @doc Deletes an activation. You are not required to delete an activation.
%% If you delete an activation, you can no longer use it to register
%% additional managed instances. Deleting an activation does not de-register
%% managed instances. You must manually de-register managed instances.
delete_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_activation(Client, Input, []).
delete_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteActivation">>, Input, Options).

%% @doc Disassociates the specified Systems Manager document from the
%% specified instance.
%%
%% When you disassociate a document from an instance, it does not change the
%% configuration of the instance. To change the configuration state of an
%% instance after you disassociate a document, you must create a new document
%% with the desired configuration and associate it with the instance.
delete_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_association(Client, Input, []).
delete_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssociation">>, Input, Options).

%% @doc Deletes the Systems Manager document and all instance associations to
%% the document.
%%
%% Before you delete the document, we recommend that you use
%% <a>DeleteAssociation</a> to disassociate all instances that are associated
%% with the document.
delete_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_document(Client, Input, []).
delete_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDocument">>, Input, Options).

%% @doc Delete a custom inventory type, or the data associated with a custom
%% Inventory type. Deleting a custom inventory type is also referred to as
%% deleting a custom inventory schema.
delete_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inventory(Client, Input, []).
delete_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInventory">>, Input, Options).

%% @doc Deletes a Maintenance Window.
delete_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_maintenance_window(Client, Input, []).
delete_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMaintenanceWindow">>, Input, Options).

%% @doc Delete a parameter from the system.
delete_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameter(Client, Input, []).
delete_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameter">>, Input, Options).

%% @doc Delete a list of parameters. This API is used to delete parameters by
%% using the Amazon EC2 console.
delete_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameters(Client, Input, []).
delete_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameters">>, Input, Options).

%% @doc Deletes a patch baseline.
delete_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_patch_baseline(Client, Input, []).
delete_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePatchBaseline">>, Input, Options).

%% @doc Deletes a Resource Data Sync configuration. After the configuration
%% is deleted, changes to inventory data on managed instances are no longer
%% synced with the target Amazon S3 bucket. Deleting a sync configuration
%% does not delete data in the target Amazon S3 bucket.
delete_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_data_sync(Client, Input, []).
delete_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceDataSync">>, Input, Options).

%% @doc Removes the server or virtual machine from the list of registered
%% servers. You can reregister the instance again at any time. If you don't
%% plan to use Run Command on the server, we suggest uninstalling SSM Agent
%% first.
deregister_managed_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_managed_instance(Client, Input, []).
deregister_managed_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterManagedInstance">>, Input, Options).

%% @doc Removes a patch group from a patch baseline.
deregister_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_patch_baseline_for_patch_group(Client, Input, []).
deregister_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Removes a target from a Maintenance Window.
deregister_target_from_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_target_from_maintenance_window(Client, Input, []).
deregister_target_from_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTargetFromMaintenanceWindow">>, Input, Options).

%% @doc Removes a task from a Maintenance Window.
deregister_task_from_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_task_from_maintenance_window(Client, Input, []).
deregister_task_from_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTaskFromMaintenanceWindow">>, Input, Options).

%% @doc Details about the activation, including: the date and time the
%% activation was created, the expiration date, the IAM role assigned to the
%% instances in the activation, and the number of instances activated by this
%% registration.
describe_activations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activations(Client, Input, []).
describe_activations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivations">>, Input, Options).

%% @doc Describes the association for the specified target or instance. If
%% you created the association by using the <code>Targets</code> parameter,
%% then you must retrieve the association by using the association ID. If you
%% created the association by specifying an instance ID and a Systems Manager
%% document, then you retrieve the association by specifying the document
%% name and the instance ID.
describe_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association(Client, Input, []).
describe_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociation">>, Input, Options).

%% @doc Provides details about all active and terminated Automation
%% executions.
describe_automation_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_automation_executions(Client, Input, []).
describe_automation_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutomationExecutions">>, Input, Options).

%% @doc Information about all active and terminated step executions in an
%% Automation workflow.
describe_automation_step_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_automation_step_executions(Client, Input, []).
describe_automation_step_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutomationStepExecutions">>, Input, Options).

%% @doc Lists all patches that could possibly be included in a patch
%% baseline.
describe_available_patches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_available_patches(Client, Input, []).
describe_available_patches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAvailablePatches">>, Input, Options).

%% @doc Describes the specified Systems Manager document.
describe_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document(Client, Input, []).
describe_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocument">>, Input, Options).

%% @doc Describes the permissions for a Systems Manager document. If you
%% created the document, you are the owner. If a document is shared, it can
%% either be shared privately (by specifying a user's AWS account ID) or
%% publicly (<i>All</i>).
describe_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_permission(Client, Input, []).
describe_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentPermission">>, Input, Options).

%% @doc All associations for the instance(s).
describe_effective_instance_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_instance_associations(Client, Input, []).
describe_effective_instance_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectiveInstanceAssociations">>, Input, Options).

%% @doc Retrieves the current effective patches (the patch and the approval
%% state) for the specified patch baseline. Note that this API applies only
%% to Windows patch baselines.
describe_effective_patches_for_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_patches_for_patch_baseline(Client, Input, []).
describe_effective_patches_for_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectivePatchesForPatchBaseline">>, Input, Options).

%% @doc The status of the associations for the instance(s).
describe_instance_associations_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_associations_status(Client, Input, []).
describe_instance_associations_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceAssociationsStatus">>, Input, Options).

%% @doc Describes one or more of your instances. You can use this to get
%% information about instances like the operating system platform, the SSM
%% Agent version (Linux), status etc. If you specify one or more instance
%% IDs, it returns information for those instances. If you do not specify
%% instance IDs, it returns information for all your instances. If you
%% specify an instance ID that is not valid or an instance that you do not
%% own, you receive an error.
%%
%% <note> The IamRole field for this API action is the Amazon Identity and
%% Access Management (IAM) role assigned to on-premises instances. This call
%% does not return the IAM role for Amazon EC2 instances.
%%
%% </note>
describe_instance_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_information(Client, Input, []).
describe_instance_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceInformation">>, Input, Options).

%% @doc Retrieves the high-level patch state of one or more instances.
describe_instance_patch_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patch_states(Client, Input, []).
describe_instance_patch_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatchStates">>, Input, Options).

%% @doc Retrieves the high-level patch state for the instances in the
%% specified patch group.
describe_instance_patch_states_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patch_states_for_patch_group(Client, Input, []).
describe_instance_patch_states_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatchStatesForPatchGroup">>, Input, Options).

%% @doc Retrieves information about the patches on the specified instance and
%% their state relative to the patch baseline being used for the instance.
describe_instance_patches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_patches(Client, Input, []).
describe_instance_patches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstancePatches">>, Input, Options).

%% @doc Describes a specific delete inventory operation.
describe_inventory_deletions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inventory_deletions(Client, Input, []).
describe_inventory_deletions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInventoryDeletions">>, Input, Options).

%% @doc Retrieves the individual task executions (one per target) for a
%% particular task executed as part of a Maintenance Window execution.
describe_maintenance_window_execution_task_invocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_execution_task_invocations(Client, Input, []).
describe_maintenance_window_execution_task_invocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutionTaskInvocations">>, Input, Options).

%% @doc For a given Maintenance Window execution, lists the tasks that were
%% executed.
describe_maintenance_window_execution_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_execution_tasks(Client, Input, []).
describe_maintenance_window_execution_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutionTasks">>, Input, Options).

%% @doc Lists the executions of a Maintenance Window. This includes
%% information about when the Maintenance Window was scheduled to be active,
%% and information about tasks registered and run with the Maintenance
%% Window.
describe_maintenance_window_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_executions(Client, Input, []).
describe_maintenance_window_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowExecutions">>, Input, Options).

%% @doc Lists the targets registered with the Maintenance Window.
describe_maintenance_window_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_targets(Client, Input, []).
describe_maintenance_window_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowTargets">>, Input, Options).

%% @doc Lists the tasks in a Maintenance Window.
describe_maintenance_window_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_window_tasks(Client, Input, []).
describe_maintenance_window_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindowTasks">>, Input, Options).

%% @doc Retrieves the Maintenance Windows in an AWS account.
describe_maintenance_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_maintenance_windows(Client, Input, []).
describe_maintenance_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMaintenanceWindows">>, Input, Options).

%% @doc Get information about a parameter.
%%
%% Request results are returned on a best-effort basis. If you specify
%% <code>MaxResults</code> in the request, the response includes information
%% up to the limit specified. The number of items returned, however, can be
%% between zero and the value of <code>MaxResults</code>. If the service
%% reaches an internal limit while processing the results, it stops the
%% operation and returns the matching values up to that point and a
%% <code>NextToken</code>. You can specify the <code>NextToken</code> in a
%% subsequent call to get the next set of results.
describe_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameters(Client, Input, []).
describe_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameters">>, Input, Options).

%% @doc Lists the patch baselines in your AWS account.
describe_patch_baselines(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_baselines(Client, Input, []).
describe_patch_baselines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchBaselines">>, Input, Options).

%% @doc Returns high-level aggregated patch compliance state for a patch
%% group.
describe_patch_group_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_group_state(Client, Input, []).
describe_patch_group_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchGroupState">>, Input, Options).

%% @doc Lists all patch groups that have been registered with patch
%% baselines.
describe_patch_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_patch_groups(Client, Input, []).
describe_patch_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePatchGroups">>, Input, Options).

%% @doc Get detailed information about a particular Automation execution.
get_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_automation_execution(Client, Input, []).
get_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutomationExecution">>, Input, Options).

%% @doc Returns detailed information about command execution for an
%% invocation or plugin.
get_command_invocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_command_invocation(Client, Input, []).
get_command_invocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCommandInvocation">>, Input, Options).

%% @doc Retrieves the default patch baseline. Note that Systems Manager
%% supports creating multiple default patch baselines. For example, you can
%% create a default patch baseline for each operating system.
%%
%% If you do not specify an operating system value, the default patch
%% baseline for Windows is returned.
get_default_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_default_patch_baseline(Client, Input, []).
get_default_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDefaultPatchBaseline">>, Input, Options).

%% @doc Retrieves the current snapshot for the patch baseline the instance
%% uses. This API is primarily used by the AWS-RunPatchBaseline Systems
%% Manager document.
get_deployable_patch_snapshot_for_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployable_patch_snapshot_for_instance(Client, Input, []).
get_deployable_patch_snapshot_for_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeployablePatchSnapshotForInstance">>, Input, Options).

%% @doc Gets the contents of the specified Systems Manager document.
get_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document(Client, Input, []).
get_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocument">>, Input, Options).

%% @doc Query inventory information.
get_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inventory(Client, Input, []).
get_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInventory">>, Input, Options).

%% @doc Return a list of inventory type names for the account, or return a
%% list of attribute names for a specific Inventory item type.
get_inventory_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_inventory_schema(Client, Input, []).
get_inventory_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInventorySchema">>, Input, Options).

%% @doc Retrieves a Maintenance Window.
get_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window(Client, Input, []).
get_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindow">>, Input, Options).

%% @doc Retrieves details about a specific task executed as part of a
%% Maintenance Window execution.
get_maintenance_window_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution(Client, Input, []).
get_maintenance_window_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecution">>, Input, Options).

%% @doc Retrieves the details about a specific task executed as part of a
%% Maintenance Window execution.
get_maintenance_window_execution_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution_task(Client, Input, []).
get_maintenance_window_execution_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecutionTask">>, Input, Options).

%% @doc Retrieves a task invocation. A task invocation is a specific task
%% executing on a specific target. Maintenance Windows report status for all
%% invocations.
get_maintenance_window_execution_task_invocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_execution_task_invocation(Client, Input, []).
get_maintenance_window_execution_task_invocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowExecutionTaskInvocation">>, Input, Options).

%% @doc Lists the tasks in a Maintenance Window.
get_maintenance_window_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_maintenance_window_task(Client, Input, []).
get_maintenance_window_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMaintenanceWindowTask">>, Input, Options).

%% @doc Get information about a parameter by using the parameter name. Don't
%% confuse this API action with the <a>GetParameters</a> API action.
get_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameter(Client, Input, []).
get_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameter">>, Input, Options).

%% @doc Query a list of all parameters used by the AWS account.
get_parameter_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameter_history(Client, Input, []).
get_parameter_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameterHistory">>, Input, Options).

%% @doc Get details of a parameter. Don't confuse this API action with the
%% <a>GetParameter</a> API action.
get_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters(Client, Input, []).
get_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParameters">>, Input, Options).

%% @doc Retrieve parameters in a specific hierarchy. For more information,
%% see <a
%% href="http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working.html">Working
%% with Systems Manager Parameters</a> in the <i>AWS Systems Manager User
%% Guide</i>.
%%
%% Request results are returned on a best-effort basis. If you specify
%% <code>MaxResults</code> in the request, the response includes information
%% up to the limit specified. The number of items returned, however, can be
%% between zero and the value of <code>MaxResults</code>. If the service
%% reaches an internal limit while processing the results, it stops the
%% operation and returns the matching values up to that point and a
%% <code>NextToken</code>. You can specify the <code>NextToken</code> in a
%% subsequent call to get the next set of results.
%%
%% <note> This API action doesn't support filtering by tags.
%%
%% </note>
get_parameters_by_path(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parameters_by_path(Client, Input, []).
get_parameters_by_path(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParametersByPath">>, Input, Options).

%% @doc Retrieves information about a patch baseline.
get_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_patch_baseline(Client, Input, []).
get_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPatchBaseline">>, Input, Options).

%% @doc Retrieves the patch baseline that should be used for the specified
%% patch group.
get_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_patch_baseline_for_patch_group(Client, Input, []).
get_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Retrieves all versions of an association for a specific association
%% ID.
list_association_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_association_versions(Client, Input, []).
list_association_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociationVersions">>, Input, Options).

%% @doc Lists the associations for the specified Systems Manager document or
%% instance.
list_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations(Client, Input, []).
list_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociations">>, Input, Options).

%% @doc An invocation is copy of a command sent to a specific instance. A
%% command can apply to one or more instances. A command invocation applies
%% to one instance. For example, if a user executes SendCommand against three
%% instances, then a command invocation is created for each requested
%% instance ID. ListCommandInvocations provide status about command
%% execution.
list_command_invocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_command_invocations(Client, Input, []).
list_command_invocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommandInvocations">>, Input, Options).

%% @doc Lists the commands requested by users of the AWS account.
list_commands(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_commands(Client, Input, []).
list_commands(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommands">>, Input, Options).

%% @doc For a specified resource ID, this API action returns a list of
%% compliance statuses for different resource types. Currently, you can only
%% specify one resource ID per call. List results depend on the criteria
%% specified in the filter.
list_compliance_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_items(Client, Input, []).
list_compliance_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceItems">>, Input, Options).

%% @doc Returns a summary count of compliant and non-compliant resources for
%% a compliance type. For example, this call can return State Manager
%% associations, patches, or custom compliance types according to the filter
%% criteria that you specify.
list_compliance_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compliance_summaries(Client, Input, []).
list_compliance_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComplianceSummaries">>, Input, Options).

%% @doc List all versions for a document.
list_document_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_versions(Client, Input, []).
list_document_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentVersions">>, Input, Options).

%% @doc Describes one or more of your Systems Manager documents.
list_documents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_documents(Client, Input, []).
list_documents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocuments">>, Input, Options).

%% @doc A list of inventory items returned by the request.
list_inventory_entries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inventory_entries(Client, Input, []).
list_inventory_entries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInventoryEntries">>, Input, Options).

%% @doc Returns a resource-level summary count. The summary includes
%% information about compliant and non-compliant statuses and detailed
%% compliance-item severity counts, according to the filter criteria you
%% specify.
list_resource_compliance_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_compliance_summaries(Client, Input, []).
list_resource_compliance_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceComplianceSummaries">>, Input, Options).

%% @doc Lists your resource data sync configurations. Includes information
%% about the last time a sync attempted to start, the last sync status, and
%% the last time a sync successfully completed.
%%
%% The number of sync configurations might be too large to return using a
%% single call to <code>ListResourceDataSync</code>. You can limit the number
%% of sync configurations returned by using the <code>MaxResults</code>
%% parameter. To determine whether there are more sync configurations to
%% list, check the value of <code>NextToken</code> in the output. If there
%% are more sync configurations to list, you can request them by specifying
%% the <code>NextToken</code> returned in the call to the parameter of a
%% subsequent call.
list_resource_data_sync(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_data_sync(Client, Input, []).
list_resource_data_sync(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceDataSync">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Shares a Systems Manager document publicly or privately. If you share
%% a document privately, you must specify the AWS user account IDs for those
%% people who can use the document. If you share a document publicly, you
%% must specify <i>All</i> as the account ID.
modify_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_document_permission(Client, Input, []).
modify_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDocumentPermission">>, Input, Options).

%% @doc Registers a compliance type and other compliance details on a
%% designated resource. This action lets you register custom compliance
%% details with a resource. This call overwrites existing compliance
%% information on the resource, so you must provide a full list of compliance
%% items each time that you send the request.
%%
%% ComplianceType can be one of the following:
%%
%% <ul> <li> ExecutionId: The execution ID when the patch, association, or
%% custom compliance item was applied.
%%
%% </li> <li> ExecutionType: Specify patch, association, or
%% Custom:<code>string</code>.
%%
%% </li> <li> ExecutionTime. The time the patch, association, or custom
%% compliance item was applied to the instance.
%%
%% </li> <li> Id: The patch, association, or custom compliance ID.
%%
%% </li> <li> Title: A title.
%%
%% </li> <li> Status: The status of the compliance item. For example,
%% <code>approved</code> for patches, or <code>Failed</code> for
%% associations.
%%
%% </li> <li> Severity: A patch severity. For example, <code>critical</code>.
%%
%% </li> <li> DocumentName: A SSM document name. For example,
%% AWS-RunPatchBaseline.
%%
%% </li> <li> DocumentVersion: An SSM document version number. For example,
%% 4.
%%
%% </li> <li> Classification: A patch classification. For example,
%% <code>security updates</code>.
%%
%% </li> <li> PatchBaselineId: A patch baseline ID.
%%
%% </li> <li> PatchSeverity: A patch severity. For example,
%% <code>Critical</code>.
%%
%% </li> <li> PatchState: A patch state. For example,
%% <code>InstancesWithFailedPatches</code>.
%%
%% </li> <li> PatchGroup: The name of a patch group.
%%
%% </li> <li> InstalledTime: The time the association, patch, or custom
%% compliance item was applied to the resource. Specify the time by using the
%% following format: yyyy-MM-dd'T'HH:mm:ss'Z'
%%
%% </li> </ul>
put_compliance_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_compliance_items(Client, Input, []).
put_compliance_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutComplianceItems">>, Input, Options).

%% @doc Bulk update custom inventory items on one more instance. The request
%% adds an inventory item, if it doesn't already exist, or updates an
%% inventory item, if it does exist.
put_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_inventory(Client, Input, []).
put_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInventory">>, Input, Options).

%% @doc Add a parameter to the system.
put_parameter(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_parameter(Client, Input, []).
put_parameter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutParameter">>, Input, Options).

%% @doc Defines the default patch baseline.
register_default_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_default_patch_baseline(Client, Input, []).
register_default_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDefaultPatchBaseline">>, Input, Options).

%% @doc Registers a patch baseline for a patch group.
register_patch_baseline_for_patch_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_patch_baseline_for_patch_group(Client, Input, []).
register_patch_baseline_for_patch_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterPatchBaselineForPatchGroup">>, Input, Options).

%% @doc Registers a target with a Maintenance Window.
register_target_with_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_target_with_maintenance_window(Client, Input, []).
register_target_with_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTargetWithMaintenanceWindow">>, Input, Options).

%% @doc Adds a new task to a Maintenance Window.
register_task_with_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_task_with_maintenance_window(Client, Input, []).
register_task_with_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTaskWithMaintenanceWindow">>, Input, Options).

%% @doc Removes all tags from the specified resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Sends a signal to an Automation execution to change the current
%% behavior or status of the execution.
send_automation_signal(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_automation_signal(Client, Input, []).
send_automation_signal(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendAutomationSignal">>, Input, Options).

%% @doc Executes commands on one or more managed instances.
send_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_command(Client, Input, []).
send_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendCommand">>, Input, Options).

%% @doc Initiates execution of an Automation document.
start_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_automation_execution(Client, Input, []).
start_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAutomationExecution">>, Input, Options).

%% @doc Stop an Automation that is currently executing.
stop_automation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_automation_execution(Client, Input, []).
stop_automation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAutomationExecution">>, Input, Options).

%% @doc Updates an association. You can update the association name and
%% version, the document version, schedule, parameters, and Amazon S3 output.
update_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_association(Client, Input, []).
update_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssociation">>, Input, Options).

%% @doc Updates the status of the Systems Manager document associated with
%% the specified instance.
update_association_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_association_status(Client, Input, []).
update_association_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssociationStatus">>, Input, Options).

%% @doc The document you want to update.
update_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document(Client, Input, []).
update_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocument">>, Input, Options).

%% @doc Set the default version of a document.
update_document_default_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_document_default_version(Client, Input, []).
update_document_default_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDocumentDefaultVersion">>, Input, Options).

%% @doc Updates an existing Maintenance Window. Only specified parameters are
%% modified.
update_maintenance_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window(Client, Input, []).
update_maintenance_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindow">>, Input, Options).

%% @doc Modifies the target of an existing Maintenance Window. You can't
%% change the target type, but you can change the following:
%%
%% The target from being an ID target to a Tag target, or a Tag target to an
%% ID target.
%%
%% IDs for an ID target.
%%
%% Tags for a Tag target.
%%
%% Owner.
%%
%% Name.
%%
%% Description.
%%
%% If a parameter is null, then the corresponding field is not modified.
update_maintenance_window_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window_target(Client, Input, []).
update_maintenance_window_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindowTarget">>, Input, Options).

%% @doc Modifies a task assigned to a Maintenance Window. You can't change
%% the task type, but you can change the following values:
%%
%% <ul> <li> TaskARN. For example, you can change a RUN_COMMAND task from
%% AWS-RunPowerShellScript to AWS-RunShellScript.
%%
%% </li> <li> ServiceRoleArn
%%
%% </li> <li> TaskInvocationParameters
%%
%% </li> <li> Priority
%%
%% </li> <li> MaxConcurrency
%%
%% </li> <li> MaxErrors
%%
%% </li> </ul> If a parameter is null, then the corresponding field is not
%% modified. Also, if you set Replace to true, then all fields required by
%% the <a>RegisterTaskWithMaintenanceWindow</a> action are required for this
%% request. Optional fields that aren't specified are set to null.
update_maintenance_window_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_maintenance_window_task(Client, Input, []).
update_maintenance_window_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMaintenanceWindowTask">>, Input, Options).

%% @doc Assigns or changes an Amazon Identity and Access Management (IAM)
%% role to the managed instance.
update_managed_instance_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_managed_instance_role(Client, Input, []).
update_managed_instance_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateManagedInstanceRole">>, Input, Options).

%% @doc Modifies an existing patch baseline. Fields not specified in the
%% request are left unchanged.
%%
%% <note> For information about valid key and value pairs in
%% <code>PatchFilters</code> for each supported operating system type, see <a
%% href="http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html">PatchFilter</a>.
%%
%% </note>
update_patch_baseline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_patch_baseline(Client, Input, []).
update_patch_baseline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePatchBaseline">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"ssm">>},
    Host = get_host(<<"ssm">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AmazonSSM.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
