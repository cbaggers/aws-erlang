%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon GameLift Service</fullname>
%%
%% Amazon GameLift is a managed service for developers who need a scalable,
%% dedicated server solution for their multiplayer games. Use Amazon GameLift
%% for these tasks: (1) set up computing resources and deploy your game
%% servers, (2) run game sessions and get players into games, (3)
%% automatically scale your resources to meet player demand and manage costs,
%% and (4) track in-depth metrics on game server performance and player
%% usage.
%%
%% The Amazon GameLift service API includes two important function sets:
%%
%% <ul> <li> <b>Manage game sessions and player access</b> -- Retrieve
%% information on available game sessions; create new game sessions; send
%% player requests to join a game session.
%%
%% </li> <li> <b>Configure and manage game server resources</b> -- Manage
%% builds, fleets, queues, and aliases; set auto-scaling policies; retrieve
%% logs and metrics.
%%
%% </li> </ul> This reference guide describes the low-level service API for
%% Amazon GameLift. You can use the API functionality with these tools:
%%
%% <ul> <li> The Amazon Web Services software development kit (<a
%% href="http://aws.amazon.com/tools/#sdk">AWS SDK</a>) is available in <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-supported.html#gamelift-supported-clients">multiple
%% languages</a> including C++ and C#. Use the SDK to access the API
%% programmatically from an application, such as a game client.
%%
%% </li> <li> The <a href="http://aws.amazon.com/cli/">AWS command-line
%% interface</a> (CLI) tool is primarily useful for handling administrative
%% actions, such as setting up and managing Amazon GameLift settings and
%% resources. You can use the AWS CLI to manage all of your AWS services.
%%
%% </li> <li> The <a href="https://console.aws.amazon.com/gamelift/home">AWS
%% Management Console</a> for Amazon GameLift provides a web interface to
%% manage your Amazon GameLift settings and resources. The console includes a
%% dashboard for tracking key resources, including builds and fleets, and
%% displays usage and performance metrics for your games as customizable
%% graphs.
%%
%% </li> <li> Amazon GameLift Local is a tool for testing your game's
%% integration with Amazon GameLift before deploying it on the service. This
%% tools supports a subset of key API actions, which can be called from
%% either the AWS CLI or programmatically. See <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing-local.html">Testing
%% an Integration</a>.
%%
%% </li> </ul> <b>Learn more</b>
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">
%% Developer Guide</a> -- Read about Amazon GameLift features and how to use
%% them.
%%
%% </li> <li> <a
%% href="https://gamedev.amazon.com/forums/tutorials">Tutorials</a> -- Get
%% started fast with walkthroughs and sample projects.
%%
%% </li> <li> <a href="http://aws.amazon.com/blogs/gamedev/">GameDev Blog</a>
%% -- Stay up to date with new features and techniques.
%%
%% </li> <li> <a
%% href="https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html">GameDev
%% Forums</a> -- Connect with the GameDev community.
%%
%% </li> <li> <a
%% href="http://aws.amazon.com/releasenotes/Amazon-GameLift/">Release
%% notes</a> and <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html">document
%% history</a> -- Stay current with updates to the Amazon GameLift service,
%% SDKs, and documentation.
%%
%% </li> </ul> <b>API SUMMARY</b>
%%
%% This list offers a functional overview of the Amazon GameLift service API.
%%
%% <b>Managing Games and Players</b>
%%
%% Use these actions to start new game sessions, find existing game sessions,
%% track game session status and other information, and enable player access
%% to game sessions.
%%
%% <ul> <li> <b>Discover existing game sessions</b>
%%
%% <ul> <li> <a>SearchGameSessions</a> -- Retrieve all available game
%% sessions or search for game sessions that match a set of criteria.
%%
%% </li> </ul> </li> <li> <b>Start new game sessions</b>
%%
%% <ul> <li> Start new games with Queues to find the best available hosting
%% resources across multiple regions, minimize player latency, and balance
%% game session activity for efficiency and cost effectiveness.
%%
%% <ul> <li> <a>StartGameSessionPlacement</a> -- Request a new game session
%% placement and add one or more players to it.
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a> -- Get details on a
%% placement request, including status.
%%
%% </li> <li> <a>StopGameSessionPlacement</a> -- Cancel a placement request.
%%
%% </li> </ul> </li> <li> <a>CreateGameSession</a> -- Start a new game
%% session on a specific fleet. <i>Available in Amazon GameLift Local.</i>
%%
%% </li> </ul> </li> <li> <b>Match players to game sessions with FlexMatch
%% matchmaking</b>
%%
%% <ul> <li> <a>StartMatchmaking</a> -- Request matchmaking for one players
%% or a group who want to play together.
%%
%% </li> <li> <a>StartMatchBackfill</a> - Request additional player matches
%% to fill empty slots in an existing game session.
%%
%% </li> <li> <a>DescribeMatchmaking</a> -- Get details on a matchmaking
%% request, including status.
%%
%% </li> <li> <a>AcceptMatch</a> -- Register that a player accepts a proposed
%% match, for matches that require player acceptance.
%%
%% </li> <li> <a>StopMatchmaking</a> -- Cancel a matchmaking request.
%%
%% </li> </ul> </li> <li> <b>Manage game session data</b>
%%
%% <ul> <li> <a>DescribeGameSessions</a> -- Retrieve metadata for one or more
%% game sessions, including length of time active and current player count.
%% <i>Available in Amazon GameLift Local.</i>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a> -- Retrieve metadata and the
%% game session protection setting for one or more game sessions.
%%
%% </li> <li> <a>UpdateGameSession</a> -- Change game session settings, such
%% as maximum player count and join policy.
%%
%% </li> <li> <a>GetGameSessionLogUrl</a> -- Get the location of saved logs
%% for a game session.
%%
%% </li> </ul> </li> <li> <b>Manage player sessions</b>
%%
%% <ul> <li> <a>CreatePlayerSession</a> -- Send a request for a player to
%% join a game session. <i>Available in Amazon GameLift Local.</i>
%%
%% </li> <li> <a>CreatePlayerSessions</a> -- Send a request for multiple
%% players to join a game session. <i>Available in Amazon GameLift Local.</i>
%%
%% </li> <li> <a>DescribePlayerSessions</a> -- Get details on player
%% activity, including status, playing time, and player data. <i>Available in
%% Amazon GameLift Local.</i>
%%
%% </li> </ul> </li> </ul> <b>Setting Up and Managing Game Servers</b>
%%
%% When setting up Amazon GameLift resources for your game, you first <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">create
%% a game build</a> and upload it to Amazon GameLift. You can then use these
%% actions to configure and manage a fleet of resources to run your game
%% servers, scale capacity to meet player demand, access performance and
%% utilization metrics, and more.
%%
%% <ul> <li> <b>Manage game builds</b>
%%
%% <ul> <li> <a>CreateBuild</a> -- Create a new build using files stored in
%% an Amazon S3 bucket. To create a build and upload files from a local path,
%% use the AWS CLI command <code>upload-build</code>.
%%
%% </li> <li> <a>ListBuilds</a> -- Get a list of all builds uploaded to a
%% Amazon GameLift region.
%%
%% </li> <li> <a>DescribeBuild</a> -- Retrieve information associated with a
%% build.
%%
%% </li> <li> <a>UpdateBuild</a> -- Change build metadata, including build
%% name and version.
%%
%% </li> <li> <a>DeleteBuild</a> -- Remove a build from Amazon GameLift.
%%
%% </li> </ul> </li> <li> <b>Manage fleets</b>
%%
%% <ul> <li> <a>CreateFleet</a> -- Configure and activate a new fleet to run
%% a build's game servers.
%%
%% </li> <li> <a>ListFleets</a> -- Get a list of all fleet IDs in a Amazon
%% GameLift region (all statuses).
%%
%% </li> <li> <a>DeleteFleet</a> -- Terminate a fleet that is no longer
%% running game servers or hosting players.
%%
%% </li> <li> View / update fleet configurations.
%%
%% <ul> <li> <a>DescribeFleetAttributes</a> / <a>UpdateFleetAttributes</a> --
%% View or change a fleet's metadata and settings for game session protection
%% and resource creation limits.
%%
%% </li> <li> <a>DescribeFleetPortSettings</a> /
%% <a>UpdateFleetPortSettings</a> -- View or change the inbound permissions
%% (IP address and port setting ranges) allowed for a fleet.
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a> /
%% <a>UpdateRuntimeConfiguration</a> -- View or change what server processes
%% (and how many) to run on each instance in a fleet.
%%
%% </li> </ul> </li> </ul> </li> <li> <b>Control fleet capacity</b>
%%
%% <ul> <li> <a>DescribeEC2InstanceLimits</a> -- Retrieve maximum number of
%% instances allowed for the current AWS account and the current usage level.
%%
%% </li> <li> <a>DescribeFleetCapacity</a> / <a>UpdateFleetCapacity</a> --
%% Retrieve the capacity settings and the current number of instances in a
%% fleet; adjust fleet capacity settings to scale up or down.
%%
%% </li> <li> Autoscale -- Manage auto-scaling rules and apply them to a
%% fleet.
%%
%% <ul> <li> <a>PutScalingPolicy</a> -- Create a new auto-scaling policy, or
%% update an existing one.
%%
%% </li> <li> <a>DescribeScalingPolicies</a> -- Retrieve an existing
%% auto-scaling policy.
%%
%% </li> <li> <a>DeleteScalingPolicy</a> -- Delete an auto-scaling policy and
%% stop it from affecting a fleet's capacity.
%%
%% </li> <li> <a>StartFleetActions</a> -- Restart a fleet's auto-scaling
%% policies.
%%
%% </li> <li> <a>StopFleetActions</a> -- Suspend a fleet's auto-scaling
%% policies.
%%
%% </li> </ul> </li> </ul> </li> <li> <b>Manage VPC peering connections for
%% fleets</b>
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a> -- Authorize a peering
%% connection to one of your VPCs.
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a> -- Retrieve valid
%% peering connection authorizations.
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a> -- Delete a peering
%% connection authorization.
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a> -- Establish a peering
%% connection between the VPC for a Amazon GameLift fleet and one of your
%% VPCs.
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a> -- Retrieve information on
%% active or pending VPC peering connections with a Amazon GameLift fleet.
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a> -- Delete a VPC peering
%% connection with a Amazon GameLift fleet.
%%
%% </li> </ul> </li> <li> <b>Access fleet activity statistics</b>
%%
%% <ul> <li> <a>DescribeFleetUtilization</a> -- Get current data on the
%% number of server processes, game sessions, and players currently active on
%% a fleet.
%%
%% </li> <li> <a>DescribeFleetEvents</a> -- Get a fleet's logged events for a
%% specified time span.
%%
%% </li> <li> <a>DescribeGameSessions</a> -- Retrieve metadata associated
%% with one or more game sessions, including length of time active and
%% current player count.
%%
%% </li> </ul> </li> <li> <b>Remotely access an instance</b>
%%
%% <ul> <li> <a>DescribeInstances</a> -- Get information on each instance in
%% a fleet, including instance ID, IP address, and status.
%%
%% </li> <li> <a>GetInstanceAccess</a> -- Request access credentials needed
%% to remotely connect to a specified instance in a fleet.
%%
%% </li> </ul> </li> <li> <b>Manage fleet aliases</b>
%%
%% <ul> <li> <a>CreateAlias</a> -- Define a new alias and optionally assign
%% it to a fleet.
%%
%% </li> <li> <a>ListAliases</a> -- Get all fleet aliases defined in a Amazon
%% GameLift region.
%%
%% </li> <li> <a>DescribeAlias</a> -- Retrieve information on an existing
%% alias.
%%
%% </li> <li> <a>UpdateAlias</a> -- Change settings for a alias, such as
%% redirecting it from one fleet to another.
%%
%% </li> <li> <a>DeleteAlias</a> -- Remove an alias from the region.
%%
%% </li> <li> <a>ResolveAlias</a> -- Get the fleet ID that a specified alias
%% points to.
%%
%% </li> </ul> </li> <li> <b>Manage game session queues</b>
%%
%% <ul> <li> <a>CreateGameSessionQueue</a> -- Create a queue for processing
%% requests for new game sessions.
%%
%% </li> <li> <a>DescribeGameSessionQueues</a> -- Retrieve game session
%% queues defined in a Amazon GameLift region.
%%
%% </li> <li> <a>UpdateGameSessionQueue</a> -- Change the configuration of a
%% game session queue.
%%
%% </li> <li> <a>DeleteGameSessionQueue</a> -- Remove a game session queue
%% from the region.
%%
%% </li> </ul> </li> <li> <b>Manage FlexMatch resources</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a> -- Create a matchmaking
%% configuration with instructions for building a player group and placing in
%% a new game session.
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a> -- Retrieve
%% matchmaking configurations defined a Amazon GameLift region.
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a> -- Change settings for
%% matchmaking configuration. queue.
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a> -- Remove a matchmaking
%% configuration from the region.
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a> -- Create a set of rules to use
%% when searching for player matches.
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a> -- Retrieve matchmaking rule
%% sets defined in a Amazon GameLift region.
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a> -- Verify syntax for a set of
%% matchmaking rules.
%%
%% </li> </ul> </li> </ul>
-module(aws_gamelift).

-export([accept_match/2,
         accept_match/3,
         create_alias/2,
         create_alias/3,
         create_build/2,
         create_build/3,
         create_fleet/2,
         create_fleet/3,
         create_game_session/2,
         create_game_session/3,
         create_game_session_queue/2,
         create_game_session_queue/3,
         create_matchmaking_configuration/2,
         create_matchmaking_configuration/3,
         create_matchmaking_rule_set/2,
         create_matchmaking_rule_set/3,
         create_player_session/2,
         create_player_session/3,
         create_player_sessions/2,
         create_player_sessions/3,
         create_vpc_peering_authorization/2,
         create_vpc_peering_authorization/3,
         create_vpc_peering_connection/2,
         create_vpc_peering_connection/3,
         delete_alias/2,
         delete_alias/3,
         delete_build/2,
         delete_build/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_game_session_queue/2,
         delete_game_session_queue/3,
         delete_matchmaking_configuration/2,
         delete_matchmaking_configuration/3,
         delete_scaling_policy/2,
         delete_scaling_policy/3,
         delete_vpc_peering_authorization/2,
         delete_vpc_peering_authorization/3,
         delete_vpc_peering_connection/2,
         delete_vpc_peering_connection/3,
         describe_alias/2,
         describe_alias/3,
         describe_build/2,
         describe_build/3,
         describe_e_c2_instance_limits/2,
         describe_e_c2_instance_limits/3,
         describe_fleet_attributes/2,
         describe_fleet_attributes/3,
         describe_fleet_capacity/2,
         describe_fleet_capacity/3,
         describe_fleet_events/2,
         describe_fleet_events/3,
         describe_fleet_port_settings/2,
         describe_fleet_port_settings/3,
         describe_fleet_utilization/2,
         describe_fleet_utilization/3,
         describe_game_session_details/2,
         describe_game_session_details/3,
         describe_game_session_placement/2,
         describe_game_session_placement/3,
         describe_game_session_queues/2,
         describe_game_session_queues/3,
         describe_game_sessions/2,
         describe_game_sessions/3,
         describe_instances/2,
         describe_instances/3,
         describe_matchmaking/2,
         describe_matchmaking/3,
         describe_matchmaking_configurations/2,
         describe_matchmaking_configurations/3,
         describe_matchmaking_rule_sets/2,
         describe_matchmaking_rule_sets/3,
         describe_player_sessions/2,
         describe_player_sessions/3,
         describe_runtime_configuration/2,
         describe_runtime_configuration/3,
         describe_scaling_policies/2,
         describe_scaling_policies/3,
         describe_vpc_peering_authorizations/2,
         describe_vpc_peering_authorizations/3,
         describe_vpc_peering_connections/2,
         describe_vpc_peering_connections/3,
         get_game_session_log_url/2,
         get_game_session_log_url/3,
         get_instance_access/2,
         get_instance_access/3,
         list_aliases/2,
         list_aliases/3,
         list_builds/2,
         list_builds/3,
         list_fleets/2,
         list_fleets/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
         request_upload_credentials/2,
         request_upload_credentials/3,
         resolve_alias/2,
         resolve_alias/3,
         search_game_sessions/2,
         search_game_sessions/3,
         start_fleet_actions/2,
         start_fleet_actions/3,
         start_game_session_placement/2,
         start_game_session_placement/3,
         start_match_backfill/2,
         start_match_backfill/3,
         start_matchmaking/2,
         start_matchmaking/3,
         stop_fleet_actions/2,
         stop_fleet_actions/3,
         stop_game_session_placement/2,
         stop_game_session_placement/3,
         stop_matchmaking/2,
         stop_matchmaking/3,
         update_alias/2,
         update_alias/3,
         update_build/2,
         update_build/3,
         update_fleet_attributes/2,
         update_fleet_attributes/3,
         update_fleet_capacity/2,
         update_fleet_capacity/3,
         update_fleet_port_settings/2,
         update_fleet_port_settings/3,
         update_game_session/2,
         update_game_session/3,
         update_game_session_queue/2,
         update_game_session_queue/3,
         update_matchmaking_configuration/2,
         update_matchmaking_configuration/3,
         update_runtime_configuration/2,
         update_runtime_configuration/3,
         validate_matchmaking_rule_set/2,
         validate_matchmaking_rule_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Registers a player's acceptance or rejection of a proposed FlexMatch
%% match. A matchmaking configuration may require player acceptance; if so,
%% then matches built with that configuration cannot be completed unless all
%% players accept the proposed match within a specified time limit.
%%
%% When FlexMatch builds a match, all the matchmaking tickets involved in the
%% proposed match are placed into status <code>REQUIRES_ACCEPTANCE</code>.
%% This is a trigger for your game to get acceptance from all players in the
%% ticket. Acceptances are only valid for tickets when they are in this
%% status; all other acceptances result in an error.
%%
%% To register acceptance, specify the ticket ID, a response, and one or more
%% players. Once all players have registered acceptance, the matchmaking
%% tickets advance to status <code>PLACING</code>, where a new game session
%% is created for the match.
%%
%% If any player rejects the match, or if acceptances are not received before
%% a specified timeout, the proposed match is dropped. The matchmaking
%% tickets are then handled in one of two ways: For tickets where all players
%% accepted the match, the ticket status is returned to
%% <code>SEARCHING</code> to find a new match. For tickets where one or more
%% players failed to accept the match, the ticket status is set to
%% <code>FAILED</code>, and processing is terminated. A new matchmaking
%% request for these players can be submitted as needed.
%%
%% Matchmaking-related operations include:
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
accept_match(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_match(Client, Input, []).
accept_match(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptMatch">>, Input, Options).

%% @doc Creates an alias for a fleet. In most situations, you can use an
%% alias ID in place of a fleet ID. By using a fleet alias instead of a
%% specific fleet ID, you can switch gameplay and players to a new fleet
%% without changing your game client or other game components. For example,
%% for games in production, using an alias allows you to seamlessly redirect
%% your player base to a new game server update.
%%
%% Amazon GameLift supports two types of routing strategies for aliases:
%% simple and terminal. A simple alias points to an active fleet. A terminal
%% alias is used to display messaging or link to a URL instead of routing
%% players to an active fleet. For example, you might use a terminal alias
%% when a game version is no longer supported and you want to direct players
%% to an upgrade site.
%%
%% To create a fleet alias, specify an alias name, routing strategy, and
%% optional description. Each simple alias can point to only one fleet, but a
%% fleet can have multiple aliases. If successful, a new alias record is
%% returned, including an alias ID, which you can reference when creating a
%% game session. You can reassign an alias to another fleet by calling
%% <code>UpdateAlias</code>.
%%
%% Alias-related operations include:
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates a new Amazon GameLift build record for your game server
%% binary files and points to the location of your game server build files in
%% an Amazon Simple Storage Service (Amazon S3) location.
%%
%% Game server binaries must be combined into a <code>.zip</code> file for
%% use with Amazon GameLift. See <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">Uploading
%% Your Game</a> for more information.
%%
%% <important> To create new builds quickly and easily, use the AWS CLI
%% command <b> <a
%% href="http://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a>
%% </b>. This helper command uploads your build and creates a new build
%% record in one step, and automatically handles the necessary permissions.
%% See <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html">
%% Upload Build Files to Amazon GameLift</a> for more help.
%%
%% </important> The <code>CreateBuild</code> operation should be used only
%% when you need to manually upload your build files, as in the following
%% scenarios:
%%
%% <ul> <li> Store a build file in an Amazon S3 bucket under your own AWS
%% account. To use this option, you must first give Amazon GameLift access to
%% that Amazon S3 bucket. See <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">
%% Create a Build with Files in Amazon S3</a> for detailed help. To create a
%% new build record using files in your Amazon S3 bucket, call
%% <code>CreateBuild</code> and specify a build name, operating system, and
%% the storage location of your game build.
%%
%% </li> <li> Upload a build file directly to Amazon GameLift's Amazon S3
%% account. To use this option, you first call <code>CreateBuild</code> with
%% a build name and operating system. This action creates a new build record
%% and returns an Amazon S3 storage location (bucket and key only) and
%% temporary access credentials. Use the credentials to manually upload your
%% build file to the storage location (see the Amazon S3 topic <a
%% href="http://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html">Uploading
%% Objects</a>). You can upload files to a location only once.
%%
%% </li> </ul> If successful, this operation creates a new build record with
%% a unique build ID and places it in <code>INITIALIZED</code> status. You
%% can use <a>DescribeBuild</a> to check the status of your build. A build
%% must be in <code>READY</code> status before it can be used to create
%% fleets.
%%
%% Build-related operations include:
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
create_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_build(Client, Input, []).
create_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBuild">>, Input, Options).

%% @doc Creates a new fleet to run your game servers. A fleet is a set of
%% Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can run
%% multiple server processes to host game sessions. You set up a fleet to use
%% instances with certain hardware specifications (see <a
%% href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance
%% Types</a> for more information), and deploy your game build to run on each
%% instance.
%%
%% To create a new fleet, you must specify the following: (1) a fleet name,
%% (2) the build ID of a successfully uploaded game build, (3) an EC2
%% instance type, and (4) a run-time configuration, which describes the
%% server processes to run on each instance in the fleet. If you don't
%% specify a fleet type (on-demand or spot), the new fleet uses on-demand
%% instances by default.
%%
%% You can also configure the new fleet with the following settings:
%%
%% <ul> <li> Fleet description
%%
%% </li> <li> Access permissions for inbound traffic
%%
%% </li> <li> Fleet-wide game session protection
%%
%% </li> <li> Resource usage limits
%%
%% </li> </ul> <ul> <li> VPC peering connection (see <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC
%% Peering with Amazon GameLift Fleets</a>)
%%
%% </li> </ul> If you use Amazon CloudWatch for metrics, you can add the new
%% fleet to a metric group. By adding multiple fleets to a metric group, you
%% can view aggregated metrics for all the fleets in the group.
%%
%% If the <code>CreateFleet</code> call is successful, Amazon GameLift
%% performs the following tasks. You can track the process of a fleet by
%% checking the fleet status or by monitoring fleet creation events:
%%
%% <ul> <li> Creates a fleet record. Status: <code>NEW</code>.
%%
%% </li> <li> Begins writing events to the fleet event log, which can be
%% accessed in the Amazon GameLift console.
%%
%% Sets the fleet's target capacity to 1 (desired instances), which triggers
%% Amazon GameLift to start one new EC2 instance.
%%
%% </li> <li> Downloads the game build to the new instance and installs it.
%% Statuses: <code>DOWNLOADING</code>, <code>VALIDATING</code>,
%% <code>BUILDING</code>.
%%
%% </li> <li> Starts launching server processes on the instance. If the fleet
%% is configured to run multiple server processes per instance, Amazon
%% GameLift staggers each launch by a few seconds. Status:
%% <code>ACTIVATING</code>.
%%
%% </li> <li> Sets the fleet's status to <code>ACTIVE</code> as soon as one
%% server process is ready to host a game session.
%%
%% </li> </ul> Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates a multiplayer game session for players. This action creates a
%% game session record and assigns an available server process in the
%% specified fleet to host the game session. A fleet must have an
%% <code>ACTIVE</code> status before a game session can be created in it.
%%
%% To create a game session, specify either fleet ID or alias ID and indicate
%% a maximum number of players to allow in the game session. You can also
%% provide a name and game-specific properties for this game session. If
%% successful, a <a>GameSession</a> object is returned containing the game
%% session properties and other settings you specified.
%%
%% <b>Idempotency tokens.</b> You can add a token that uniquely identifies
%% game session requests. This is useful for ensuring that game session
%% requests are idempotent. Multiple requests with the same idempotency token
%% are processed only once; subsequent requests return the original result.
%% All response values are the same with the exception of game session
%% status, which may change.
%%
%% <b>Resource creation limits.</b> If you are creating a game session on a
%% fleet with a resource creation limit policy in force, then you must
%% specify a creator ID. Without this ID, Amazon GameLift has no way to
%% evaluate the policy for this new game session request.
%%
%% <b>Player acceptance policy.</b> By default, newly created game sessions
%% are open to new players. You can restrict new player access by using
%% <a>UpdateGameSession</a> to change the game session's player session
%% creation policy.
%%
%% <b>Game session logs.</b> Logs are retained for all active game sessions
%% for 14 days. To access the logs, call <a>GetGameSessionLogUrl</a> to
%% download the log files.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
create_game_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_game_session(Client, Input, []).
create_game_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGameSession">>, Input, Options).

%% @doc Establishes a new queue for processing requests to place new game
%% sessions. A queue identifies where new game sessions can be hosted -- by
%% specifying a list of destinations (fleets or aliases) -- and how long
%% requests can wait in the queue before timing out. You can set up a queue
%% to try to place game sessions on fleets in multiple regions. To add
%% placement requests to a queue, call <a>StartGameSessionPlacement</a> and
%% reference the queue name.
%%
%% <b>Destination order.</b> When processing a request for a game session,
%% Amazon GameLift tries each destination in order until it finds one with
%% available resources to host the new game session. A queue's default order
%% is determined by how destinations are listed. The default order is
%% overridden when a game session placement request provides player latency
%% information. Player latency information enables Amazon GameLift to
%% prioritize destinations where players report the lowest average latency,
%% as a result placing the new game session where the majority of players
%% will have the best possible gameplay experience.
%%
%% <b>Player latency policies.</b> For placement requests containing player
%% latency information, use player latency policies to protect individual
%% players from very high latencies. With a latency cap, even when a
%% destination can deliver a low latency for most players, the game is not
%% placed where any individual player is reporting latency higher than a
%% policy's maximum. A queue can have multiple latency policies, which are
%% enforced consecutively starting with the policy with the lowest latency
%% cap. Use multiple policies to gradually relax latency controls; for
%% example, you might set a policy with a low latency cap for the first 60
%% seconds, a second policy with a higher cap for the next 60 seconds, etc.
%%
%% To create a new queue, provide a name, timeout value, a list of
%% destinations and, if desired, a set of latency policies. If successful, a
%% new queue object is returned.
%%
%% Queue-related operations include:
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
create_game_session_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_game_session_queue(Client, Input, []).
create_game_session_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGameSessionQueue">>, Input, Options).

%% @doc Defines a new matchmaking configuration for use with FlexMatch. A
%% matchmaking configuration sets out guidelines for matching players and
%% getting the matches into games. You can set up multiple matchmaking
%% configurations to handle the scenarios needed for your game. Each
%% matchmaking ticket (<a>StartMatchmaking</a> or <a>StartMatchBackfill</a>)
%% specifies a configuration for the match and provides player attributes to
%% support the configuration being used.
%%
%% To create a matchmaking configuration, at a minimum you must specify the
%% following: configuration name; a rule set that governs how to evaluate
%% players and find acceptable matches; a game session queue to use when
%% placing a new game session for the match; and the maximum time allowed for
%% a matchmaking attempt.
%%
%% <b>Player acceptance</b> -- In each configuration, you have the option to
%% require that all players accept participation in a proposed match. To
%% enable this feature, set <i>AcceptanceRequired</i> to true and specify a
%% time limit for player acceptance. Players have the option to accept or
%% reject a proposed match, and a match does not move ahead to game session
%% placement unless all matched players accept.
%%
%% <b>Matchmaking status notification</b> -- There are two ways to track the
%% progress of matchmaking tickets: (1) polling ticket status with
%% <a>DescribeMatchmaking</a>; or (2) receiving notifications with Amazon
%% Simple Notification Service (SNS). To use notifications, you first need to
%% set up an SNS topic to receive the notifications, and provide the topic
%% ARN in the matchmaking configuration (see <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html">
%% Setting up Notifications for Matchmaking</a>). Since notifications promise
%% only "best effort" delivery, we recommend calling
%% <code>DescribeMatchmaking</code> if no notifications are received within
%% 30 seconds.
%%
%% Operations related to match configurations and rule sets include:
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> </ul>
create_matchmaking_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_matchmaking_configuration(Client, Input, []).
create_matchmaking_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMatchmakingConfiguration">>, Input, Options).

%% @doc Creates a new rule set for FlexMatch matchmaking. A rule set
%% describes the type of match to create, such as the number and size of
%% teams, and sets the parameters for acceptable player matches, such as
%% minimum skill level or character type. Rule sets are used in matchmaking
%% configurations, which define how matchmaking requests are handled. Each
%% <a>MatchmakingConfiguration</a> uses one rule set; you can set up multiple
%% rule sets to handle the scenarios that suit your game (such as for
%% different game modes), and create a separate matchmaking configuration for
%% each rule set. See additional information on rule set content in the
%% <a>MatchmakingRuleSet</a> structure. For help creating rule sets,
%% including useful examples, see the topic <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html">
%% Adding FlexMatch to Your Game</a>.
%%
%% Once created, matchmaking rule sets cannot be changed or deleted, so we
%% recommend checking the rule set syntax using
%% <a>ValidateMatchmakingRuleSet</a> before creating the rule set.
%%
%% To create a matchmaking rule set, provide the set of rules and a unique
%% name. Rule sets must be defined in the same region as the matchmaking
%% configuration they will be used with. Rule sets cannot be edited or
%% deleted. If you need to change a rule set, create a new one with the
%% necessary edits and then update matchmaking configurations to use the new
%% rule set.
%%
%% Operations related to match configurations and rule sets include:
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> </ul>
create_matchmaking_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_matchmaking_rule_set(Client, Input, []).
create_matchmaking_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMatchmakingRuleSet">>, Input, Options).

%% @doc Adds a player to a game session and creates a player session record.
%% Before a player can be added, a game session must have an
%% <code>ACTIVE</code> status, have a creation policy of
%% <code>ALLOW_ALL</code>, and have an open player slot. To add a group of
%% players to a game session, use <a>CreatePlayerSessions</a>.
%%
%% To create a player session, specify a game session ID, player ID, and
%% optionally a string of player data. If successful, the player is added to
%% the game session and a new <a>PlayerSession</a> object is returned. Player
%% sessions cannot be updated.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% Player-session-related operations include:
%%
%% <ul> <li> <a>CreatePlayerSession</a>
%%
%% </li> <li> <a>CreatePlayerSessions</a>
%%
%% </li> <li> <a>DescribePlayerSessions</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
create_player_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_player_session(Client, Input, []).
create_player_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlayerSession">>, Input, Options).

%% @doc Adds a group of players to a game session. This action is useful with
%% a team matching feature. Before players can be added, a game session must
%% have an <code>ACTIVE</code> status, have a creation policy of
%% <code>ALLOW_ALL</code>, and have an open player slot. To add a single
%% player to a game session, use <a>CreatePlayerSession</a>.
%%
%% To create player sessions, specify a game session ID, a list of player
%% IDs, and optionally a set of player data strings. If successful, the
%% players are added to the game session and a set of new
%% <a>PlayerSession</a> objects is returned. Player sessions cannot be
%% updated.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% Player-session-related operations include:
%%
%% <ul> <li> <a>CreatePlayerSession</a>
%%
%% </li> <li> <a>CreatePlayerSessions</a>
%%
%% </li> <li> <a>DescribePlayerSessions</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
create_player_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_player_sessions(Client, Input, []).
create_player_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlayerSessions">>, Input, Options).

%% @doc Requests authorization to create or delete a peer connection between
%% the VPC for your Amazon GameLift fleet and a virtual private cloud (VPC)
%% in your AWS account. VPC peering enables the game servers on your fleet to
%% communicate directly with other AWS resources. Once you've received
%% authorization, call <a>CreateVpcPeeringConnection</a> to establish the
%% peering connection. For more information, see <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC
%% Peering with Amazon GameLift Fleets</a>.
%%
%% You can peer with VPCs that are owned by any AWS account you have access
%% to, including the account that you use to manage your Amazon GameLift
%% fleets. You cannot peer with VPCs that are in different regions.
%%
%% To request authorization to create a connection, call this operation from
%% the AWS account with the VPC that you want to peer to your Amazon GameLift
%% fleet. For example, to enable your game servers to retrieve data from a
%% DynamoDB table, use the account that manages that DynamoDB resource.
%% Identify the following values: (1) The ID of the VPC that you want to peer
%% with, and (2) the ID of the AWS account that you use to manage Amazon
%% GameLift. If successful, VPC peering is authorized for the specified VPC.
%%
%% To request authorization to delete a connection, call this operation from
%% the AWS account with the VPC that is peered with your Amazon GameLift
%% fleet. Identify the following values: (1) VPC ID that you want to delete
%% the peering connection for, and (2) ID of the AWS account that you use to
%% manage Amazon GameLift.
%%
%% The authorization remains valid for 24 hours unless it is canceled by a
%% call to <a>DeleteVpcPeeringAuthorization</a>. You must create or delete
%% the peering connection while the authorization is valid.
%%
%% VPC peering connection operations include:
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
create_vpc_peering_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_peering_authorization(Client, Input, []).
create_vpc_peering_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcPeeringAuthorization">>, Input, Options).

%% @doc Establishes a VPC peering connection between a virtual private cloud
%% (VPC) in an AWS account with the VPC for your Amazon GameLift fleet. VPC
%% peering enables the game servers on your fleet to communicate directly
%% with other AWS resources. You can peer with VPCs in any AWS account that
%% you have access to, including the account that you use to manage your
%% Amazon GameLift fleets. You cannot peer with VPCs that are in different
%% regions. For more information, see <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC
%% Peering with Amazon GameLift Fleets</a>.
%%
%% Before calling this operation to establish the peering connection, you
%% first need to call <a>CreateVpcPeeringAuthorization</a> and identify the
%% VPC you want to peer with. Once the authorization for the specified VPC is
%% issued, you have 24 hours to establish the connection. These two
%% operations handle all tasks necessary to peer the two VPCs, including
%% acceptance, updating routing tables, etc.
%%
%% To establish the connection, call this operation from the AWS account that
%% is used to manage the Amazon GameLift fleets. Identify the following
%% values: (1) The ID of the fleet you want to be enable a VPC peering
%% connection for; (2) The AWS account with the VPC that you want to peer
%% with; and (3) The ID of the VPC you want to peer with. This operation is
%% asynchronous. If successful, a <a>VpcPeeringConnection</a> request is
%% created. You can use continuous polling to track the request's status
%% using <a>DescribeVpcPeeringConnections</a>, or by monitoring fleet events
%% for success or failure using <a>DescribeFleetEvents</a>.
%%
%% VPC peering connection operations include:
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
create_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_peering_connection(Client, Input, []).
create_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcPeeringConnection">>, Input, Options).

%% @doc Deletes an alias. This action removes all record of the alias. Game
%% clients attempting to access a server process using the deleted alias
%% receive an error. To delete an alias, specify the alias ID to be deleted.
%%
%% Alias-related operations include:
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes a build. This action permanently deletes the build record and
%% any uploaded build files.
%%
%% To delete a build, specify its ID. Deleting a build does not affect the
%% status of any active fleets using the build, but you can no longer create
%% new fleets with the deleted build.
%%
%% Build-related operations include:
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
delete_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_build(Client, Input, []).
delete_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBuild">>, Input, Options).

%% @doc Deletes everything related to a fleet. Before deleting a fleet, you
%% must set the fleet's desired capacity to zero. See
%% <a>UpdateFleetCapacity</a>.
%%
%% This action removes the fleet's resources and the fleet record. Once a
%% fleet is deleted, you can no longer use that fleet.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc Deletes a game session queue. This action means that any
%% <a>StartGameSessionPlacement</a> requests that reference this queue will
%% fail. To delete a queue, specify the queue name.
%%
%% Queue-related operations include:
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
delete_game_session_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_game_session_queue(Client, Input, []).
delete_game_session_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGameSessionQueue">>, Input, Options).

%% @doc Permanently removes a FlexMatch matchmaking configuration. To delete,
%% specify the configuration name. A matchmaking configuration cannot be
%% deleted if it is being used in any active matchmaking tickets.
%%
%% Operations related to match configurations and rule sets include:
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> </ul>
delete_matchmaking_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_matchmaking_configuration(Client, Input, []).
delete_matchmaking_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMatchmakingConfiguration">>, Input, Options).

%% @doc Deletes a fleet scaling policy. This action means that the policy is
%% no longer in force and removes all record of it. To delete a scaling
%% policy, specify both the scaling policy name and the fleet ID it is
%% associated with.
%%
%% To temporarily suspend scaling policies, call <a>StopFleetActions</a>.
%% This operation suspends all policies for the fleet.
%%
%% Operations related to fleet capacity scaling include:
%%
%% <ul> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> Manage scaling policies:
%%
%% <ul> <li> <a>PutScalingPolicy</a> (auto-scaling)
%%
%% </li> <li> <a>DescribeScalingPolicies</a> (auto-scaling)
%%
%% </li> <li> <a>DeleteScalingPolicy</a> (auto-scaling)
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
delete_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_policy(Client, Input, []).
delete_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPolicy">>, Input, Options).

%% @doc Cancels a pending VPC peering authorization for the specified VPC. If
%% the authorization has already been used to create a peering connection,
%% call <a>DeleteVpcPeeringConnection</a> to remove the connection.
%%
%% VPC peering connection operations include:
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
delete_vpc_peering_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_peering_authorization(Client, Input, []).
delete_vpc_peering_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcPeeringAuthorization">>, Input, Options).

%% @doc Removes a VPC peering connection. To delete the connection, you must
%% have a valid authorization for the VPC peering connection that you want to
%% delete. You can check for an authorization by calling
%% <a>DescribeVpcPeeringAuthorizations</a> or request a new one using
%% <a>CreateVpcPeeringAuthorization</a>.
%%
%% Once a valid authorization exists, call this operation from the AWS
%% account that is used to manage the Amazon GameLift fleets. Identify the
%% connection to delete by the connection ID and fleet ID. If successful, the
%% connection is removed.
%%
%% VPC peering connection operations include:
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
delete_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_peering_connection(Client, Input, []).
delete_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcPeeringConnection">>, Input, Options).

%% @doc Retrieves properties for an alias. This operation returns all alias
%% metadata and settings. To get an alias's target fleet ID only, use
%% <code>ResolveAlias</code>.
%%
%% To get alias properties, specify the alias ID. If successful, the
%% requested alias record is returned.
%%
%% Alias-related operations include:
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
describe_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alias(Client, Input, []).
describe_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlias">>, Input, Options).

%% @doc Retrieves properties for a build. To request a build record, specify
%% a build ID. If successful, an object containing the build properties is
%% returned.
%%
%% Build-related operations include:
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
describe_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_build(Client, Input, []).
describe_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBuild">>, Input, Options).

%% @doc Retrieves the following information for the specified EC2 instance
%% type:
%%
%% <ul> <li> maximum number of instances allowed per AWS account (service
%% limit)
%%
%% </li> <li> current usage level for the AWS account
%%
%% </li> </ul> Service limits vary depending on region. Available regions for
%% Amazon GameLift can be found in the AWS Management Console for Amazon
%% GameLift (see the drop-down list in the upper right corner).
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_e_c2_instance_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_e_c2_instance_limits(Client, Input, []).
describe_e_c2_instance_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEC2InstanceLimits">>, Input, Options).

%% @doc Retrieves fleet properties, including metadata, status, and
%% configuration, for one or more fleets. You can request attributes for all
%% fleets, or specify a list of one or more fleet IDs. When requesting
%% multiple fleets, use the pagination parameters to retrieve results as a
%% set of sequential pages. If successful, a <a>FleetAttributes</a> object is
%% returned for each requested fleet ID. When specifying a list of fleet IDs,
%% attribute objects are returned only for fleets that currently exist.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note> Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_fleet_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_attributes(Client, Input, []).
describe_fleet_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAttributes">>, Input, Options).

%% @doc Retrieves the current status of fleet capacity for one or more
%% fleets. This information includes the number of instances that have been
%% requested for the fleet and the number currently active. You can request
%% capacity for all fleets, or specify a list of one or more fleet IDs. When
%% requesting multiple fleets, use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a
%% <a>FleetCapacity</a> object is returned for each requested fleet ID. When
%% specifying a list of fleet IDs, attribute objects are returned only for
%% fleets that currently exist.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note> Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_fleet_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_capacity(Client, Input, []).
describe_fleet_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetCapacity">>, Input, Options).

%% @doc Retrieves entries from the specified fleet's event log. You can
%% specify a time range to limit the result set. Use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, a collection of event log entries matching the request are
%% returned.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_fleet_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_events(Client, Input, []).
describe_fleet_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetEvents">>, Input, Options).

%% @doc Retrieves the inbound connection permissions for a fleet. Connection
%% permissions include a range of IP addresses and port settings that
%% incoming traffic can use to access server processes in the fleet. To get a
%% fleet's inbound connection permissions, specify a fleet ID. If successful,
%% a collection of <a>IpPermission</a> objects is returned for the requested
%% fleet ID. If the requested fleet has been deleted, the result set is
%% empty.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_port_settings(Client, Input, []).
describe_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetPortSettings">>, Input, Options).

%% @doc Retrieves utilization statistics for one or more fleets. You can
%% request utilization data for all fleets, or specify a list of one or more
%% fleet IDs. When requesting multiple fleets, use the pagination parameters
%% to retrieve results as a set of sequential pages. If successful, a
%% <a>FleetUtilization</a> object is returned for each requested fleet ID.
%% When specifying a list of fleet IDs, utilization objects are returned only
%% for fleets that currently exist.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note> Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_fleet_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_utilization(Client, Input, []).
describe_fleet_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetUtilization">>, Input, Options).

%% @doc Retrieves properties, including the protection policy in force, for
%% one or more game sessions. This action can be used in several ways: (1)
%% provide a <code>GameSessionId</code> or <code>GameSessionArn</code> to
%% request details for a specific game session; (2) provide either a
%% <code>FleetId</code> or an <code>AliasId</code> to request properties for
%% all game sessions running on a fleet.
%%
%% To get game session record(s), specify just one of the following: game
%% session ID, fleet ID, or alias ID. You can filter this request by game
%% session status. Use the pagination parameters to retrieve results as a set
%% of sequential pages. If successful, a <a>GameSessionDetail</a> object is
%% returned for each session matching the request.
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_game_session_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_session_details(Client, Input, []).
describe_game_session_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessionDetails">>, Input, Options).

%% @doc Retrieves properties and current status of a game session placement
%% request. To get game session placement details, specify the placement ID.
%% If successful, a <a>GameSessionPlacement</a> object is returned.
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_game_session_placement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_session_placement(Client, Input, []).
describe_game_session_placement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessionPlacement">>, Input, Options).

%% @doc Retrieves the properties for one or more game session queues. When
%% requesting multiple queues, use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a
%% <a>GameSessionQueue</a> object is returned for each requested queue. When
%% specifying a list of queues, objects are returned only for queues that
%% currently exist in the region.
%%
%% Queue-related operations include:
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
describe_game_session_queues(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_session_queues(Client, Input, []).
describe_game_session_queues(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessionQueues">>, Input, Options).

%% @doc Retrieves a set of one or more game sessions. Request a specific game
%% session or request all game sessions on a fleet. Alternatively, use
%% <a>SearchGameSessions</a> to request a set of active game sessions that
%% are filtered by certain criteria. To retrieve protection policy settings
%% for game sessions, use <a>DescribeGameSessionDetails</a>.
%%
%% To get game sessions, specify one of the following: game session ID, fleet
%% ID, or alias ID. You can filter this request by game session status. Use
%% the pagination parameters to retrieve results as a set of sequential
%% pages. If successful, a <a>GameSession</a> object is returned for each
%% game session matching the request.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_game_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_sessions(Client, Input, []).
describe_game_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessions">>, Input, Options).

%% @doc Retrieves information about a fleet's instances, including instance
%% IDs. Use this action to get details on all instances in the fleet or get
%% details on one specific instance.
%%
%% To get a specific instance, specify fleet ID and instance ID. To get all
%% instances in a fleet, specify a fleet ID only. Use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, an <a>Instance</a> object is returned for each result.
describe_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances(Client, Input, []).
describe_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstances">>, Input, Options).

%% @doc Retrieves one or more matchmaking tickets. Use this operation to
%% retrieve ticket information, including status and--once a successful match
%% is made--acquire connection information for the resulting new game
%% session.
%%
%% You can use this operation to track the progress of matchmaking requests
%% (through polling) as an alternative to using event notifications. See more
%% details on tracking matchmaking requests through polling or notifications
%% in <a>StartMatchmaking</a>.
%%
%% To request matchmaking tickets, provide a list of up to 10 ticket IDs. If
%% the request is successful, a ticket object is returned for each requested
%% ID that currently exists.
%%
%% Matchmaking-related operations include:
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
describe_matchmaking(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_matchmaking(Client, Input, []).
describe_matchmaking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMatchmaking">>, Input, Options).

%% @doc Retrieves the details of FlexMatch matchmaking configurations. with
%% this operation, you have the following options: (1) retrieve all existing
%% configurations, (2) provide the names of one or more configurations to
%% retrieve, or (3) retrieve all configurations that use a specified rule set
%% name. When requesting multiple items, use the pagination parameters to
%% retrieve results as a set of sequential pages. If successful, a
%% configuration is returned for each requested name. When specifying a list
%% of names, only configurations that currently exist are returned.
%%
%% Operations related to match configurations and rule sets include:
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> </ul>
describe_matchmaking_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_matchmaking_configurations(Client, Input, []).
describe_matchmaking_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMatchmakingConfigurations">>, Input, Options).

%% @doc Retrieves the details for FlexMatch matchmaking rule sets. You can
%% request all existing rule sets for the region, or provide a list of one or
%% more rule set names. When requesting multiple items, use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, a rule set is returned for each requested name.
%%
%% Operations related to match configurations and rule sets include:
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> </ul>
describe_matchmaking_rule_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_matchmaking_rule_sets(Client, Input, []).
describe_matchmaking_rule_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMatchmakingRuleSets">>, Input, Options).

%% @doc Retrieves properties for one or more player sessions. This action can
%% be used in several ways: (1) provide a <code>PlayerSessionId</code> to
%% request properties for a specific player session; (2) provide a
%% <code>GameSessionId</code> to request properties for all player sessions
%% in the specified game session; (3) provide a <code>PlayerId</code> to
%% request properties for all player sessions of a specified player.
%%
%% To get game session record(s), specify only one of the following: a player
%% session ID, a game session ID, or a player ID. You can filter this request
%% by player session status. Use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a
%% <a>PlayerSession</a> object is returned for each session matching the
%% request.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% Player-session-related operations include:
%%
%% <ul> <li> <a>CreatePlayerSession</a>
%%
%% </li> <li> <a>CreatePlayerSessions</a>
%%
%% </li> <li> <a>DescribePlayerSessions</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_player_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_player_sessions(Client, Input, []).
describe_player_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePlayerSessions">>, Input, Options).

%% @doc Retrieves the current run-time configuration for the specified fleet.
%% The run-time configuration tells Amazon GameLift how to launch server
%% processes on instances in the fleet.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_runtime_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_runtime_configuration(Client, Input, []).
describe_runtime_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRuntimeConfiguration">>, Input, Options).

%% @doc Retrieves all scaling policies applied to a fleet.
%%
%% To get a fleet's scaling policies, specify the fleet ID. You can filter
%% this request by policy status, such as to retrieve only active scaling
%% policies. Use the pagination parameters to retrieve results as a set of
%% sequential pages. If successful, set of <a>ScalingPolicy</a> objects is
%% returned for the fleet.
%%
%% A fleet may have all of its scaling policies suspended
%% (<a>StopFleetActions</a>). This action does not affect the status of the
%% scaling policies, which remains ACTIVE. To see whether a fleet's scaling
%% policies are in force or suspended, call <a>DescribeFleetAttributes</a>
%% and check the stopped actions.
%%
%% Operations related to fleet capacity scaling include:
%%
%% <ul> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> Manage scaling policies:
%%
%% <ul> <li> <a>PutScalingPolicy</a> (auto-scaling)
%%
%% </li> <li> <a>DescribeScalingPolicies</a> (auto-scaling)
%%
%% </li> <li> <a>DeleteScalingPolicy</a> (auto-scaling)
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_scaling_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_policies(Client, Input, []).
describe_scaling_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPolicies">>, Input, Options).

%% @doc Retrieves valid VPC peering authorizations that are pending for the
%% AWS account. This operation returns all VPC peering authorizations and
%% requests for peering. This includes those initiated and received by this
%% account.
%%
%% VPC peering connection operations include:
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
describe_vpc_peering_authorizations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_peering_authorizations(Client, Input, []).
describe_vpc_peering_authorizations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcPeeringAuthorizations">>, Input, Options).

%% @doc Retrieves information on VPC peering connections. Use this operation
%% to get peering information for all fleets or for one specific fleet ID.
%%
%% To retrieve connection information, call this operation from the AWS
%% account that is used to manage the Amazon GameLift fleets. Specify a fleet
%% ID or leave the parameter empty to retrieve all connection records. If
%% successful, the retrieved information includes both active and pending
%% connections. Active connections identify the IpV4 CIDR block that the VPC
%% uses to connect.
%%
%% VPC peering connection operations include:
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
describe_vpc_peering_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_peering_connections(Client, Input, []).
describe_vpc_peering_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcPeeringConnections">>, Input, Options).

%% @doc Retrieves the location of stored game session logs for a specified
%% game session. When a game session is terminated, Amazon GameLift
%% automatically stores the logs in Amazon S3 and retains them for 14 days.
%% Use this URL to download the logs.
%%
%% <note> See the <a
%% href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">AWS
%% Service Limits</a> page for maximum log file sizes. Log files that exceed
%% this limit are not saved.
%%
%% </note> Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
get_game_session_log_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_game_session_log_url(Client, Input, []).
get_game_session_log_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGameSessionLogUrl">>, Input, Options).

%% @doc Requests remote access to a fleet instance. Remote access is useful
%% for debugging, gathering benchmarking data, or watching activity in real
%% time.
%%
%% Access requires credentials that match the operating system of the
%% instance. For a Windows instance, Amazon GameLift returns a user name and
%% password as strings for use with a Windows Remote Desktop client. For a
%% Linux instance, Amazon GameLift returns a user name and RSA private key,
%% also as strings, for use with an SSH client. The private key must be saved
%% in the proper format to a <code>.pem</code> file before using. If you're
%% making this request using the AWS CLI, saving the secret can be handled as
%% part of the GetInstanceAccess request. (See the example later in this
%% topic). For more information on remote access, see <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely
%% Accessing an Instance</a>.
%%
%% To request access to a specific instance, specify the IDs of the instance
%% and the fleet it belongs to. If successful, an <a>InstanceAccess</a>
%% object is returned containing the instance's IP address and a set of
%% credentials.
get_instance_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_access(Client, Input, []).
get_instance_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceAccess">>, Input, Options).

%% @doc Retrieves all aliases for this AWS account. You can filter the result
%% set by alias name and/or routing strategy type. Use the pagination
%% parameters to retrieve results in sequential pages.
%%
%% <note> Returned aliases are not listed in any particular order.
%%
%% </note> Alias-related operations include:
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Retrieves build records for all builds associated with the AWS
%% account in use. You can limit results to builds that are in a specific
%% status by using the <code>Status</code> parameter. Use the pagination
%% parameters to retrieve results in a set of sequential pages.
%%
%% <note> Build records are not listed in any particular order.
%%
%% </note> Build-related operations include:
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
list_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_builds(Client, Input, []).
list_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuilds">>, Input, Options).

%% @doc Retrieves a collection of fleet records for this AWS account. You can
%% filter the result set by build ID. Use the pagination parameters to
%% retrieve results in sequential pages.
%%
%% <note> Fleet records are not listed in any particular order.
%%
%% </note> Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
list_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets(Client, Input, []).
list_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleets">>, Input, Options).

%% @doc Creates or updates a scaling policy for a fleet. Scaling policies are
%% used to automatically scale a fleet's hosting capacity to meet player
%% demand. An active scaling policy instructs Amazon GameLift to track a
%% fleet metric and automatically change the fleet's capacity when a certain
%% threshold is reached. There are two types of scaling policies:
%% target-based and rule-based. Use a target-based policy to quickly and
%% efficiently manage fleet scaling; this option is the most commonly used.
%% Use rule-based policies when you need to exert fine-grained control over
%% auto-scaling.
%%
%% Fleets can have multiple scaling policies of each type in force at the
%% same time; you can have one target-based policy, one or multiple
%% rule-based scaling policies, or both. We recommend caution, however,
%% because multiple auto-scaling policies can have unintended consequences.
%%
%% You can temporarily suspend all scaling policies for a fleet by calling
%% <a>StopFleetActions</a> with the fleet action AUTO_SCALING. To resume
%% scaling policies, call <a>StartFleetActions</a> with the same fleet
%% action. To stop just one scaling policy--or to permanently remove it, you
%% must delete the policy with <a>DeleteScalingPolicy</a>.
%%
%% Learn more about how to work with auto-scaling in <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html">Set
%% Up Fleet Automatic Scaling</a>.
%%
%% <b>Target-based policy</b>
%%
%% A target-based policy tracks a single metric:
%% PercentAvailableGameSessions. This metric tells us how much of a fleet's
%% hosting capacity is ready to host game sessions but is not currently in
%% use. This is the fleet's buffer; it measures the additional player demand
%% that the fleet could handle at current capacity. With a target-based
%% policy, you set your ideal buffer size and leave it to Amazon GameLift to
%% take whatever action is needed to maintain that target.
%%
%% For example, you might choose to maintain a 10% buffer for a fleet that
%% has the capacity to host 100 simultaneous game sessions. This policy tells
%% Amazon GameLift to take action whenever the fleet's available capacity
%% falls below or rises above 10 game sessions. Amazon GameLift will start
%% new instances or stop unused instances in order to return to the 10%
%% buffer.
%%
%% To create or update a target-based policy, specify a fleet ID and name,
%% and set the policy type to "TargetBased". Specify the metric to track
%% (PercentAvailableGameSessions) and reference a <a>TargetConfiguration</a>
%% object with your desired buffer value. Exclude all other parameters. On a
%% successful request, the policy name is returned. The scaling policy is
%% automatically in force as soon as it's successfully created. If the
%% fleet's auto-scaling actions are temporarily suspended, the new policy
%% will be in force once the fleet actions are restarted.
%%
%% <b>Rule-based policy</b>
%%
%% A rule-based policy tracks specified fleet metric, sets a threshold value,
%% and specifies the type of action to initiate when triggered. With a
%% rule-based policy, you can select from several available fleet metrics.
%% Each policy specifies whether to scale up or scale down (and by how much),
%% so you need one policy for each type of action.
%%
%% For example, a policy may make the following statement: "If the percentage
%% of idle instances is greater than 20% for more than 15 minutes, then
%% reduce the fleet capacity by 10%."
%%
%% A policy's rule statement has the following structure:
%%
%% If <code>[MetricName]</code> is <code>[ComparisonOperator]</code>
%% <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes,
%% then <code>[ScalingAdjustmentType]</code> to/by
%% <code>[ScalingAdjustment]</code>.
%%
%% To implement the example, the rule statement would look like this:
%%
%% If <code>[PercentIdleInstances]</code> is
%% <code>[GreaterThanThreshold]</code> <code>[20]</code> for
%% <code>[15]</code> minutes, then <code>[PercentChangeInCapacity]</code>
%% to/by <code>[10]</code>.
%%
%% To create or update a scaling policy, specify a unique combination of name
%% and fleet ID, and set the policy type to "RuleBased". Specify the
%% parameter values for a policy rule statement. On a successful request, the
%% policy name is returned. Scaling policies are automatically in force as
%% soon as they're successfully created. If the fleet's auto-scaling actions
%% are temporarily suspended, the new policy will be in force once the fleet
%% actions are restarted.
%%
%% Operations related to fleet capacity scaling include:
%%
%% <ul> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> Manage scaling policies:
%%
%% <ul> <li> <a>PutScalingPolicy</a> (auto-scaling)
%%
%% </li> <li> <a>DescribeScalingPolicies</a> (auto-scaling)
%%
%% </li> <li> <a>DeleteScalingPolicy</a> (auto-scaling)
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Retrieves a fresh set of credentials for use when uploading a new set
%% of game build files to Amazon GameLift's Amazon S3. This is done as part
%% of the build creation process; see <a>CreateBuild</a>.
%%
%% To request new credentials, specify the build ID as returned with an
%% initial <code>CreateBuild</code> request. If successful, a new set of
%% credentials are returned, along with the S3 storage location associated
%% with the build ID.
request_upload_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_upload_credentials(Client, Input, []).
request_upload_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestUploadCredentials">>, Input, Options).

%% @doc Retrieves the fleet ID that a specified alias is currently pointing
%% to.
%%
%% Alias-related operations include:
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
resolve_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_alias(Client, Input, []).
resolve_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveAlias">>, Input, Options).

%% @doc Retrieves all active game sessions that match a set of search
%% criteria and sorts them in a specified order. You can search or sort by
%% the following game session attributes:
%%
%% <ul> <li> <b>gameSessionId</b> -- Unique identifier for the game session.
%% You can use either a <code>GameSessionId</code> or
%% <code>GameSessionArn</code> value.
%%
%% </li> <li> <b>gameSessionName</b> -- Name assigned to a game session. This
%% value is set when requesting a new game session with
%% <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>. Game
%% session names do not need to be unique to a game session.
%%
%% </li> <li> <b>gameSessionProperties</b> -- Custom data defined in a game
%% session's <code>GameProperty</code> parameter. <code>GameProperty</code>
%% values are stored as key:value pairs; the filter expression must indicate
%% the key and a string to search the data values for. For example, to search
%% for game sessions with custom data containing the key:value pair
%% "gameMode:brawl", specify the following:
%% <code>gameSessionProperties.gameMode = "brawl"</code>. All custom data
%% values are searched as strings.
%%
%% </li> <li> <b>maximumSessions</b> -- Maximum number of player sessions
%% allowed for a game session. This value is set when requesting a new game
%% session with <a>CreateGameSession</a> or updating with
%% <a>UpdateGameSession</a>.
%%
%% </li> <li> <b>creationTimeMillis</b> -- Value indicating when a game
%% session was created. It is expressed in Unix time as milliseconds.
%%
%% </li> <li> <b>playerSessionCount</b> -- Number of players currently
%% connected to a game session. This value changes rapidly as players join
%% the session or drop out.
%%
%% </li> <li> <b>hasAvailablePlayerSessions</b> -- Boolean value indicating
%% whether a game session has reached its maximum number of players. It is
%% highly recommended that all search requests include this filter attribute
%% to optimize search performance and return only sessions that players can
%% join.
%%
%% </li> </ul> <note> Returned values for <code>playerSessionCount</code> and
%% <code>hasAvailablePlayerSessions</code> change quickly as players join
%% sessions and others drop out. Results should be considered a snapshot in
%% time. Be sure to refresh search results often, and handle sessions that
%% fill up before a player can join.
%%
%% </note> To search or sort, specify either a fleet ID or an alias ID, and
%% provide a search filter expression, a sort expression, or both. If
%% successful, a collection of <a>GameSession</a> objects matching the
%% request is returned. Use the pagination parameters to retrieve results as
%% a set of sequential pages.
%%
%% You can search for game sessions one fleet at a time only. To find game
%% sessions across multiple fleets, you must search each fleet separately and
%% combine the results. This search feature finds only game sessions that are
%% in <code>ACTIVE</code> status. To locate games in statuses other than
%% active, use <a>DescribeGameSessionDetails</a>.
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
search_game_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_game_sessions(Client, Input, []).
search_game_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchGameSessions">>, Input, Options).

%% @doc Resumes activity on a fleet that was suspended with
%% <a>StopFleetActions</a>. Currently, this operation is used to restart a
%% fleet's auto-scaling activity.
%%
%% To start fleet actions, specify the fleet ID and the type of actions to
%% restart. When auto-scaling fleet actions are restarted, Amazon GameLift
%% once again initiates scaling events as triggered by the fleet's scaling
%% policies. If actions on the fleet were never stopped, this operation will
%% have no effect. You can view a fleet's stopped actions using
%% <a>DescribeFleetAttributes</a>.
%%
%% Operations related to fleet capacity scaling include:
%%
%% <ul> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> Manage scaling policies:
%%
%% <ul> <li> <a>PutScalingPolicy</a> (auto-scaling)
%%
%% </li> <li> <a>DescribeScalingPolicies</a> (auto-scaling)
%%
%% </li> <li> <a>DeleteScalingPolicy</a> (auto-scaling)
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
start_fleet_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fleet_actions(Client, Input, []).
start_fleet_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFleetActions">>, Input, Options).

%% @doc Places a request for a new game session in a queue (see
%% <a>CreateGameSessionQueue</a>). When processing a placement request,
%% Amazon GameLift searches for available resources on the queue's
%% destinations, scanning each until it finds resources or the placement
%% request times out.
%%
%% A game session placement request can also request player sessions. When a
%% new game session is successfully created, Amazon GameLift creates a player
%% session for each player included in the request.
%%
%% When placing a game session, by default Amazon GameLift tries each fleet
%% in the order they are listed in the queue configuration. Ideally, a
%% queue's destinations are listed in preference order.
%%
%% Alternatively, when requesting a game session with players, you can also
%% provide latency data for each player in relevant regions. Latency data
%% indicates the performance lag a player experiences when connected to a
%% fleet in the region. Amazon GameLift uses latency data to reorder the list
%% of destinations to place the game session in a region with minimal lag. If
%% latency data is provided for multiple players, Amazon GameLift calculates
%% each region's average lag for all players and reorders to get the best
%% game play across all players.
%%
%% To place a new game session request, specify the following:
%%
%% <ul> <li> The queue name and a set of game session properties and settings
%%
%% </li> <li> A unique ID (such as a UUID) for the placement. You use this ID
%% to track the status of the placement request
%%
%% </li> <li> (Optional) A set of IDs and player data for each player you
%% want to join to the new game session
%%
%% </li> <li> Latency data for all players (if you want to optimize game play
%% for the players)
%%
%% </li> </ul> If successful, a new game session placement is created.
%%
%% To track the status of a placement request, call
%% <a>DescribeGameSessionPlacement</a> and check the request's status. If the
%% status is <code>FULFILLED</code>, a new game session has been created and
%% a game session ARN and region are referenced. If the placement request
%% times out, you can resubmit the request or retry it with a different
%% queue.
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
start_game_session_placement(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_game_session_placement(Client, Input, []).
start_game_session_placement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartGameSessionPlacement">>, Input, Options).

%% @doc Finds new players to fill open slots in an existing game session.
%% This operation can be used to add players to matched games that start with
%% fewer than the maximum number of players or to replace players when they
%% drop out. By backfilling with the same matchmaker used to create the
%% original match, you ensure that new players meet the match criteria and
%% maintain a consistent experience throughout the game session. You can
%% backfill a match anytime after a game session has been created.
%%
%% To request a match backfill, specify a unique ticket ID, the existing game
%% session's ARN, a matchmaking configuration, and a set of data that
%% describes all current players in the game session. If successful, a match
%% backfill ticket is created and returned with status set to QUEUED. The
%% ticket is placed in the matchmaker's ticket pool and processed. Track the
%% status of the ticket to respond as needed. For more detail how to set up
%% backfilling, see <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html">
%% Backfill Existing Games with FlexMatch</a>.
%%
%% The process of finding backfill matches is essentially identical to the
%% initial matchmaking process. The matchmaker searches the pool and groups
%% tickets together to form potential matches, allowing only one backfill
%% ticket per potential match. Once the a match is formed, the matchmaker
%% creates player sessions for the new players. All tickets in the match are
%% updated with the game session's connection information, and the
%% <a>GameSession</a> object is updated to include matchmaker data on the new
%% players. For more detail on how match backfill requests are processed, see
%% <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html">
%% How Amazon GameLift FlexMatch Works</a>.
%%
%% Matchmaking-related operations include:
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
start_match_backfill(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_match_backfill(Client, Input, []).
start_match_backfill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMatchBackfill">>, Input, Options).

%% @doc Uses FlexMatch to create a game match for a group of players based on
%% custom matchmaking rules, and starts a new game for the matched players.
%% Each matchmaking request specifies the type of match to build (team
%% configuration, rules for an acceptable match, etc.). The request also
%% specifies the players to find a match for and where to host the new game
%% session for optimal performance. A matchmaking request might start with a
%% single player or a group of players who want to play together. FlexMatch
%% finds additional players as needed to fill the match. Match type, rules,
%% and the queue used to place a new game session are defined in a
%% <code>MatchmakingConfiguration</code>. For complete information on setting
%% up and using FlexMatch, see the topic <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html">
%% Adding FlexMatch to Your Game</a>.
%%
%% To start matchmaking, provide a unique ticket ID, specify a matchmaking
%% configuration, and include the players to be matched. You must also
%% include a set of player attributes relevant for the matchmaking
%% configuration. If successful, a matchmaking ticket is returned with status
%% set to <code>QUEUED</code>. Track the status of the ticket to respond as
%% needed and acquire game session connection information for successfully
%% completed matches.
%%
%% <b>Tracking ticket status</b> -- A couple of options are available for
%% tracking the status of matchmaking requests:
%%
%% <ul> <li> Polling -- Call <code>DescribeMatchmaking</code>. This operation
%% returns the full ticket object, including current status and (for
%% completed tickets) game session connection info. We recommend polling no
%% more than once every 10 seconds.
%%
%% </li> <li> Notifications -- Get event notifications for changes in ticket
%% status using Amazon Simple Notification Service (SNS). Notifications are
%% easy to set up (see <a>CreateMatchmakingConfiguration</a>) and typically
%% deliver match status changes faster and more efficiently than polling. We
%% recommend that you use polling to back up to notifications (since delivery
%% is not guaranteed) and call <code>DescribeMatchmaking</code> only when
%% notifications are not received within 30 seconds.
%%
%% </li> </ul> <b>Processing a matchmaking request</b> -- FlexMatch handles a
%% matchmaking request as follows:
%%
%% <ol> <li> Your client code submits a <code>StartMatchmaking</code> request
%% for one or more players and tracks the status of the request ticket.
%%
%% </li> <li> FlexMatch uses this ticket and others in process to build an
%% acceptable match. When a potential match is identified, all tickets in the
%% proposed match are advanced to the next status.
%%
%% </li> <li> If the match requires player acceptance (set in the matchmaking
%% configuration), the tickets move into status
%% <code>REQUIRES_ACCEPTANCE</code>. This status triggers your client code to
%% solicit acceptance from all players in every ticket involved in the match,
%% and then call <a>AcceptMatch</a> for each player. If any player rejects or
%% fails to accept the match before a specified timeout, the proposed match
%% is dropped (see <code>AcceptMatch</code> for more details).
%%
%% </li> <li> Once a match is proposed and accepted, the matchmaking tickets
%% move into status <code>PLACING</code>. FlexMatch locates resources for a
%% new game session using the game session queue (set in the matchmaking
%% configuration) and creates the game session based on the match data.
%%
%% </li> <li> When the match is successfully placed, the matchmaking tickets
%% move into <code>COMPLETED</code> status. Connection information (including
%% game session endpoint and player session) is added to the matchmaking
%% tickets. Matched players can use the connection information to join the
%% game.
%%
%% </li> </ol> Matchmaking-related operations include:
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
start_matchmaking(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_matchmaking(Client, Input, []).
start_matchmaking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMatchmaking">>, Input, Options).

%% @doc Suspends activity on a fleet. Currently, this operation is used to
%% stop a fleet's auto-scaling activity. It is used to temporarily stop
%% scaling events triggered by the fleet's scaling policies. The policies can
%% be retained and auto-scaling activity can be restarted using
%% <a>StartFleetActions</a>. You can view a fleet's stopped actions using
%% <a>DescribeFleetAttributes</a>.
%%
%% To stop fleet actions, specify the fleet ID and the type of actions to
%% suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no
%% longer initiates scaling events except to maintain the fleet's desired
%% instances setting (<a>FleetCapacity</a>. Changes to the fleet's capacity
%% must be done manually using <a>UpdateFleetCapacity</a>.
stop_fleet_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_fleet_actions(Client, Input, []).
stop_fleet_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopFleetActions">>, Input, Options).

%% @doc Cancels a game session placement that is in <code>PENDING</code>
%% status. To stop a placement, provide the placement ID values. If
%% successful, the placement is moved to <code>CANCELLED</code> status.
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
stop_game_session_placement(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_game_session_placement(Client, Input, []).
stop_game_session_placement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopGameSessionPlacement">>, Input, Options).

%% @doc Cancels a matchmaking ticket that is currently being processed. To
%% stop the matchmaking operation, specify the ticket ID. If successful, work
%% on the ticket is stopped, and the ticket status is changed to
%% <code>CANCELLED</code>.
%%
%% Matchmaking-related operations include:
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
stop_matchmaking(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_matchmaking(Client, Input, []).
stop_matchmaking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopMatchmaking">>, Input, Options).

%% @doc Updates properties for an alias. To update properties, specify the
%% alias ID to be updated and provide the information to be changed. To
%% reassign an alias to another fleet, provide an updated routing strategy.
%% If successful, the updated alias record is returned.
%%
%% Alias-related operations include:
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
update_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_alias(Client, Input, []).
update_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAlias">>, Input, Options).

%% @doc Updates metadata in a build record, including the build name and
%% version. To update the metadata, specify the build ID to update and
%% provide the new values. If successful, a build object containing the
%% updated metadata is returned.
%%
%% Build-related operations include:
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
update_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_build(Client, Input, []).
update_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBuild">>, Input, Options).

%% @doc Updates fleet properties, including name and description, for a
%% fleet. To update metadata, specify the fleet ID and the property values
%% that you want to change. If successful, the fleet ID for the updated fleet
%% is returned.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
update_fleet_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_attributes(Client, Input, []).
update_fleet_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetAttributes">>, Input, Options).

%% @doc Updates capacity settings for a fleet. Use this action to specify the
%% number of EC2 instances (hosts) that you want this fleet to contain.
%% Before calling this action, you may want to call
%% <a>DescribeEC2InstanceLimits</a> to get the maximum capacity based on the
%% fleet's EC2 instance type.
%%
%% Specify minimum and maximum number of instances. Amazon GameLift will not
%% change fleet capacity to values fall outside of this range. This is
%% particularly important when using auto-scaling (see
%% <a>PutScalingPolicy</a>) to allow capacity to adjust based on player
%% demand while imposing limits on automatic adjustments.
%%
%% To update fleet capacity, specify the fleet ID and the number of instances
%% you want the fleet to host. If successful, Amazon GameLift starts or
%% terminates instances so that the fleet's active instance count matches the
%% desired instance count. You can view a fleet's current capacity
%% information by calling <a>DescribeFleetCapacity</a>. If the desired
%% instance count is higher than the instance type's limit, the "Limit
%% Exceeded" exception occurs.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
update_fleet_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_capacity(Client, Input, []).
update_fleet_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetCapacity">>, Input, Options).

%% @doc Updates port settings for a fleet. To update settings, specify the
%% fleet ID to be updated and list the permissions you want to update. List
%% the permissions you want to add in
%% <code>InboundPermissionAuthorizations</code>, and permissions you want to
%% remove in <code>InboundPermissionRevocations</code>. Permissions to be
%% removed must match existing fleet permissions. If successful, the fleet ID
%% for the updated fleet is returned.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
update_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_port_settings(Client, Input, []).
update_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetPortSettings">>, Input, Options).

%% @doc Updates game session properties. This includes the session name,
%% maximum player count, protection policy, which controls whether or not an
%% active game session can be terminated during a scale-down event, and the
%% player session creation policy, which controls whether or not new players
%% can join the session. To update a game session, specify the game session
%% ID and the values you want to change. If successful, an updated
%% <a>GameSession</a> object is returned.
%%
%% Game-session-related operations include:
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
update_game_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_session(Client, Input, []).
update_game_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameSession">>, Input, Options).

%% @doc Updates settings for a game session queue, which determines how new
%% game session requests in the queue are processed. To update settings,
%% specify the queue name to be updated and provide the new settings. When
%% updating destinations, provide a complete list of destinations.
%%
%% Queue-related operations include:
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
update_game_session_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_session_queue(Client, Input, []).
update_game_session_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameSessionQueue">>, Input, Options).

%% @doc Updates settings for a FlexMatch matchmaking configuration. To update
%% settings, specify the configuration name to be updated and provide the new
%% settings.
%%
%% Operations related to match configurations and rule sets include:
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> </ul>
update_matchmaking_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_matchmaking_configuration(Client, Input, []).
update_matchmaking_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMatchmakingConfiguration">>, Input, Options).

%% @doc Updates the current run-time configuration for the specified fleet,
%% which tells Amazon GameLift how to launch server processes on instances in
%% the fleet. You can update a fleet's run-time configuration at any time
%% after the fleet is created; it does not need to be in an
%% <code>ACTIVE</code> status.
%%
%% To update run-time configuration, specify the fleet ID and provide a
%% <code>RuntimeConfiguration</code> object with the updated collection of
%% server process configurations.
%%
%% Each instance in a Amazon GameLift fleet checks regularly for an updated
%% run-time configuration and changes how it launches server processes to
%% comply with the latest version. Existing server processes are not affected
%% by the update; they continue to run until they end, while Amazon GameLift
%% simply adds new server processes to fit the current run-time
%% configuration. As a result, the run-time configuration changes are applied
%% gradually as existing processes shut down and new processes are launched
%% in Amazon GameLift's normal process recycling activity.
%%
%% Fleet-related operations include:
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
update_runtime_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_runtime_configuration(Client, Input, []).
update_runtime_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuntimeConfiguration">>, Input, Options).

%% @doc Validates the syntax of a matchmaking rule or rule set. This
%% operation checks that the rule set uses syntactically correct JSON and
%% that it conforms to allowed property expressions. To validate syntax,
%% provide a rule set string.
%%
%% Operations related to match configurations and rule sets include:
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> </ul>
validate_matchmaking_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_matchmaking_rule_set(Client, Input, []).
validate_matchmaking_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidateMatchmakingRuleSet">>, Input, Options).

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
    Client1 = Client#{service => <<"gamelift">>},
    Host = get_host(<<"gamelift">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"GameLift.">>/binary, Action/binary>>}],
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
