function startup()
% startup()
%---------------------------------------------------------
% Deep Conditional Random Field
% Copyright(c) 2016, Chen Huang & Wen Longyin
% Licensed under the MIT License [see LICENSE for details]
%---------------------------------------------------------

    curdir = fileparts(mfilename('fullpath'));
    addpath(genpath(fullfile(curdir, 'detect')));
    addpath(genpath(fullfile(curdir, 'eval')));
    addpath(genpath(fullfile(curdir, 'io')));
    addpath(genpath(fullfile(curdir, 'track')));
    addpath(genpath(fullfile(curdir, 'utils')));
    addpath(genpath(fullfile(curdir, 'vis')));

    mkdir_if_missing(fullfile(curdir, 'datasets'));
    mkdir_if_missing(fullfile(curdir, 'external'));

    caffe_path = fullfile(curdir, 'external', 'caffe', 'matlab');
    if exist(caffe_path, 'dir') == 0
        error('matcaffe is missing from external/caffe/matlab; see README.md');
    end
    addpath(genpath(caffe_path));

    mkdir_if_missing(fullfile(curdir, 'cache'));

    mkdir_if_missing(fullfile(curdir, 'models'));

    mkdir_if_missing(fullfile(curdir, 'output'));

    fprintf('deep CRF startup done\n');
end
