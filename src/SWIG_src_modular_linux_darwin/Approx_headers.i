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

#include<Approx_MyLeastSquareOfFitAndDivide2d.hxx>
#include<Approx_ParametrizationType.hxx>
#include<Approx_FitAndDivide2d.hxx>
#include<Approx_CurvlinFunc.hxx>
#include<Approx_SequenceOfArray1OfPnt2d.hxx>
#include<Approx_SequenceNodeOfSequenceOfArray1OfPnt2d.hxx>
#include<Approx_Curve2d.hxx>
#include<Approx_Array1OfGTrsf2d.hxx>
#include<Approx_HArray1OfGTrsf2d.hxx>
#include<Approx_Curve3d.hxx>
#include<Approx_MyLeastSquareOfFitAndDivide.hxx>
#include<Approx_HArray1OfAdHSurface.hxx>
#include<Approx_SameParameter.hxx>
#include<Approx_Array1OfAdHSurface.hxx>
#include<Approx_MCurvesToBSpCurve.hxx>
#include<Approx_CurveOnSurface.hxx>
#include<Approx_SequenceNodeOfSequenceOfHArray1OfReal.hxx>
#include<Approx_CurvilinearParameter.hxx>
#include<Approx_FitAndDivide.hxx>
#include<Approx_SequenceOfHArray1OfReal.hxx>
#include<Approx_SweepFunction.hxx>
#include<Approx_SweepApproximation.hxx>
#include<Approx_Status.hxx>
#include<Handle_Approx_SweepFunction.hxx>
#include<Handle_Approx_SequenceNodeOfSequenceOfArray1OfPnt2d.hxx>
#include<Handle_Approx_HArray1OfAdHSurface.hxx>
#include<Handle_Approx_HArray1OfGTrsf2d.hxx>
#include<Handle_Approx_CurvlinFunc.hxx>
#include<Handle_Approx_SequenceNodeOfSequenceOfHArray1OfReal.hxx>

// Additional headers necessary for compilation.

#include<Approx_MyLeastSquareOfFitAndDivide2d.hxx>
#include<Approx_ParametrizationType.hxx>
#include<Approx_FitAndDivide2d.hxx>
#include<Approx_CurvlinFunc.hxx>
#include<Approx_SequenceOfArray1OfPnt2d.hxx>
#include<Approx_SequenceNodeOfSequenceOfArray1OfPnt2d.hxx>
#include<Approx_Curve2d.hxx>
#include<Approx_Array1OfGTrsf2d.hxx>
#include<Approx_HArray1OfGTrsf2d.hxx>
#include<Approx_Curve3d.hxx>
#include<Approx_MyLeastSquareOfFitAndDivide.hxx>
#include<Approx_HArray1OfAdHSurface.hxx>
#include<Approx_SameParameter.hxx>
#include<ApproxInt_SvSurfaces.hxx>
#include<Approx_Array1OfAdHSurface.hxx>
#include<Approx_MCurvesToBSpCurve.hxx>
#include<Approx_CurveOnSurface.hxx>
#include<Approx_SequenceNodeOfSequenceOfHArray1OfReal.hxx>
#include<Approx_CurvilinearParameter.hxx>
#include<Approx_FitAndDivide.hxx>
#include<Approx_SequenceOfHArray1OfReal.hxx>
#include<Approx_SweepFunction.hxx>
#include<Approx_SweepApproximation.hxx>
#include<Approx_Status.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_TColgp_HArray1OfPnt2d.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<AppParCurves_SequenceOfMultiCurve.hxx>
#include<gp_GTrsf2d.hxx>
#include<AppCont_Function.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<AppCont_Function2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Adaptor3d_Curve.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<gp_Pnt.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColStd_Array2OfReal.hxx>
%}
