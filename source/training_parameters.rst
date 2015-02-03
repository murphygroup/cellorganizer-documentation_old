Required Fields
+++++++++++++++

============================    ============================    ============================    ============================
Field                           Type                            Allowed Values                  Default Value
============================    ============================    ============================    ============================
``model.filename``              string                          ``[ <filename> '.mat' ]``       N/A
``model.resolution``            1x3 double array                any double                      N/A
============================    ============================    ============================    ============================

Default Fields
++++++++++++++

============================   ==================    ======================================   =========================
Field                          Type                  Allowed Values                           Default Value
============================   ==================    ======================================   =========================
``model.downsampling``         1x3 double array      any double                               ``[5,5,1]``
``nucleus.type``               string                ``('medial axis', 'diffeomorphioc')``    ``'medial axis'``
``cell.type``                  string                ``('ratio','diffeomorphic')``            ``'ratio'``
<<<<<<< HEAD
``protein.type``               string                ``('vesicle')`` +[#]                     ``'vesicle'``
=======
``protein.type``               string                ``('vesicle')``                          ``'vesicle'``
>>>>>>> master
``protein.cytonuclearflag``    string                ``('cyto','nuc','all')``                 ``'cyto'``
``verbose``                    boolean               ``(True,False)``                         ``True``
``debug``                      boolean               ``(True,False)``                         ``False``
``model.proteinUpsampleZ``     double                any double                               ``[]``
``masks``                      string                any string                               ``[]``
``display``                    boolean               ``(True,False)``                         ``False``
``train.flag``                 string                ``('all','nuclear','framework')``        ``'all'``
``preprocessing``			   boolean				 ``(True,False)``						  ``True``
``model.diffeomorphic.use_distance_matrix_completion``	boolean	``(True,False)``	``True``
``model.diffeomorphic.minimum_relative_semidiameter``	double	any positive double	``1/4``
``model.diffeomorphic.maximum_relative_semidiameter``	double	any positive double	``2/3``
``model.diffeomorphic.generate_cycle``	boolean	``(True,False)``	``true``
``model.diffeomorphic.useCurrentResults``	boolean	``(True,False)``	``false``
``model.diffeomorphic.tempdir``	string	any string	[param.tempparent filesep 'diffeomorphic']
``model.diffeomorphic.downsample``	1x1 or 1x3 double array	any double	max(param.model.resolution)./param.model.resolution
``model.diffeomorphic.com_align``	boolean	``(True,False)``	``True``
``model.diffeomorphic.number_windows``	integer	any positive integer less than the largest image dimension	largest dimension of the smallest image
============================   ==================    ======================================   =========================

Optional Fields
+++++++++++++++

==============================   ====================    ========================================   =========================
Field                            Type                    Allowed Values                             Default Value
==============================   ====================    ========================================   =========================
``model.name``                   string                  any string                                 ``[]``
``model.id``                     string                  any string                                 ``[]``
``nucleus.name``                 string                  any string                                 ``[]``
``nucleus.id``                   string                  any string                                 ``[]``
``cell.name``                    string                  any string                                 ``[]``
``cell.id``                      string                  any string                                 ``[]``
``cell.model``                   string                  any string                                 ``[]``
``protein.name``                 string                  any string                                 ``[]``
``protein.id``                   string                  any string                                 ``[]``
``protein.class``                string                  any string                                 ``[]``
``documentation.author``         string                  any string                                 ``[]``
``documentation.email``          string                  any string                                 ``[]``
``documentation.description``    string                  any string                                 ``[]``
==============================   ====================    ========================================   =========================
