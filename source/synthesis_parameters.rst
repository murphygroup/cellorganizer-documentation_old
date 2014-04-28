Required Fields
+++++++++++++++

There are no required fields.

Default Fields
++++++++++++++

==============================================   ===========    ====================================    ==================
Field                                            Type           Allowed Values                          Default Value
==============================================   ===========    ====================================    ==================
``targetDirectory`                               string         any string                              ``'./'``
``prefix``                                       string         any string                              ``'demo'``
``numberOfSynthesizedImages``                    int            any int >= 1                            1
``compression``                                  string         ``('none','lzw','packbits')``           ``'none'``
``protein.cytonuclearflag``                      string         ``('cyto','nuc','all')``                ``'cyto'``
``verbose``                                      boolean        ``(True,False)``                        ``True``
``debug``                                        boolean        ``(True,False)``                        ``False``
``microscope``                                   string         ``('none','lzw')``                      ``'none'``
``synthesis``                                    string         ``('nuclear','framework','all')``       ``'all'``
``protein.cytonuclearflag``                      string         ``('cyto','nucleus','all')``            ``'all'``
``sampling.method``                              string         ``('disc','sampled')``                  ``'disc'``
``savePDF``                                      boolean        ``(True,False)``                        ``False``
``spherical_cell``                               boolean        ``(True,False)``                        ``False``
``synthesis.diffeomorhic.maximum_iterations``    int            any int                                 100
``randomwalk``                                   boolean        ``(True,False)``                        ``False``
``framefolder``                                  string         any string                              ``[]``
``walksteps``                                    int            any int                                 1
``overlapsubsize``                               double         any non-neg double                      0.3
``overlapthresh``                                double         any non-neg double                      2
``rendAtStd``                                	 double         any non-neg double                      2
===============================================  ===========    ====================================    ==================

Optional Fields
+++++++++++++++

==============================   ====================    ========================================   =========================
Field                            Type                    Allowed Values                             Default Value
==============================   ====================    ========================================   =========================
``sampling.method.density``      int                     any int                                    ``[]``
``resolution.cell``              1x3 double array        any 1x3 double array                       ``[]``
``resolution.objects``           1x3 double array        any 1x3 double array                       ``[]``
``instance.cell``                2D/3D binary image      binary valued image                        ``[]``
``instance.nucleus``             2D/3D binary image      binary valued image                        ``[]``
``tempdir``                      string                  any string                                 ``'./temp'``
``walk_type``                    string                  ('willmore','brownian','density')          True
``output.tifimages``             boolean                 ``(True,False)``                           []
``output.indexedimage``          boolean                 ``(True,False)``                           []
``output.SBML``                  boolean                 ``(True,False)``                           []
``output.blenderfile``           boolean                 ``(True,False)``                           []
``output.blender.downsample``    double                  any non-negative double                    []
==============================   ====================    ========================================   =========================
