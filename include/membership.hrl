-record(group, {id = <<>>,
		bands = [],
		members = []}).

-record(bands, {id = <<>>,
		group = <<>>,
		owners = [],
		admins = [],
		members = [],
	        parent_id = <<>>}).

-record(users, {id = <<>>,
		bands = <<>>}).

-record(messages, {id = <<>>,
		   author = <<>>,
		   parent_id = <<>>}).
		   
