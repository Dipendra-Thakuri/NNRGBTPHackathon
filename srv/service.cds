using { selectelectronics.store as ss } from '../db/schema';

service selectelectronicsDB {
    entity BusinessPartner as projection on ss.BusinessPartner;
    entity Stores as projection on ss.Stores;
}

annotate selectelectronicsDB.BusinessPartner with @odata.draft.enabled;
annotate selectelectronicsDB.Stores with @odata.draft.enabled;