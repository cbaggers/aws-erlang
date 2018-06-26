%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CloudTrail</fullname>
%%
%% This is the CloudTrail API Reference. It provides descriptions of actions,
%% data types, common parameters, and common errors for CloudTrail.
%%
%% CloudTrail is a web service that records AWS API calls for your AWS
%% account and delivers log files to an Amazon S3 bucket. The recorded
%% information includes the identity of the user, the start time of the AWS
%% API call, the source IP address, the request parameters, and the response
%% elements returned by the service.
%%
%% <note> As an alternative to the API, you can use one of the AWS SDKs,
%% which consist of libraries and sample code for various programming
%% languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
%% provide a convenient way to create programmatic access to AWSCloudTrail.
%% For example, the SDKs take care of cryptographically signing requests,
%% managing errors, and retrying requests automatically. For information
%% about the AWS SDKs, including how to download and install them, see the <a
%% href="http://aws.amazon.com/tools/">Tools for Amazon Web Services
%% page</a>.
%%
%% </note> See the <a
%% href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html">AWS
%% CloudTrail User Guide</a> for information about the data that is included
%% with each AWS API call listed in the log files.
-module(aws_cloud_trail).

-export([add_tags/2,
         add_tags/3,
         create_trail/2,
         create_trail/3,
         delete_trail/2,
         delete_trail/3,
         describe_trails/2,
         describe_trails/3,
         get_event_selectors/2,
         get_event_selectors/3,
         get_trail_status/2,
         get_trail_status/3,
         list_public_keys/2,
         list_public_keys/3,
         list_tags/2,
         list_tags/3,
         lookup_events/2,
         lookup_events/3,
         put_event_selectors/2,
         put_event_selectors/3,
         remove_tags/2,
         remove_tags/3,
         start_logging/2,
         start_logging/3,
         stop_logging/2,
         stop_logging/3,
         update_trail/2,
         update_trail/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to a trail, up to a limit of 50. Tags must be
%% unique per trail. Overwrites an existing tag's value when a new value is
%% specified for an existing tag key. If you specify a key without a value,
%% the tag will be created with the specified key and a value of null. You
%% can tag a trail that applies to all regions only from the region in which
%% the trail was created (that is, from its home region).
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Creates a trail that specifies the settings for delivery of log data
%% to an Amazon S3 bucket. A maximum of five trails can exist in a region,
%% irrespective of the region in which they were created.
create_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trail(Client, Input, []).
create_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrail">>, Input, Options).

%% @doc Deletes a trail. This operation must be called from the region in
%% which the trail was created. <code>DeleteTrail</code> cannot be called on
%% the shadow trails (replicated trails in other regions) of a trail that is
%% enabled in all regions.
delete_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trail(Client, Input, []).
delete_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrail">>, Input, Options).

%% @doc Retrieves settings for the trail associated with the current region
%% for your account.
describe_trails(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trails(Client, Input, []).
describe_trails(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrails">>, Input, Options).

%% @doc Describes the settings for the event selectors that you configured
%% for your trail. The information returned for your event selectors includes
%% the following:
%%
%% <ul> <li> The S3 objects that you are logging for data events.
%%
%% </li> <li> If your event selector includes management events.
%%
%% </li> <li> If your event selector includes read-only events, write-only
%% events, or all.
%%
%% </li> </ul> For more information, see <a
%% href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging
%% Data and Management Events for Trails </a> in the <i>AWS CloudTrail User
%% Guide</i>.
get_event_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_selectors(Client, Input, []).
get_event_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventSelectors">>, Input, Options).

%% @doc Returns a JSON-formatted list of information about the specified
%% trail. Fields include information on delivery errors, Amazon SNS and
%% Amazon S3 errors, and start and stop logging times for each trail. This
%% operation returns trail status from a single region. To return trail
%% status from all regions, you must call the operation on each region.
get_trail_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_trail_status(Client, Input, []).
get_trail_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrailStatus">>, Input, Options).

%% @doc Returns all public keys whose private keys were used to sign the
%% digest files within the specified time range. The public key is needed to
%% validate digest files that were signed with its corresponding private key.
%%
%% <note> CloudTrail uses different private/public key pairs per region. Each
%% digest file is signed with a private key unique to its region. Therefore,
%% when you validate a digest file from a particular region, you must look in
%% the same region for its corresponding public key.
%%
%% </note>
list_public_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_public_keys(Client, Input, []).
list_public_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPublicKeys">>, Input, Options).

%% @doc Lists the tags for the trail in the current region.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Looks up API activity events captured by CloudTrail that create,
%% update, or delete resources in your account. Events for a region can be
%% looked up for the times in which you had CloudTrail turned on in that
%% region during the last seven days. Lookup supports the following
%% attributes:
%%
%% <ul> <li> Event ID
%%
%% </li> <li> Event name
%%
%% </li> <li> Event source
%%
%% </li> <li> Resource name
%%
%% </li> <li> Resource type
%%
%% </li> <li> User name
%%
%% </li> </ul> All attributes are optional. The default number of results
%% returned is 10, with a maximum of 50 possible. The response includes a
%% token that you can use to get the next page of results.
%%
%% <important> The rate of lookup requests is limited to one per second per
%% account. If this limit is exceeded, a throttling error occurs.
%%
%% </important> <important> Events that occurred during the selected time
%% range will not be available for lookup if CloudTrail logging was not
%% enabled when the events occurred.
%%
%% </important>
lookup_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    lookup_events(Client, Input, []).
lookup_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LookupEvents">>, Input, Options).

%% @doc Configures an event selector for your trail. Use event selectors to
%% specify whether you want your trail to log management and/or data events.
%% When an event occurs in your account, CloudTrail evaluates the event
%% selectors in all trails. For each trail, if the event matches any event
%% selector, the trail processes and logs the event. If the event doesn't
%% match any event selector, the trail doesn't log the event.
%%
%% Example
%%
%% <ol> <li> You create an event selector for a trail and specify that you
%% want write-only events.
%%
%% </li> <li> The EC2 <code>GetConsoleOutput</code> and
%% <code>RunInstances</code> API operations occur in your account.
%%
%% </li> <li> CloudTrail evaluates whether the events match your event
%% selectors.
%%
%% </li> <li> The <code>RunInstances</code> is a write-only event and it
%% matches your event selector. The trail logs the event.
%%
%% </li> <li> The <code>GetConsoleOutput</code> is a read-only event but it
%% doesn't match your event selector. The trail doesn't log the event.
%%
%% </li> </ol> The <code>PutEventSelectors</code> operation must be called
%% from the region in which the trail was created; otherwise, an
%% <code>InvalidHomeRegionException</code> is thrown.
%%
%% You can configure up to five event selectors for each trail. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging
%% Data and Management Events for Trails </a> in the <i>AWS CloudTrail User
%% Guide</i>.
put_event_selectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_event_selectors(Client, Input, []).
put_event_selectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEventSelectors">>, Input, Options).

%% @doc Removes the specified tags from a trail.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Starts the recording of AWS API calls and log file delivery for a
%% trail. For a trail that is enabled in all regions, this operation must be
%% called from the region in which the trail was created. This operation
%% cannot be called on the shadow trails (replicated trails in other regions)
%% of a trail that is enabled in all regions.
start_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_logging(Client, Input, []).
start_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLogging">>, Input, Options).

%% @doc Suspends the recording of AWS API calls and log file delivery for the
%% specified trail. Under most circumstances, there is no need to use this
%% action. You can update a trail without stopping it first. This action is
%% the only way to stop recording. For a trail enabled in all regions, this
%% operation must be called from the region in which the trail was created,
%% or an <code>InvalidHomeRegionException</code> will occur. This operation
%% cannot be called on the shadow trails (replicated trails in other regions)
%% of a trail enabled in all regions.
stop_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_logging(Client, Input, []).
stop_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopLogging">>, Input, Options).

%% @doc Updates the settings that specify delivery of log files. Changes to a
%% trail do not require stopping the CloudTrail service. Use this action to
%% designate an existing bucket for log delivery. If the existing bucket has
%% previously been a target for CloudTrail log files, an IAM policy exists
%% for the bucket. <code>UpdateTrail</code> must be called from the region in
%% which the trail was created; otherwise, an
%% <code>InvalidHomeRegionException</code> is thrown.
update_trail(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trail(Client, Input, []).
update_trail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrail">>, Input, Options).

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
    Client1 = Client#{service => <<"cloudtrail">>},
    Host = get_host(<<"cloudtrail">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.">>/binary, Action/binary>>}],
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
