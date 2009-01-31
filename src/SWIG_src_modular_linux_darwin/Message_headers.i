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

#include<Message_SequenceNodeOfSequenceOfPrinters.hxx>
#include<Message_ProgressIndicator.hxx>
#include<Message_SequenceOfPrinters.hxx>
#include<Message_ProgressScale.hxx>
#include<Message_PrinterOStream.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_ListNodeOfListOfMsg.hxx>
#include<Message_SequenceNodeOfSequenceOfProgressScale.hxx>
#include<Message_Messenger.hxx>
#include<Message_MsgFile.hxx>
#include<Message_ListIteratorOfListOfMsg.hxx>
#include<Message_Gravity.hxx>
#include<Message_ProgressSentry.hxx>
#include<Message_Status.hxx>
#include<Message_StatusType.hxx>
#include<Message_Msg.hxx>
#include<Message_SequenceOfProgressScale.hxx>
#include<Message_Printer.hxx>
#include<Message.hxx>
#include<Handle_Message_Algorithm.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_Message_PrinterOStream.hxx>
#include<Handle_Message_ListNodeOfListOfMsg.hxx>
#include<Handle_Message_ProgressIndicator.hxx>
#include<Handle_Message_SequenceNodeOfSequenceOfPrinters.hxx>
#include<Handle_Message_Printer.hxx>
#include<Handle_Message_SequenceNodeOfSequenceOfProgressScale.hxx>

// Additional headers necessary for compilation.

#include<Message_SequenceNodeOfSequenceOfPrinters.hxx>
#include<Message_ProgressIndicator.hxx>
#include<Message_SequenceOfPrinters.hxx>
#include<Message_ProgressScale.hxx>
#include<Message_PrinterOStream.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_ListNodeOfListOfMsg.hxx>
#include<Message_SequenceNodeOfSequenceOfProgressScale.hxx>
#include<Message_Messenger.hxx>
#include<Message_MsgFile.hxx>
#include<Message_ListIteratorOfListOfMsg.hxx>
#include<Message.hxx>
#include<Message_Gravity.hxx>
#include<Message_ProgressSentry.hxx>
#include<Message_Status.hxx>
#include<Message_StatusType.hxx>
#include<Message_Msg.hxx>
#include<Message_SequenceOfProgressScale.hxx>
#include<Message_Printer.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_Standard_Type.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
%}
