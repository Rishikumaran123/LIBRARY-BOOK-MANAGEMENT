@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_BOOK_T_039039'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_BOOK_T_039039
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_BOOK_T_039039
  association [1..1] to ZZCIR_CIT_BOOK_T_039039 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  Title,
  Author,
  Category,
  PublishedYear,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
