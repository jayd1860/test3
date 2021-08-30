function probe = clearProbeProjection(probe, iTbl)

if ~exist('iTbl','var') | isempty(iTbl)
    iTbl = [1:length(probe.handles.hProjectionTbl)];
end

if ishandles(probe.handles.hProjectionRays)
    delete(probe.handles.hProjectionRays);
    probe.handles.hProjectionRays = [];
end

for ii=iTbl
    if ishandle(probe.handles.hProjectionTbl(ii))
        if probe.handles.hProjection
