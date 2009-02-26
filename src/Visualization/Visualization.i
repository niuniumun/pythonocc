/*
##Copyright 2008 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
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
%module Visualization;

%{
#include <Visualization.h>
%}

class Display3d {
 public:
	%feature("autodoc", "1");
	Display3d();
	%feature("autodoc", "1");
	~Display3d();
	%feature("autodoc", "1");
	void Init(const int handle);
	%feature("autodoc", "1");
	Handle_V3d_View& GetView();
	%feature("autodoc", "1");
	Handle_V3d_Viewer& GetViewer();
	%feature("autodoc", "1");
	Handle_AIS_InteractiveContext GetContext();
	%feature("autodoc", "1");
	void Test();
};

class NISDisplay3d {
 public:
	%feature("autodoc", "1");
	NISDisplay3d();
	%feature("autodoc", "1");
	~NISDisplay3d();
	%feature("autodoc", "1");
	void Init(const int handle);
	%feature("autodoc", "1");
	Handle_NIS_View& GetView();
	%feature("autodoc", "1");
	Handle_V3d_Viewer& GetViewer();
	%feature("autodoc", "1");
	Handle_NIS_InteractiveContext GetContext();
	%feature("autodoc", "1");
	void Test();
};

class Display2d {
 public:
	%feature("autodoc", "1");
	Display2d();
	%feature("autodoc", "1");
	~Display2d();
	%feature("autodoc", "1");
	void Init(const int handle);
	%feature("autodoc", "1");
	Handle_V2d_View& GetView();
	%feature("autodoc", "1");
	Handle_V2d_Viewer& GetViewer();
	%feature("autodoc", "1");
	Handle_AIS2D_InteractiveContext GetContext();
	%feature("autodoc", "1");
	void Test();
};
