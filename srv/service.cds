using { selectelectronics.store as ss } from '../db/schema';

service selectelectronicsDB {
    entity BusinessPartner as projection on ss.BusinessPartner;
}