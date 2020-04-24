namespace vinibar;

entity Customers{
    key ID: UUID;
    name: String;
    environment_types: Association to many Customers2EnvironmentTypes on environment_types.customer = $self;
}

entity EnvironmentTypes {
    key ID: UUID;
    title: String;
    customers: Association to many Customers2EnvironmentTypes on customers.environment_type = $self;
}

entity Customers2EnvironmentTypes {
    key customer: Association to Customers;
    key environment_type: Association to EnvironmentTypes;
    environments: Association to many Environments on environments.customer2environment_type = $self;
}


entity Environments {
    key ID: UUID;
    title: String;
    customer2environment_type: Association to Customers2EnvironmentTypes;
    auths: Association to many Auths on auths.environment = $self;
}

entity Auths {
    key ID: UUID;
    username: String;
    password: String;
    environment: Association to Environments;
}