%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CodeDeploy</fullname>
%%
%% AWS CodeDeploy is a deployment service that automates application
%% deployments to Amazon EC2 instances, on-premises instances running in your
%% own facility, or serverless AWS Lambda functions.
%%
%% You can deploy a nearly unlimited variety of application content, such as
%% an updated Lambda function, code, web and configuration files,
%% executables, packages, scripts, multimedia files, and so on. AWS
%% CodeDeploy can deploy application content stored in Amazon S3 buckets,
%% GitHub repositories, or Bitbucket repositories. You do not need to make
%% changes to your existing code before you can use AWS CodeDeploy.
%%
%% AWS CodeDeploy makes it easier for you to rapidly release new features,
%% helps you avoid downtime during application deployment, and handles the
%% complexity of updating your applications, without many of the risks
%% associated with error-prone manual deployments.
%%
%% <b>AWS CodeDeploy Components</b>
%%
%% Use the information in this guide to help you work with the following AWS
%% CodeDeploy components:
%%
%% <ul> <li> <b>Application</b>: A name that uniquely identifies the
%% application you want to deploy. AWS CodeDeploy uses this name, which
%% functions as a container, to ensure the correct combination of revision,
%% deployment configuration, and deployment group are referenced during a
%% deployment.
%%
%% </li> <li> <b>Deployment group</b>: A set of individual instances or
%% CodeDeploy Lambda applications. A Lambda deployment group contains a group
%% of applications. An EC2/On-premises deployment group contains individually
%% tagged instances, Amazon EC2 instances in Auto Scaling groups, or both.
%%
%% </li> <li> <b>Deployment configuration</b>: A set of deployment rules and
%% deployment success and failure conditions used by AWS CodeDeploy during a
%% deployment.
%%
%% </li> <li> <b>Deployment</b>: The process and the components used in the
%% process of updating a Lambda function or of installing content on one or
%% more instances.
%%
%% </li> <li> <b>Application revisions</b>: For an AWS Lambda deployment,
%% this is an AppSpec file that specifies the Lambda function to update and
%% one or more functions to validate deployment lifecycle events. For an
%% EC2/On-premises deployment, this is an archive file containing source
%% content—source code, web pages, executable files, and deployment
%% scripts—along with an AppSpec file. Revisions are stored in Amazon S3
%% buckets or GitHub repositories. For Amazon S3, a revision is uniquely
%% identified by its Amazon S3 object key and its ETag, version, or both. For
%% GitHub, a revision is uniquely identified by its commit ID.
%%
%% </li> </ul> This guide also contains information to help you get details
%% about the instances in your deployments, to make on-premises instances
%% available for AWS CodeDeploy deployments, and to get details about a
%% Lambda function deployment.
%%
%% <b>AWS CodeDeploy Information Resources</b>
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/codedeploy/latest/userguide">AWS
%% CodeDeploy User Guide</a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/codedeploy/latest/APIReference/">AWS
%% CodeDeploy API Reference Guide</a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/cli/latest/reference/deploy/index.html">AWS
%% CLI Reference for AWS CodeDeploy</a>
%%
%% </li> <li> <a
%% href="https://forums.aws.amazon.com/forum.jspa?forumID=179">AWS CodeDeploy
%% Developer Forum</a>
%%
%% </li> </ul>
-module(aws_code_deploy).

-export([add_tags_to_on_premises_instances/2,
         add_tags_to_on_premises_instances/3,
         batch_get_application_revisions/2,
         batch_get_application_revisions/3,
         batch_get_applications/2,
         batch_get_applications/3,
         batch_get_deployment_groups/2,
         batch_get_deployment_groups/3,
         batch_get_deployment_instances/2,
         batch_get_deployment_instances/3,
         batch_get_deployments/2,
         batch_get_deployments/3,
         batch_get_on_premises_instances/2,
         batch_get_on_premises_instances/3,
         continue_deployment/2,
         continue_deployment/3,
         create_application/2,
         create_application/3,
         create_deployment/2,
         create_deployment/3,
         create_deployment_config/2,
         create_deployment_config/3,
         create_deployment_group/2,
         create_deployment_group/3,
         delete_application/2,
         delete_application/3,
         delete_deployment_config/2,
         delete_deployment_config/3,
         delete_deployment_group/2,
         delete_deployment_group/3,
         delete_git_hub_account_token/2,
         delete_git_hub_account_token/3,
         deregister_on_premises_instance/2,
         deregister_on_premises_instance/3,
         get_application/2,
         get_application/3,
         get_application_revision/2,
         get_application_revision/3,
         get_deployment/2,
         get_deployment/3,
         get_deployment_config/2,
         get_deployment_config/3,
         get_deployment_group/2,
         get_deployment_group/3,
         get_deployment_instance/2,
         get_deployment_instance/3,
         get_on_premises_instance/2,
         get_on_premises_instance/3,
         list_application_revisions/2,
         list_application_revisions/3,
         list_applications/2,
         list_applications/3,
         list_deployment_configs/2,
         list_deployment_configs/3,
         list_deployment_groups/2,
         list_deployment_groups/3,
         list_deployment_instances/2,
         list_deployment_instances/3,
         list_deployments/2,
         list_deployments/3,
         list_git_hub_account_token_names/2,
         list_git_hub_account_token_names/3,
         list_on_premises_instances/2,
         list_on_premises_instances/3,
         put_lifecycle_event_hook_execution_status/2,
         put_lifecycle_event_hook_execution_status/3,
         register_application_revision/2,
         register_application_revision/3,
         register_on_premises_instance/2,
         register_on_premises_instance/3,
         remove_tags_from_on_premises_instances/2,
         remove_tags_from_on_premises_instances/3,
         skip_wait_time_for_instance_termination/2,
         skip_wait_time_for_instance_termination/3,
         stop_deployment/2,
         stop_deployment/3,
         update_application/2,
         update_application/3,
         update_deployment_group/2,
         update_deployment_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds tags to on-premises instances.
add_tags_to_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_on_premises_instances(Client, Input, []).
add_tags_to_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToOnPremisesInstances">>, Input, Options).

%% @doc Gets information about one or more application revisions.
batch_get_application_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_application_revisions(Client, Input, []).
batch_get_application_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetApplicationRevisions">>, Input, Options).

%% @doc Gets information about one or more applications.
batch_get_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_applications(Client, Input, []).
batch_get_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetApplications">>, Input, Options).

%% @doc Gets information about one or more deployment groups.
batch_get_deployment_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_deployment_groups(Client, Input, []).
batch_get_deployment_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDeploymentGroups">>, Input, Options).

%% @doc Gets information about one or more instance that are part of a
%% deployment group.
batch_get_deployment_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_deployment_instances(Client, Input, []).
batch_get_deployment_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDeploymentInstances">>, Input, Options).

%% @doc Gets information about one or more deployments.
batch_get_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_deployments(Client, Input, []).
batch_get_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDeployments">>, Input, Options).

%% @doc Gets information about one or more on-premises instances.
batch_get_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_on_premises_instances(Client, Input, []).
batch_get_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetOnPremisesInstances">>, Input, Options).

%% @doc For a blue/green deployment, starts the process of rerouting traffic
%% from instances in the original environment to instances in the replacement
%% environment without waiting for a specified wait time to elapse. (Traffic
%% rerouting, which is achieved by registering instances in the replacement
%% environment with the load balancer, can start as soon as all instances
%% have a status of Ready.)
continue_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    continue_deployment(Client, Input, []).
continue_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ContinueDeployment">>, Input, Options).

%% @doc Creates an application.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Deploys an application revision through the specified deployment
%% group.
create_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment(Client, Input, []).
create_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeployment">>, Input, Options).

%% @doc Creates a deployment configuration.
create_deployment_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment_config(Client, Input, []).
create_deployment_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeploymentConfig">>, Input, Options).

%% @doc Creates a deployment group to which application revisions will be
%% deployed.
create_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_deployment_group(Client, Input, []).
create_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeploymentGroup">>, Input, Options).

%% @doc Deletes an application.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes a deployment configuration.
%%
%% <note> A deployment configuration cannot be deleted if it is currently in
%% use. Predefined configurations cannot be deleted.
%%
%% </note>
delete_deployment_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_deployment_config(Client, Input, []).
delete_deployment_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeploymentConfig">>, Input, Options).

%% @doc Deletes a deployment group.
delete_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_deployment_group(Client, Input, []).
delete_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeploymentGroup">>, Input, Options).

%% @doc Deletes a GitHub account connection.
delete_git_hub_account_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_git_hub_account_token(Client, Input, []).
delete_git_hub_account_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGitHubAccountToken">>, Input, Options).

%% @doc Deregisters an on-premises instance.
deregister_on_premises_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_on_premises_instance(Client, Input, []).
deregister_on_premises_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterOnPremisesInstance">>, Input, Options).

%% @doc Gets information about an application.
get_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application(Client, Input, []).
get_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplication">>, Input, Options).

%% @doc Gets information about an application revision.
get_application_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_application_revision(Client, Input, []).
get_application_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApplicationRevision">>, Input, Options).

%% @doc Gets information about a deployment.
get_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment(Client, Input, []).
get_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeployment">>, Input, Options).

%% @doc Gets information about a deployment configuration.
get_deployment_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment_config(Client, Input, []).
get_deployment_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeploymentConfig">>, Input, Options).

%% @doc Gets information about a deployment group.
get_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment_group(Client, Input, []).
get_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeploymentGroup">>, Input, Options).

%% @doc Gets information about an instance as part of a deployment.
get_deployment_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_deployment_instance(Client, Input, []).
get_deployment_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeploymentInstance">>, Input, Options).

%% @doc Gets information about an on-premises instance.
get_on_premises_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_on_premises_instance(Client, Input, []).
get_on_premises_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOnPremisesInstance">>, Input, Options).

%% @doc Lists information about revisions for an application.
list_application_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_revisions(Client, Input, []).
list_application_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationRevisions">>, Input, Options).

%% @doc Lists the applications registered with the applicable IAM user or AWS
%% account.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Lists the deployment configurations with the applicable IAM user or
%% AWS account.
list_deployment_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployment_configs(Client, Input, []).
list_deployment_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeploymentConfigs">>, Input, Options).

%% @doc Lists the deployment groups for an application registered with the
%% applicable IAM user or AWS account.
list_deployment_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployment_groups(Client, Input, []).
list_deployment_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeploymentGroups">>, Input, Options).

%% @doc Lists the instance for a deployment associated with the applicable
%% IAM user or AWS account.
list_deployment_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployment_instances(Client, Input, []).
list_deployment_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeploymentInstances">>, Input, Options).

%% @doc Lists the deployments in a deployment group for an application
%% registered with the applicable IAM user or AWS account.
list_deployments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_deployments(Client, Input, []).
list_deployments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeployments">>, Input, Options).

%% @doc Lists the names of stored connections to GitHub accounts.
list_git_hub_account_token_names(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_git_hub_account_token_names(Client, Input, []).
list_git_hub_account_token_names(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGitHubAccountTokenNames">>, Input, Options).

%% @doc Gets a list of names for one or more on-premises instances.
%%
%% Unless otherwise specified, both registered and deregistered on-premises
%% instance names will be listed. To list only registered or deregistered
%% on-premises instance names, use the registration status parameter.
list_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_on_premises_instances(Client, Input, []).
list_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOnPremisesInstances">>, Input, Options).

%% @doc Sets the result of a Lambda validation function. The function
%% validates one or both lifecycle events (<code>BeforeAllowTraffic</code>
%% and <code>AfterAllowTraffic</code>) and returns <code>Succeeded</code> or
%% <code>Failed</code>.
put_lifecycle_event_hook_execution_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_lifecycle_event_hook_execution_status(Client, Input, []).
put_lifecycle_event_hook_execution_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLifecycleEventHookExecutionStatus">>, Input, Options).

%% @doc Registers with AWS CodeDeploy a revision for the specified
%% application.
register_application_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_application_revision(Client, Input, []).
register_application_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterApplicationRevision">>, Input, Options).

%% @doc Registers an on-premises instance.
%%
%% <note> Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported
%% in the request. You cannot use both.
%%
%% </note>
register_on_premises_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_on_premises_instance(Client, Input, []).
register_on_premises_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterOnPremisesInstance">>, Input, Options).

%% @doc Removes one or more tags from one or more on-premises instances.
remove_tags_from_on_premises_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_on_premises_instances(Client, Input, []).
remove_tags_from_on_premises_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromOnPremisesInstances">>, Input, Options).

%% @doc In a blue/green deployment, overrides any specified wait time and
%% starts terminating instances immediately after the traffic routing is
%% completed.
skip_wait_time_for_instance_termination(Client, Input)
  when is_map(Client), is_map(Input) ->
    skip_wait_time_for_instance_termination(Client, Input, []).
skip_wait_time_for_instance_termination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SkipWaitTimeForInstanceTermination">>, Input, Options).

%% @doc Attempts to stop an ongoing deployment.
stop_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_deployment(Client, Input, []).
stop_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDeployment">>, Input, Options).

%% @doc Changes the name of an application.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Changes information about a deployment group.
update_deployment_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_deployment_group(Client, Input, []).
update_deployment_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeploymentGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"codedeploy">>},
    Host = get_host(<<"codedeploy">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"CodeDeploy_20141006.">>/binary, Action/binary>>}],
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
