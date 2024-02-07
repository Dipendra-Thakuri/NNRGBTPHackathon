using { selectelectronics.store as ss } from '../db/schema';

service selectelectronicsDB {
    entity BusinessPartner as projection on ss.BusinessPartner;
    entity Stores as projection on ss.Stores;
    entity Products as projection on ss.Products;
    entity Items as projection on ss.Products;
    entity PurchaseApp as projection on ss.Items;
    entity StoreData as projection on ss.StoreData
}

annotate selectelectronicsDB.BusinessPartner with @odata.draft.enabled;
annotate selectelectronicsDB.Stores with @odata.draft.enabled;
annotate selectelectronicsDB.Products with @odata.draft.enabled;