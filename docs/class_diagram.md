``m̀ermaid

classDiagram
  class Commerce
  Commerce : -Long rowId
  Commerce : -String documentType
  Commerce : -String documentId
  Commerce : -String tradeName
  Commerce : -String legalName
  Commerce : -User legalContact
  Commerce : -User storeManager
  Commerce : -Address legalAddress
  Commerce : -String email
  Commerce : -String phone
  Commerce : -List<Store> stores
  Commerce : -User adminCreator
  Commerce : -Date dateCreated
  Commerce : -Date dateUpdated
  Commerce : -Boolean isActive

  class Store
  Store : -Long rowId

  
  
  




```
