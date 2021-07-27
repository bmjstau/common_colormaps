function cmap = set_colormap(type, pivot)
%SET_COLORMAP Wrapper for setting colormaps - change color map here to
%ensure consistent color map over the whole analysis pipeline.

if ~exist('pivot', 'var') || isempty(pivot)
    pivot = 0;
end

switch type
    case 'div'
        cmocean('balance', 'pivot', pivot);
    case '-div'
        cmocean('-balance', 'pivot', pivot);
    case 'seq'
        %crameri('-lajolla');
        %cmocean('thermal');
        colormap(inferno);
    case 'seq_zeroWhite'
        cMap = inferno;
        cMap(1,:) = [1 1 1];
        colormap(cMap);
    case {'seq_down', '-seq'}
        %crameri('davos');
        %cmocean('-deep');
        colormap(flipud(inferno));
    case 'seq_isolum'
        colormap(plasma);
    case '-seq_isolum'
        colormap(flipud(plasma));
    case 'lines'
        crameri('batlow', 5)
    otherwise
        error('Invalid color map type')
end

end

