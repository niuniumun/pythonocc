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
%module BndLib

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include BndLib_dependencies.i


%include BndLib_headers.i




%nodefaultctor BndLib_AddSurface;
class BndLib_AddSurface {
	public:
		%feature("autodoc", "1");
		~BndLib_AddSurface();
		%feature("autodoc", "1");
		BndLib_AddSurface();
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Surface &S, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);

};

%nodefaultctor BndLib_Add3dCurve;
class BndLib_Add3dCurve {
	public:
		%feature("autodoc", "1");
		~BndLib_Add3dCurve();
		%feature("autodoc", "1");
		BndLib_Add3dCurve();
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, Bnd_Box & B);

};

%nodefaultctor BndLib;
class BndLib {
	public:
		%feature("autodoc", "1");
		~BndLib();
		%feature("autodoc", "1");
		BndLib();
		%feature("autodoc", "1");
		void Add(const gp_Lin &L, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Lin2d &L, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips2d &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Parab &P, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Parab2d &P, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Hypr &H, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Hypr2d &H, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Cylinder &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cylinder &S, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cone &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cone &S, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Sphere &S, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Sphere &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Torus &P, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Torus &P, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);

};

%nodefaultctor BndLib_Add2dCurve;
class BndLib_Add2dCurve {
	public:
		%feature("autodoc", "1");
		~BndLib_Add2dCurve();
		%feature("autodoc", "1");
		BndLib_Add2dCurve();
		%feature("autodoc", "1");
		void Add(const Adaptor2d_Curve2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, Bnd_Box2d & B);

};