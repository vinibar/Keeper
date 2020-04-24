using { vinibar } from '../db/Schema';

service Keeper {
    entity Customers as projection on vinibar.Customers;
    entity EnvironmentTypes as projection on vinibar.EnvironmentTypes;
    entity Customers2EnvironmentTypes as projection on vinibar.Customers2EnvironmentTypes;
    entity Environments as projection on vinibar.Environments;
    entity Auths as projection on vinibar.Auths;
}
