%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Amazon CloudWatch Events helps you to respond to state changes in
%% your AWS resources. When your resources change state, they automatically
%% send events into an event stream. You can create rules that match selected
%% events in the stream and route them to targets to take action. You can
%% also use rules to take action on a pre-determined schedule. For example,
%% you can configure rules to:
%%
%% <ul> <li> Automatically invoke an AWS Lambda function to update DNS
%% entries when an event notifies you that Amazon EC2 instance enters the
%% running state.
%%
%% </li> <li> Direct specific API records from CloudTrail to an Amazon
%% Kinesis stream for detailed analysis of potential security or availability
%% risks.
%%
%% </li> <li> Periodically invoke a built-in target to create a snapshot of
%% an Amazon EBS volume.
%%
%% </li> </ul> For more information about the features of Amazon CloudWatch
%% Events, see the <a
%% href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events">Amazon
%% CloudWatch Events User Guide</a>.
-module(aws_cloudwatch_events).

-export([delete_rule/2,
         delete_rule/3,
         describe_event_bus/2,
         describe_event_bus/3,
         describe_rule/2,
         describe_rule/3,
         disable_rule/2,
         disable_rule/3,
         enable_rule/2,
         enable_rule/3,
         list_rule_names_by_target/2,
         list_rule_names_by_target/3,
         list_rules/2,
         list_rules/3,
         list_targets_by_rule/2,
         list_targets_by_rule/3,
         put_events/2,
         put_events/3,
         put_permission/2,
         put_permission/3,
         put_rule/2,
         put_rule/3,
         put_targets/2,
         put_targets/3,
         remove_permission/2,
         remove_permission/3,
         remove_targets/2,
         remove_targets/3,
         test_event_pattern/2,
         test_event_pattern/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified rule.
%%
%% You must remove all targets from a rule using <a>RemoveTargets</a> before
%% you can delete the rule.
%%
%% When you delete a rule, incoming events might continue to match to the
%% deleted rule. Please allow a short period of time for changes to take
%% effect.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Displays the external AWS accounts that are permitted to write events
%% to your account using your account's event bus, and the associated policy.
%% To enable your account to receive events from other accounts, use
%% <a>PutPermission</a>.
describe_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_bus(Client, Input, []).
describe_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventBus">>, Input, Options).

%% @doc Describes the specified rule.
describe_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule(Client, Input, []).
describe_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRule">>, Input, Options).

%% @doc Disables the specified rule. A disabled rule won't match any events,
%% and won't self-trigger if it has a schedule expression.
%%
%% When you disable a rule, incoming events might continue to match to the
%% disabled rule. Please allow a short period of time for changes to take
%% effect.
disable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_rule(Client, Input, []).
disable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRule">>, Input, Options).

%% @doc Enables the specified rule. If the rule does not exist, the operation
%% fails.
%%
%% When you enable a rule, incoming events might not immediately start
%% matching to a newly enabled rule. Please allow a short period of time for
%% changes to take effect.
enable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_rule(Client, Input, []).
enable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableRule">>, Input, Options).

%% @doc Lists the rules for the specified target. You can see which of the
%% rules in Amazon CloudWatch Events can invoke a specific target in your
%% account.
list_rule_names_by_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_names_by_target(Client, Input, []).
list_rule_names_by_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleNamesByTarget">>, Input, Options).

%% @doc Lists your Amazon CloudWatch Events rules. You can either list all
%% the rules or you can provide a prefix to match to the rule names.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc Lists the targets assigned to the specified rule.
list_targets_by_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targets_by_rule(Client, Input, []).
list_targets_by_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetsByRule">>, Input, Options).

%% @doc Sends custom events to Amazon CloudWatch Events so that they can be
%% matched to rules.
put_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_events(Client, Input, []).
put_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEvents">>, Input, Options).

%% @doc Running <code>PutPermission</code> permits the specified AWS account
%% to put events to your account's default <i>event bus</i>. CloudWatch
%% Events rules in your account are triggered by these events arriving to
%% your default event bus.
%%
%% For another account to send events to your account, that external account
%% must have a CloudWatch Events rule with your account's default event bus
%% as a target.
%%
%% To enable multiple AWS accounts to put events to your default event bus,
%% run <code>PutPermission</code> once for each of these accounts.
%%
%% The permission policy on the default event bus cannot exceed 10KB in size.
put_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission(Client, Input, []).
put_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermission">>, Input, Options).

%% @doc Creates or updates the specified rule. Rules are enabled by default,
%% or based on value of the state. You can disable a rule using
%% <a>DisableRule</a>.
%%
%% If you are updating an existing rule, the rule is completely replaced with
%% what you specify in this <code>PutRule</code> command. If you omit
%% arguments in <code>PutRule</code>, the old values for those arguments are
%% not kept. Instead, they are replaced with null values.
%%
%% When you create or update a rule, incoming events might not immediately
%% start matching to new or updated rules. Please allow a short period of
%% time for changes to take effect.
%%
%% A rule must contain at least an EventPattern or ScheduleExpression. Rules
%% with EventPatterns are triggered when a matching event is observed. Rules
%% with ScheduleExpressions self-trigger based on the given schedule. A rule
%% can have both an EventPattern and a ScheduleExpression, in which case the
%% rule triggers on matching events as well as on a schedule.
%%
%% Most services in AWS treat : or / as the same character in Amazon Resource
%% Names (ARNs). However, CloudWatch Events uses an exact match in event
%% patterns and rules. Be sure to use the correct ARN characters when
%% creating event patterns so that they match the ARN syntax in the event you
%% want to match.
put_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_rule(Client, Input, []).
put_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRule">>, Input, Options).

%% @doc Adds the specified targets to the specified rule, or updates the
%% targets if they are already associated with the rule.
%%
%% Targets are the resources that are invoked when a rule is triggered.
%%
%% You can configure the following as targets for CloudWatch Events:
%%
%% <ul> <li> EC2 instances
%%
%% </li> <li> AWS Lambda functions
%%
%% </li> <li> Streams in Amazon Kinesis Streams
%%
%% </li> <li> Delivery streams in Amazon Kinesis Firehose
%%
%% </li> <li> Amazon ECS tasks
%%
%% </li> <li> AWS Step Functions state machines
%%
%% </li> <li> AWS Batch jobs
%%
%% </li> <li> Pipelines in Amazon Code Pipeline
%%
%% </li> <li> Amazon Inspector assessment templates
%%
%% </li> <li> Amazon SNS topics
%%
%% </li> <li> Amazon SQS queues, including FIFO queues
%%
%% </li> <li> The default event bus of another AWS account
%%
%% </li> </ul> Note that creating rules with built-in targets is supported
%% only in the AWS Management Console.
%%
%% For some target types, <code>PutTargets</code> provides target-specific
%% parameters. If the target is an Amazon Kinesis stream, you can optionally
%% specify which shard the event goes to by using the
%% <code>KinesisParameters</code> argument. To invoke a command on multiple
%% EC2 instances with one rule, you can use the
%% <code>RunCommandParameters</code> field.
%%
%% To be able to make API calls against the resources that you own, Amazon
%% CloudWatch Events needs the appropriate permissions. For AWS Lambda and
%% Amazon SNS resources, CloudWatch Events relies on resource-based policies.
%% For EC2 instances, Amazon Kinesis streams, and AWS Step Functions state
%% machines, CloudWatch Events relies on IAM roles that you specify in the
%% <code>RoleARN</code> argument in <code>PutTargets</code>. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/auth-and-access-control-cwe.html">Authentication
%% and Access Control</a> in the <i>Amazon CloudWatch Events User Guide</i>.
%%
%% If another AWS account is in the same region and has granted you
%% permission (using <code>PutPermission</code>), you can send events to that
%% account by setting that account's event bus as a target of the rules in
%% your account. To send the matched events to the other account, specify
%% that account's event bus as the <code>Arn</code> when you run
%% <code>PutTargets</code>. If your account sends events to another account,
%% your account is charged for each sent event. Each event sent to antoher
%% account is charged as a custom event. The account receiving the event is
%% not charged. For more information on pricing, see <a
%% href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch
%% Pricing</a>.
%%
%% For more information about enabling cross-account events, see
%% <a>PutPermission</a>.
%%
%% <b>Input</b>, <b>InputPath</b> and <b>InputTransformer</b> are mutually
%% exclusive and optional parameters of a target. When a rule is triggered
%% due to a matched event:
%%
%% <ul> <li> If none of the following arguments are specified for a target,
%% then the entire event is passed to the target in JSON form (unless the
%% target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing
%% from the event is passed to the target).
%%
%% </li> <li> If <b>Input</b> is specified in the form of valid JSON, then
%% the matched event is overridden with this constant.
%%
%% </li> <li> If <b>InputPath</b> is specified in the form of JSONPath (for
%% example, <code>$.detail</code>), then only the part of the event specified
%% in the path is passed to the target (for example, only the detail part of
%% the event is passed).
%%
%% </li> <li> If <b>InputTransformer</b> is specified, then one or more
%% specified JSONPaths are extracted from the event and used as values in a
%% template that you specify as the input to the target.
%%
%% </li> </ul> When you specify <code>InputPath</code> or
%% <code>InputTransformer</code>, you must use JSON dot notation, not bracket
%% notation.
%%
%% When you add targets to a rule and the associated rule triggers soon
%% after, new or updated targets might not be immediately invoked. Please
%% allow a short period of time for changes to take effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that happens, <code>FailedEntryCount</code> is non-zero in the
%% response and each entry in <code>FailedEntries</code> provides the ID of
%% the failed target and the error code.
put_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_targets(Client, Input, []).
put_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutTargets">>, Input, Options).

%% @doc Revokes the permission of another AWS account to be able to put
%% events to your default event bus. Specify the account to revoke by the
%% <code>StatementId</code> value that you associated with the account when
%% you granted it permission with <code>PutPermission</code>. You can find
%% the <code>StatementId</code> by using <a>DescribeEventBus</a>.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Removes the specified targets from the specified rule. When the rule
%% is triggered, those targets are no longer be invoked.
%%
%% When you remove a target, when the associated rule triggers, removed
%% targets might continue to be invoked. Please allow a short period of time
%% for changes to take effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that happens, <code>FailedEntryCount</code> is non-zero in the
%% response and each entry in <code>FailedEntries</code> provides the ID of
%% the failed target and the error code.
remove_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_targets(Client, Input, []).
remove_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTargets">>, Input, Options).

%% @doc Tests whether the specified event pattern matches the provided event.
%%
%% Most services in AWS treat : or / as the same character in Amazon Resource
%% Names (ARNs). However, CloudWatch Events uses an exact match in event
%% patterns and rules. Be sure to use the correct ARN characters when
%% creating event patterns so that they match the ARN syntax in the event you
%% want to match.
test_event_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_event_pattern(Client, Input, []).
test_event_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestEventPattern">>, Input, Options).

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
    Client1 = Client#{service => <<"events">>},
    Host = get_host(<<"events">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSEvents.">>/binary, Action/binary>>}],
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
