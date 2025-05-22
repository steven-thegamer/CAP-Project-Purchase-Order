using {com.win.po as po} from '../db/index';

@path: 'browser'
service BrowserPOService {
  @readonly
  entity Orders      as projection on po.Orders excluding {
    modifiedAt,
    modifiedBy,
    createdAt,
    createdBy
    };
}
