MODULE TESTOBJECT

  USE ModelDescription

  TYPE t_global
     CHARACTER(80) :: window_name
     CHARACTER(80) :: other_window_name
     CHARACTER(80) :: c_window_name
     INTEGER :: other_window_handle
     INTEGER :: c_window_handle
     TYPE(Model_t), POINTER :: MyModel
     DOUBLE PRECISION, POINTER :: NodeDisplacements(:), Coords(:)
     !Masoud: Registering global variables in the Elmer memory
     DOUBLE PRECISION, POINTER :: PreviousNodeDisplacements(:)
     LOGICAL, POINTER :: IsLoadFreeNode(:)
     !Masoud End
     DOUBLE PRECISION, POINTER :: NodeLoads(:), PreviousLoads(:,:)
     DOUBLE PRECISION, POINTER :: FacePressures(:), FaceLoads(:)
     DOUBLE PRECISION, POINTER :: NodePressures(:)
     INTEGER :: FSIbcId, nElem, nNodes, nConn, SolverId
     INTEGER, POINTER :: Conn(:), verbosity(:)!, NodeMap(:)
     CHARACTER(80) :: MeshType 
     INTEGER, POINTER :: MyToElmerNodes(:)
     INTEGER :: ElmerComm
     INTEGER :: nProc
     INTEGER :: procId
  END TYPE t_global

  CONTAINS
    SUBROUTINE ASSOCIATE_POINTER( attr, ptr)
      TYPE(t_global), POINTER :: attr, ptr
      ptr => attr
    END SUBROUTINE ASSOCIATE_POINTER

END MODULE TESTOBJECT
