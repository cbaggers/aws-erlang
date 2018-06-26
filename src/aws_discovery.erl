%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Application Discovery Service</fullname>
%%
%% AWS Application Discovery Service helps you plan application migration
%% projects by automatically identifying servers, virtual machines (VMs),
%% software, and software dependencies running in your on-premises data
%% centers. Application Discovery Service also collects application
%% performance data, which can help you assess the outcome of your migration.
%% The data collected by Application Discovery Service is securely retained
%% in an AWS-hosted and managed database in the cloud. You can export the
%% data as a CSV or XML file into your preferred visualization tool or
%% cloud-migration solution to plan your migration. For more information, see
%% <a href="http://aws.amazon.com/application-discovery/faqs/">AWS
%% Application Discovery Service FAQ</a>.
%%
%% Application Discovery Service offers two modes of operation:
%%
%% <ul> <li> <b>Agentless discovery</b> mode is recommended for environments
%% that use VMware vCenter Server. This mode doesn't require you to install
%% an agent on each host. Agentless discovery gathers server information
%% regardless of the operating systems, which minimizes the time required for
%% initial on-premises infrastructure assessment. Agentless discovery doesn't
%% collect information about software and software dependencies. It also
%% doesn't work in non-VMware environments.
%%
%% </li> <li> <b>Agent-based discovery</b> mode collects a richer set of data
%% than agentless discovery by using the AWS Application Discovery Agent,
%% which you install on one or more hosts in your data center. The agent
%% captures infrastructure and application information, including an
%% inventory of installed software applications, system and process
%% performance, resource utilization, and network dependencies between
%% workloads. The information collected by agents is secured at rest and in
%% transit to the Application Discovery Service database in the cloud.
%%
%% </li> </ul> We recommend that you use agent-based discovery for non-VMware
%% environments and to collect information about software and software
%% dependencies. You can also run agent-based and agentless discovery
%% simultaneously. Use agentless discovery to quickly complete the initial
%% infrastructure assessment and then install agents on select hosts.
%%
%% Application Discovery Service integrates with application discovery
%% solutions from AWS Partner Network (APN) partners. Third-party application
%% discovery tools can query Application Discovery Service and write to the
%% Application Discovery Service database using a public API. You can then
%% import the data into either a visualization tool or cloud-migration
%% solution.
%%
%% <important> Application Discovery Service doesn't gather sensitive
%% information. All data is handled according to the <a
%% href="http://aws.amazon.com/privacy/">AWS Privacy Policy</a>. You can
%% operate Application Discovery Service offline to inspect collected data
%% before it is shared with the service.
%%
%% </important> Your AWS account must be granted access to Application
%% Discovery Service, a process called <i>whitelisting</i>. This is true for
%% AWS partners and customers alike. To request access, <a
%% href="http://aws.amazon.com/application-discovery/">sign up for
%% Application Discovery Service</a>.
%%
%% This API reference provides descriptions, syntax, and usage examples for
%% each of the actions and data types for Application Discovery Service. The
%% topic for each action shows the API request parameters and the response.
%% Alternatively, you can use one of the AWS SDKs to access an API that is
%% tailored to the programming language or platform that you're using. For
%% more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS
%% SDKs</a>.
%%
%% This guide is intended for use with the <a
%% href="http://docs.aws.amazon.com/application-discovery/latest/userguide/">
%% <i>AWS Application Discovery Service User Guide</i> </a>.
-module(aws_discovery).

-export([associate_configuration_items_to_application/2,
         associate_configuration_items_to_application/3,
         create_application/2,
         create_application/3,
         create_tags/2,
         create_tags/3,
         delete_applications/2,
         delete_applications/3,
         delete_tags/2,
         delete_tags/3,
         describe_agents/2,
         describe_agents/3,
         describe_configurations/2,
         describe_configurations/3,
         describe_export_configurations/2,
         describe_export_configurations/3,
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_tags/2,
         describe_tags/3,
         disassociate_configuration_items_from_application/2,
         disassociate_configuration_items_from_application/3,
         export_configurations/2,
         export_configurations/3,
         get_discovery_summary/2,
         get_discovery_summary/3,
         list_configurations/2,
         list_configurations/3,
         list_server_neighbors/2,
         list_server_neighbors/3,
         start_data_collection_by_agent_ids/2,
         start_data_collection_by_agent_ids/3,
         start_export_task/2,
         start_export_task/3,
         stop_data_collection_by_agent_ids/2,
         stop_data_collection_by_agent_ids/3,
         update_application/2,
         update_application/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more configuration items with an application.
associate_configuration_items_to_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_configuration_items_to_application(Client, Input, []).
associate_configuration_items_to_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConfigurationItemsToApplication">>, Input, Options).

%% @doc Creates an application with the given name and description.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates one or more tags for configuration items. Tags are metadata
%% that help you categorize IT assets. This API accepts a list of multiple
%% configuration items.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Deletes a list of applications and their associations with
%% configuration items.
delete_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_applications(Client, Input, []).
delete_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplications">>, Input, Options).

%% @doc Deletes the association between configuration items and one or more
%% tags. This API accepts a list of multiple configuration items.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Lists agents or the Connector by ID or lists all agents/Connectors
%% associated with your user account if you did not specify an ID.
describe_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agents(Client, Input, []).
describe_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgents">>, Input, Options).

%% @doc Retrieves attributes for a list of configuration item IDs. All of the
%% supplied IDs must be for the same asset type (server, application,
%% process, or connection). Output fields are specific to the asset type
%% selected. For example, the output for a <i>server</i> configuration item
%% includes a list of attributes about the server, such as host name,
%% operating system, and number of network cards.
%%
%% For a complete list of outputs for each asset type, see <a
%% href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations">Using
%% the DescribeConfigurations Action</a>.
describe_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configurations(Client, Input, []).
describe_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurations">>, Input, Options).

%% @doc Deprecated. Use <code>DescribeExportTasks</code> instead.
%%
%% Retrieves the status of a given export process. You can retrieve status
%% from a maximum of 100 processes.
describe_export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_configurations(Client, Input, []).
describe_export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportConfigurations">>, Input, Options).

%% @doc Retrieve status of one or more export tasks. You can retrieve the
%% status of up to 100 export tasks.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Retrieves a list of configuration items that are tagged with a
%% specific tag. Or retrieves a list of all tags assigned to a specific
%% configuration item.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Disassociates one or more configuration items from an application.
disassociate_configuration_items_from_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_configuration_items_from_application(Client, Input, []).
disassociate_configuration_items_from_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConfigurationItemsFromApplication">>, Input, Options).

%% @doc Deprecated. Use <code>StartExportTask</code> instead.
%%
%% Exports all discovered configuration data to an Amazon S3 bucket or an
%% application that enables you to view and evaluate the data. Data includes
%% tags and tag associations, processes, connections, servers, and system
%% performance. This API returns an export ID that you can query using the
%% <i>DescribeExportConfigurations</i> API. The system imposes a limit of two
%% configuration exports in six hours.
export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_configurations(Client, Input, []).
export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportConfigurations">>, Input, Options).

%% @doc Retrieves a short summary of discovered assets.
get_discovery_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_discovery_summary(Client, Input, []).
get_discovery_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiscoverySummary">>, Input, Options).

%% @doc Retrieves a list of configuration items according to criteria that
%% you specify in a filter. The filter criteria identifies the relationship
%% requirements.
list_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configurations(Client, Input, []).
list_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurations">>, Input, Options).

%% @doc Retrieves a list of servers that are one network hop away from a
%% specified server.
list_server_neighbors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_server_neighbors(Client, Input, []).
list_server_neighbors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServerNeighbors">>, Input, Options).

%% @doc Instructs the specified agents or connectors to start collecting
%% data.
start_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_collection_by_agent_ids(Client, Input, []).
start_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataCollectionByAgentIds">>, Input, Options).

%% @doc Begins the export of discovered data to an S3 bucket.
%%
%% If you specify <code>agentIds</code> in a filter, the task exports up to
%% 72 hours of detailed data collected by the identified Application
%% Discovery Agent, including network, process, and performance details. A
%% time range for exported agent data may be set by using
%% <code>startTime</code> and <code>endTime</code>. Export of detailed agent
%% data is limited to five concurrently running exports.
%%
%% If you do not include an <code>agentIds</code> filter, summary data is
%% exported that includes both AWS Agentless Discovery Connector data and
%% summary data from AWS Discovery Agents. Export of summary data is limited
%% to two exports per day.
start_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_task(Client, Input, []).
start_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportTask">>, Input, Options).

%% @doc Instructs the specified agents or connectors to stop collecting data.
stop_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_data_collection_by_agent_ids(Client, Input, []).
stop_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDataCollectionByAgentIds">>, Input, Options).

%% @doc Updates metadata about an application.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

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
    Client1 = Client#{service => <<"discovery">>},
    Host = get_host(<<"discovery">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSPoseidonService_V2015_11_01.">>/binary, Action/binary>>}],
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
