%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Marketplace Metering Service</fullname>
%%
%% This reference provides descriptions of the low-level AWS Marketplace
%% Metering Service API.
%%
%% AWS Marketplace sellers can use this API to submit usage data for custom
%% usage dimensions.
%%
%% <b>Submitting Metering Records</b>
%%
%% <ul> <li> <i>MeterUsage</i>- Submits the metering record for a Marketplace
%% product. MeterUsage is called from an EC2 instance.
%%
%% </li> <li> <i>BatchMeterUsage</i>- Submits the metering record for a set
%% of customers. BatchMeterUsage is called from a software-as-a-service
%% (SaaS) application.
%%
%% </li> </ul> <b>Accepting New Customers</b>
%%
%% <ul> <li> <i>ResolveCustomer</i>- Called by a SaaS application during the
%% registration process. When a buyer visits your website during the
%% registration process, the buyer submits a Registration Token through the
%% browser. The Registration Token is resolved through this API to obtain a
%% CustomerIdentifier and Product Code.
%%
%% </li> </ul>
-module(aws_marketplace_metering).

-export([batch_meter_usage/2,
         batch_meter_usage/3,
         meter_usage/2,
         meter_usage/3,
         resolve_customer/2,
         resolve_customer/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc BatchMeterUsage is called from a SaaS application listed on the AWS
%% Marketplace to post metering records for a set of customers.
%%
%% For identical requests, the API is idempotent; requests can be retried
%% with the same records or a subset of the input records.
%%
%% Every request to BatchMeterUsage is for one product. If you need to meter
%% usage for multiple products, you must make multiple calls to
%% BatchMeterUsage.
%%
%% BatchMeterUsage can process up to 25 UsageRecords at a time.
batch_meter_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_meter_usage(Client, Input, []).
batch_meter_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchMeterUsage">>, Input, Options).

%% @doc API to emit metering records. For identical requests, the API is
%% idempotent. It simply returns the metering record ID.
%%
%% MeterUsage is authenticated on the buyer's AWS account, generally when
%% running from an EC2 instance on the AWS Marketplace.
meter_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    meter_usage(Client, Input, []).
meter_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MeterUsage">>, Input, Options).

%% @doc ResolveCustomer is called by a SaaS application during the
%% registration process. When a buyer visits your website during the
%% registration process, the buyer submits a registration token through their
%% browser. The registration token is resolved through this API to obtain a
%% CustomerIdentifier and product code.
resolve_customer(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_customer(Client, Input, []).
resolve_customer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveCustomer">>, Input, Options).

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
    Client1 = Client#{service => <<"aws-marketplace">>},
    Host = get_host(<<"metering.marketplace">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSMPMeteringService.">>/binary, Action/binary>>}],
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
