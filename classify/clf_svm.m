% Wrapper for svm that makes svm compatible with nfoldxval.
%
% Requires the SVM toolbox by Anton Schwaighofer.
%
% USAGE
%  net = clf_svm(varargin)
%
% INPUTS
%  see svm in SVM toolbox by Anton Schwaighofer.
%
% OUTPUTS
%  see svm in SVM toolbox by Anton Schwaighofer.
%
% EXAMPLE
%
% See also SVM, NFOLDXVAL

% Piotr's Image&Video Toolbox      Version 1.03   PPD
% Written and maintained by Piotr Dollar    pdollar-at-cs.ucsd.edu 
% Please email me if you find bugs, or have suggestions or questions! 
 
function net = clf_svm(varargin)

net = svm( varargin{:} );
net.fun_train = @svmtrain;
net.fun_fwd = @svmfwd;
