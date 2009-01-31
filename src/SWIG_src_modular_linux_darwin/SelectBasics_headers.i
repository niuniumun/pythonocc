/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<SelectBasics_BasicTool.hxx>
#include<SelectBasics_SequenceOfOwner.hxx>
#include<SelectBasics_ListOfSensitive.hxx>
#include<SelectBasics_ListIteratorOfListOfBox2d.hxx>
#include<SelectBasics_SensitiveEntity.hxx>
#include<SelectBasics_SortAlgo.hxx>
#include<SelectBasics_EntityOwner.hxx>
#include<SelectBasics_SequenceNodeOfSequenceOfOwner.hxx>
#include<SelectBasics_ListOfBox2d.hxx>
#include<SelectBasics_ListIteratorOfListOfSensitive.hxx>
#include<SelectBasics_ListNodeOfListOfSensitive.hxx>
#include<SelectBasics_SequenceNodeOfSequenceOfAddress.hxx>
#include<SelectBasics_ListNodeOfListOfBox2d.hxx>
#include<SelectBasics_SequenceOfAddress.hxx>
#include<SelectBasics.hxx>
#include<Handle_SelectBasics_SequenceNodeOfSequenceOfAddress.hxx>
#include<Handle_SelectBasics_SequenceNodeOfSequenceOfOwner.hxx>
#include<Handle_SelectBasics_ListNodeOfListOfBox2d.hxx>
#include<Handle_SelectBasics_ListNodeOfListOfSensitive.hxx>
#include<Handle_SelectBasics_EntityOwner.hxx>
#include<Handle_SelectBasics_SensitiveEntity.hxx>

// Additional headers necessary for compilation.

#include<SelectBasics_BasicTool.hxx>
#include<SelectBasics_SequenceOfOwner.hxx>
#include<SelectBasics_ListOfSensitive.hxx>
#include<SelectBasics_ListIteratorOfListOfBox2d.hxx>
#include<SelectBasics_SensitiveEntity.hxx>
#include<SelectBasics_SortAlgo.hxx>
#include<SelectBasics_EntityOwner.hxx>
#include<SelectBasics_SequenceNodeOfSequenceOfOwner.hxx>
#include<SelectBasics.hxx>
#include<SelectBasics_ListOfBox2d.hxx>
#include<SelectBasics_ListIteratorOfListOfSensitive.hxx>
#include<SelectBasics_ListNodeOfListOfSensitive.hxx>
#include<SelectBasics_SequenceNodeOfSequenceOfAddress.hxx>
#include<SelectBasics_ListNodeOfListOfBox2d.hxx>
#include<SelectBasics_SequenceOfAddress.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Bnd_Box2d.hxx>
#include<Handle_Bnd_HArray1OfBox2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<gp_Pnt2d.hxx>
#include<TopLoc_Location.hxx>
%}
