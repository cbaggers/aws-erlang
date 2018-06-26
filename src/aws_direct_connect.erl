%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc AWS Direct Connect links your internal network to an AWS Direct
%% Connect location over a standard 1 gigabit or 10 gigabit Ethernet
%% fiber-optic cable. One end of the cable is connected to your router, the
%% other to an AWS Direct Connect router. With this connection in place, you
%% can create virtual interfaces directly to the AWS cloud (for example, to
%% Amazon Elastic Compute Cloud (Amazon EC2) and Amazon Simple Storage
%% Service (Amazon S3)) and to Amazon Virtual Private Cloud (Amazon VPC),
%% bypassing Internet service providers in your network path. An AWS Direct
%% Connect location provides access to AWS in the region it is associated
%% with, as well as access to other US regions. For example, you can
%% provision a single connection to any AWS Direct Connect location in the US
%% and use it to access public AWS services in all US Regions and AWS
%% GovCloud (US).
-module(aws_direct_connect).

-export([allocate_connection_on_interconnect/2,
         allocate_connection_on_interconnect/3,
         allocate_hosted_connection/2,
         allocate_hosted_connection/3,
         allocate_private_virtual_interface/2,
         allocate_private_virtual_interface/3,
         allocate_public_virtual_interface/2,
         allocate_public_virtual_interface/3,
         associate_connection_with_lag/2,
         associate_connection_with_lag/3,
         associate_hosted_connection/2,
         associate_hosted_connection/3,
         associate_virtual_interface/2,
         associate_virtual_interface/3,
         confirm_connection/2,
         confirm_connection/3,
         confirm_private_virtual_interface/2,
         confirm_private_virtual_interface/3,
         confirm_public_virtual_interface/2,
         confirm_public_virtual_interface/3,
         create_bgp_peer/2,
         create_bgp_peer/3,
         create_connection/2,
         create_connection/3,
         create_direct_connect_gateway/2,
         create_direct_connect_gateway/3,
         create_direct_connect_gateway_association/2,
         create_direct_connect_gateway_association/3,
         create_interconnect/2,
         create_interconnect/3,
         create_lag/2,
         create_lag/3,
         create_private_virtual_interface/2,
         create_private_virtual_interface/3,
         create_public_virtual_interface/2,
         create_public_virtual_interface/3,
         delete_bgp_peer/2,
         delete_bgp_peer/3,
         delete_connection/2,
         delete_connection/3,
         delete_direct_connect_gateway/2,
         delete_direct_connect_gateway/3,
         delete_direct_connect_gateway_association/2,
         delete_direct_connect_gateway_association/3,
         delete_interconnect/2,
         delete_interconnect/3,
         delete_lag/2,
         delete_lag/3,
         delete_virtual_interface/2,
         delete_virtual_interface/3,
         describe_connection_loa/2,
         describe_connection_loa/3,
         describe_connections/2,
         describe_connections/3,
         describe_connections_on_interconnect/2,
         describe_connections_on_interconnect/3,
         describe_direct_connect_gateway_associations/2,
         describe_direct_connect_gateway_associations/3,
         describe_direct_connect_gateway_attachments/2,
         describe_direct_connect_gateway_attachments/3,
         describe_direct_connect_gateways/2,
         describe_direct_connect_gateways/3,
         describe_hosted_connections/2,
         describe_hosted_connections/3,
         describe_interconnect_loa/2,
         describe_interconnect_loa/3,
         describe_interconnects/2,
         describe_interconnects/3,
         describe_lags/2,
         describe_lags/3,
         describe_loa/2,
         describe_loa/3,
         describe_locations/2,
         describe_locations/3,
         describe_tags/2,
         describe_tags/3,
         describe_virtual_gateways/2,
         describe_virtual_gateways/3,
         describe_virtual_interfaces/2,
         describe_virtual_interfaces/3,
         disassociate_connection_from_lag/2,
         disassociate_connection_from_lag/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_lag/2,
         update_lag/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deprecated in favor of <a>AllocateHostedConnection</a>.
%%
%% Creates a hosted connection on an interconnect.
%%
%% Allocates a VLAN number and a specified amount of bandwidth for use by a
%% hosted connection on the given interconnect.
%%
%% <note> This is intended for use by AWS Direct Connect partners only.
%%
%% </note>
allocate_connection_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_connection_on_interconnect(Client, Input, []).
allocate_connection_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateConnectionOnInterconnect">>, Input, Options).

%% @doc Creates a hosted connection on an interconnect or a link aggregation
%% group (LAG).
%%
%% Allocates a VLAN number and a specified amount of bandwidth for use by a
%% hosted connection on the given interconnect or LAG.
%%
%% <note> This is intended for use by AWS Direct Connect partners only.
%%
%% </note>
allocate_hosted_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_hosted_connection(Client, Input, []).
allocate_hosted_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateHostedConnection">>, Input, Options).

%% @doc Provisions a private virtual interface to be owned by another AWS
%% customer.
%%
%% Virtual interfaces created using this action must be confirmed by the
%% virtual interface owner by using the <a>ConfirmPrivateVirtualInterface</a>
%% action. Until then, the virtual interface will be in 'Confirming' state,
%% and will not be available for handling traffic.
allocate_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_private_virtual_interface(Client, Input, []).
allocate_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocatePrivateVirtualInterface">>, Input, Options).

%% @doc Provisions a public virtual interface to be owned by a different
%% customer.
%%
%% The owner of a connection calls this function to provision a public
%% virtual interface which will be owned by another AWS customer.
%%
%% Virtual interfaces created using this function must be confirmed by the
%% virtual interface owner by calling ConfirmPublicVirtualInterface. Until
%% this step has been completed, the virtual interface will be in
%% 'Confirming' state, and will not be available for handling traffic.
%%
%% When creating an IPv6 public virtual interface (addressFamily is 'ipv6'),
%% the customer and amazon address fields should be left blank to use
%% auto-assigned IPv6 space. Custom IPv6 Addresses are currently not
%% supported.
allocate_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_public_virtual_interface(Client, Input, []).
allocate_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocatePublicVirtualInterface">>, Input, Options).

%% @doc Associates an existing connection with a link aggregation group
%% (LAG). The connection is interrupted and re-established as a member of the
%% LAG (connectivity to AWS will be interrupted). The connection must be
%% hosted on the same AWS Direct Connect endpoint as the LAG, and its
%% bandwidth must match the bandwidth for the LAG. You can reassociate a
%% connection that's currently associated with a different LAG; however, if
%% removing the connection will cause the original LAG to fall below its
%% setting for minimum number of operational connections, the request fails.
%%
%% Any virtual interfaces that are directly associated with the connection
%% are automatically re-associated with the LAG. If the connection was
%% originally associated with a different LAG, the virtual interfaces remain
%% associated with the original LAG.
%%
%% For interconnects, any hosted connections are automatically re-associated
%% with the LAG. If the interconnect was originally associated with a
%% different LAG, the hosted connections remain associated with the original
%% LAG.
associate_connection_with_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_connection_with_lag(Client, Input, []).
associate_connection_with_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConnectionWithLag">>, Input, Options).

%% @doc Associates a hosted connection and its virtual interfaces with a link
%% aggregation group (LAG) or interconnect. If the target interconnect or LAG
%% has an existing hosted connection with a conflicting VLAN number or IP
%% address, the operation fails. This action temporarily interrupts the
%% hosted connection's connectivity to AWS as it is being migrated.
%%
%% <note> This is intended for use by AWS Direct Connect partners only.
%%
%% </note>
associate_hosted_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_hosted_connection(Client, Input, []).
associate_hosted_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateHostedConnection">>, Input, Options).

%% @doc Associates a virtual interface with a specified link aggregation
%% group (LAG) or connection. Connectivity to AWS is temporarily interrupted
%% as the virtual interface is being migrated. If the target connection or
%% LAG has an associated virtual interface with a conflicting VLAN number or
%% a conflicting IP address, the operation fails.
%%
%% Virtual interfaces associated with a hosted connection cannot be
%% associated with a LAG; hosted connections must be migrated along with
%% their virtual interfaces using <a>AssociateHostedConnection</a>.
%%
%% In order to reassociate a virtual interface to a new connection or LAG,
%% the requester must own either the virtual interface itself or the
%% connection to which the virtual interface is currently associated.
%% Additionally, the requester must own the connection or LAG to which the
%% virtual interface will be newly associated.
associate_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_virtual_interface(Client, Input, []).
associate_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateVirtualInterface">>, Input, Options).

%% @doc Confirm the creation of a hosted connection on an interconnect.
%%
%% Upon creation, the hosted connection is initially in the 'Ordering' state,
%% and will remain in this state until the owner calls ConfirmConnection to
%% confirm creation of the hosted connection.
confirm_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_connection(Client, Input, []).
confirm_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmConnection">>, Input, Options).

%% @doc Accept ownership of a private virtual interface created by another
%% customer.
%%
%% After the virtual interface owner calls this function, the virtual
%% interface will be created and attached to the given virtual private
%% gateway or direct connect gateway, and will be available for handling
%% traffic.
confirm_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_private_virtual_interface(Client, Input, []).
confirm_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPrivateVirtualInterface">>, Input, Options).

%% @doc Accept ownership of a public virtual interface created by another
%% customer.
%%
%% After the virtual interface owner calls this function, the specified
%% virtual interface will be created and made available for handling traffic.
confirm_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_public_virtual_interface(Client, Input, []).
confirm_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmPublicVirtualInterface">>, Input, Options).

%% @doc Creates a new BGP peer on a specified virtual interface. The BGP peer
%% cannot be in the same address family (IPv4/IPv6) of an existing BGP peer
%% on the virtual interface.
%%
%% You must create a BGP peer for the corresponding address family in order
%% to access AWS resources that also use that address family.
%%
%% When creating a IPv6 BGP peer, the Amazon address and customer address
%% fields must be left blank. IPv6 addresses are automatically assigned from
%% Amazon's pool of IPv6 addresses; you cannot specify custom IPv6 addresses.
%%
%% For a public virtual interface, the Autonomous System Number (ASN) must be
%% private or already whitelisted for the virtual interface.
create_bgp_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_bgp_peer(Client, Input, []).
create_bgp_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBGPPeer">>, Input, Options).

%% @doc Creates a new connection between the customer network and a specific
%% AWS Direct Connect location.
%%
%% A connection links your internal network to an AWS Direct Connect location
%% over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One
%% end of the cable is connected to your router, the other to an AWS Direct
%% Connect router. An AWS Direct Connect location provides access to Amazon
%% Web Services in the region it is associated with. You can establish
%% connections with AWS Direct Connect locations in multiple regions, but a
%% connection in one region does not provide connectivity to other regions.
%%
%% To find the locations for your region, use <a>DescribeLocations</a>.
%%
%% You can automatically add the new connection to a link aggregation group
%% (LAG) by specifying a LAG ID in the request. This ensures that the new
%% connection is allocated on the same AWS Direct Connect endpoint that hosts
%% the specified LAG. If there are no available ports on the endpoint, the
%% request fails and no connection will be created.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a new direct connect gateway. A direct connect gateway is an
%% intermediate object that enables you to connect a set of virtual
%% interfaces and virtual private gateways. direct connect gateways are
%% global and visible in any AWS region after they are created. The virtual
%% interfaces and virtual private gateways that are connected through a
%% direct connect gateway can be in different regions. This enables you to
%% connect to a VPC in any region, regardless of the region in which the
%% virtual interfaces are located, and pass traffic between them.
create_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway(Client, Input, []).
create_direct_connect_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGateway">>, Input, Options).

%% @doc Creates an association between a direct connect gateway and a virtual
%% private gateway (VGW). The VGW must be attached to a VPC and must not be
%% associated with another direct connect gateway.
create_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_direct_connect_gateway_association(Client, Input, []).
create_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Creates a new interconnect between a AWS Direct Connect partner's
%% network and a specific AWS Direct Connect location.
%%
%% An interconnect is a connection which is capable of hosting other
%% connections. The AWS Direct Connect partner can use an interconnect to
%% provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do
%% not have their own connections. Like a standard connection, an
%% interconnect links the AWS Direct Connect partner's network to an AWS
%% Direct Connect location over a standard 1 Gbps or 10 Gbps Ethernet
%% fiber-optic cable. One end is connected to the partner's router, the other
%% to an AWS Direct Connect router.
%%
%% You can automatically add the new interconnect to a link aggregation group
%% (LAG) by specifying a LAG ID in the request. This ensures that the new
%% interconnect is allocated on the same AWS Direct Connect endpoint that
%% hosts the specified LAG. If there are no available ports on the endpoint,
%% the request fails and no interconnect will be created.
%%
%% For each end customer, the AWS Direct Connect partner provisions a
%% connection on their interconnect by calling
%% AllocateConnectionOnInterconnect. The end customer can then connect to AWS
%% resources by creating a virtual interface on their connection, using the
%% VLAN assigned to them by the AWS Direct Connect partner.
%%
%% <note> This is intended for use by AWS Direct Connect partners only.
%%
%% </note>
create_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_interconnect(Client, Input, []).
create_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInterconnect">>, Input, Options).

%% @doc Creates a new link aggregation group (LAG) with the specified number
%% of bundled physical connections between the customer network and a
%% specific AWS Direct Connect location. A LAG is a logical interface that
%% uses the Link Aggregation Control Protocol (LACP) to aggregate multiple 1
%% gigabit or 10 gigabit interfaces, allowing you to treat them as a single
%% interface.
%%
%% All connections in a LAG must use the same bandwidth (for example, 10
%% Gbps), and must terminate at the same AWS Direct Connect endpoint.
%%
%% You can have up to 10 connections per LAG. Regardless of this limit, if
%% you request more connections for the LAG than AWS Direct Connect can
%% allocate on a single endpoint, no LAG is created.
%%
%% You can specify an existing physical connection or interconnect to include
%% in the LAG (which counts towards the total number of connections). Doing
%% so interrupts the current physical connection or hosted connections, and
%% re-establishes them as a member of the LAG. The LAG will be created on the
%% same AWS Direct Connect endpoint to which the connection terminates. Any
%% virtual interfaces associated with the connection are automatically
%% disassociated and re-associated with the LAG. The connection ID does not
%% change.
%%
%% If the AWS account used to create a LAG is a registered AWS Direct Connect
%% partner, the LAG is automatically enabled to host sub-connections. For a
%% LAG owned by a partner, any associated virtual interfaces cannot be
%% directly configured.
create_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_lag(Client, Input, []).
create_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLag">>, Input, Options).

%% @doc Creates a new private virtual interface. A virtual interface is the
%% VLAN that transports AWS Direct Connect traffic. A private virtual
%% interface supports sending traffic to a single virtual private cloud
%% (VPC).
create_private_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_private_virtual_interface(Client, Input, []).
create_private_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePrivateVirtualInterface">>, Input, Options).

%% @doc Creates a new public virtual interface. A virtual interface is the
%% VLAN that transports AWS Direct Connect traffic. A public virtual
%% interface supports sending traffic to public services of AWS such as
%% Amazon Simple Storage Service (Amazon S3).
%%
%% When creating an IPv6 public virtual interface (addressFamily is 'ipv6'),
%% the customer and amazon address fields should be left blank to use
%% auto-assigned IPv6 space. Custom IPv6 Addresses are currently not
%% supported.
create_public_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_public_virtual_interface(Client, Input, []).
create_public_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePublicVirtualInterface">>, Input, Options).

%% @doc Deletes a BGP peer on the specified virtual interface that matches
%% the specified customer address and ASN. You cannot delete the last BGP
%% peer from a virtual interface.
delete_bgp_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_bgp_peer(Client, Input, []).
delete_bgp_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBGPPeer">>, Input, Options).

%% @doc Deletes the connection.
%%
%% Deleting a connection only stops the AWS Direct Connect port hour and data
%% transfer charges. You need to cancel separately with the providers any
%% services or charges for cross-connects or network circuits that connect
%% you to the AWS Direct Connect location.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Deletes a direct connect gateway. You must first delete all virtual
%% interfaces that are attached to the direct connect gateway and
%% disassociate all virtual private gateways that are associated with the
%% direct connect gateway.
delete_direct_connect_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway(Client, Input, []).
delete_direct_connect_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectConnectGateway">>, Input, Options).

%% @doc Deletes the association between a direct connect gateway and a
%% virtual private gateway.
delete_direct_connect_gateway_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_direct_connect_gateway_association(Client, Input, []).
delete_direct_connect_gateway_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectConnectGatewayAssociation">>, Input, Options).

%% @doc Deletes the specified interconnect.
%%
%% <note> This is intended for use by AWS Direct Connect partners only.
%%
%% </note>
delete_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_interconnect(Client, Input, []).
delete_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInterconnect">>, Input, Options).

%% @doc Deletes a link aggregation group (LAG). You cannot delete a LAG if it
%% has active virtual interfaces or hosted connections.
delete_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_lag(Client, Input, []).
delete_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLag">>, Input, Options).

%% @doc Deletes a virtual interface.
delete_virtual_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_virtual_interface(Client, Input, []).
delete_virtual_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVirtualInterface">>, Input, Options).

%% @doc Deprecated in favor of <a>DescribeLoa</a>.
%%
%% Returns the LOA-CFA for a Connection.
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that your APN partner or service provider uses when
%% establishing your cross connect to AWS at the colocation facility. For
%% more information, see <a
%% href="http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting
%% Cross Connects at AWS Direct Connect Locations</a> in the AWS Direct
%% Connect user guide.
describe_connection_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection_loa(Client, Input, []).
describe_connection_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionLoa">>, Input, Options).

%% @doc Displays all connections in this region.
%%
%% If a connection ID is provided, the call returns only that particular
%% connection.
describe_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections(Client, Input, []).
describe_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnections">>, Input, Options).

%% @doc Deprecated in favor of <a>DescribeHostedConnections</a>.
%%
%% Returns a list of connections that have been provisioned on the given
%% interconnect.
%%
%% <note> This is intended for use by AWS Direct Connect partners only.
%%
%% </note>
describe_connections_on_interconnect(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections_on_interconnect(Client, Input, []).
describe_connections_on_interconnect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnectionsOnInterconnect">>, Input, Options).

%% @doc Returns a list of all direct connect gateway and virtual private
%% gateway (VGW) associations. Either a direct connect gateway ID or a VGW ID
%% must be provided in the request. If a direct connect gateway ID is
%% provided, the response returns all VGWs associated with the direct connect
%% gateway. If a VGW ID is provided, the response returns all direct connect
%% gateways associated with the VGW. If both are provided, the response only
%% returns the association that matches both the direct connect gateway and
%% the VGW.
describe_direct_connect_gateway_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_associations(Client, Input, []).
describe_direct_connect_gateway_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAssociations">>, Input, Options).

%% @doc Returns a list of all direct connect gateway and virtual interface
%% (VIF) attachments. Either a direct connect gateway ID or a VIF ID must be
%% provided in the request. If a direct connect gateway ID is provided, the
%% response returns all VIFs attached to the direct connect gateway. If a VIF
%% ID is provided, the response returns all direct connect gateways attached
%% to the VIF. If both are provided, the response only returns the attachment
%% that matches both the direct connect gateway and the VIF.
describe_direct_connect_gateway_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateway_attachments(Client, Input, []).
describe_direct_connect_gateway_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGatewayAttachments">>, Input, Options).

%% @doc Returns a list of direct connect gateways in your account. Deleted
%% direct connect gateways are not returned. You can provide a direct connect
%% gateway ID in the request to return information about the specific direct
%% connect gateway only. Otherwise, if a direct connect gateway ID is not
%% provided, information about all of your direct connect gateways is
%% returned.
describe_direct_connect_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_direct_connect_gateways(Client, Input, []).
describe_direct_connect_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectConnectGateways">>, Input, Options).

%% @doc Returns a list of hosted connections that have been provisioned on
%% the given interconnect or link aggregation group (LAG).
%%
%% <note> This is intended for use by AWS Direct Connect partners only.
%%
%% </note>
describe_hosted_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hosted_connections(Client, Input, []).
describe_hosted_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHostedConnections">>, Input, Options).

%% @doc Deprecated in favor of <a>DescribeLoa</a>.
%%
%% Returns the LOA-CFA for an Interconnect.
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that is used when establishing your cross connect to AWS at the
%% colocation facility. For more information, see <a
%% href="http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting
%% Cross Connects at AWS Direct Connect Locations</a> in the AWS Direct
%% Connect user guide.
describe_interconnect_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_interconnect_loa(Client, Input, []).
describe_interconnect_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInterconnectLoa">>, Input, Options).

%% @doc Returns a list of interconnects owned by the AWS account.
%%
%% If an interconnect ID is provided, it will only return this particular
%% interconnect.
describe_interconnects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_interconnects(Client, Input, []).
describe_interconnects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInterconnects">>, Input, Options).

%% @doc Describes the link aggregation groups (LAGs) in your account.
%%
%% If a LAG ID is provided, only information about the specified LAG is
%% returned.
describe_lags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lags(Client, Input, []).
describe_lags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLags">>, Input, Options).

%% @doc Returns the LOA-CFA for a connection, interconnect, or link
%% aggregation group (LAG).
%%
%% The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is
%% a document that is used when establishing your cross connect to AWS at the
%% colocation facility. For more information, see <a
%% href="http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting
%% Cross Connects at AWS Direct Connect Locations</a> in the AWS Direct
%% Connect user guide.
describe_loa(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_loa(Client, Input, []).
describe_loa(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoa">>, Input, Options).

%% @doc Returns the list of AWS Direct Connect locations in the current AWS
%% region. These are the locations that may be selected when calling
%% <a>CreateConnection</a> or <a>CreateInterconnect</a>.
describe_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_locations(Client, Input, []).
describe_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocations">>, Input, Options).

%% @doc Describes the tags associated with the specified Direct Connect
%% resources.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Returns a list of virtual private gateways owned by the AWS account.
%%
%% You can create one or more AWS Direct Connect private virtual interfaces
%% linking to a virtual private gateway. A virtual private gateway can be
%% managed via Amazon Virtual Private Cloud (VPC) console or the <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">EC2
%% CreateVpnGateway</a> action.
describe_virtual_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_gateways(Client, Input, []).
describe_virtual_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualGateways">>, Input, Options).

%% @doc Displays all virtual interfaces for an AWS account. Virtual
%% interfaces deleted fewer than 15 minutes before you make the request are
%% also returned. If you specify a connection ID, only the virtual interfaces
%% associated with the connection are returned. If you specify a virtual
%% interface ID, then only a single virtual interface is returned.
%%
%% A virtual interface (VLAN) transmits the traffic between the AWS Direct
%% Connect location and the customer.
describe_virtual_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_virtual_interfaces(Client, Input, []).
describe_virtual_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVirtualInterfaces">>, Input, Options).

%% @doc Disassociates a connection from a link aggregation group (LAG). The
%% connection is interrupted and re-established as a standalone connection
%% (the connection is not deleted; to delete the connection, use the
%% <a>DeleteConnection</a> request). If the LAG has associated virtual
%% interfaces or hosted connections, they remain associated with the LAG. A
%% disassociated connection owned by an AWS Direct Connect partner is
%% automatically converted to an interconnect.
%%
%% If disassociating the connection will cause the LAG to fall below its
%% setting for minimum number of operational connections, the request fails,
%% except when it's the last member of the LAG. If all connections are
%% disassociated, the LAG continues to exist as an empty LAG with no physical
%% connections.
disassociate_connection_from_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_connection_from_lag(Client, Input, []).
disassociate_connection_from_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConnectionFromLag">>, Input, Options).

%% @doc Adds the specified tags to the specified Direct Connect resource.
%% Each Direct Connect resource can have a maximum of 50 tags.
%%
%% Each tag consists of a key and an optional value. If a tag with the same
%% key is already associated with the Direct Connect resource, this action
%% updates its value.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from the specified Direct Connect resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the attributes of a link aggregation group (LAG).
%%
%% You can update the following attributes:
%%
%% <ul> <li> The name of the LAG.
%%
%% </li> <li> The value for the minimum number of connections that must be
%% operational for the LAG itself to be operational.
%%
%% </li> </ul> When you create a LAG, the default value for the minimum
%% number of operational connections is zero (0). If you update this value,
%% and the number of operational connections falls below the specified value,
%% the LAG will automatically go down to avoid overutilization of the
%% remaining connections. Adjusting this value should be done with care as it
%% could force the LAG down if the value is set higher than the current
%% number of operational connections.
update_lag(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_lag(Client, Input, []).
update_lag(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLag">>, Input, Options).

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
    Client1 = Client#{service => <<"directconnect">>},
    Host = get_host(<<"directconnect">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"OvertureService.">>/binary, Action/binary>>}],
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
