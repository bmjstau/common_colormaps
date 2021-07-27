function [rgb] = wesAnderson(N, which)
% wesAnderson returns N colors taken from Wes Anderson's films, which
% can be used as color maps for hipster line plots. Colors have been 
% adapted from https://github.com/karthik/wesanderson, who has them from 
% http://wesandersonpalettes.tumblr.com/.
% 
% Inputs:
% INT N         Number of colors. Is limited by color palette.
% CHAR which    Name of color palette. See 
%               https://github.com/karthik/wesanderson for previews.
%
% Example:
% rgb = wesAnderson(5, 'FantasticFox1');

switch which
    case 'BottleRocket1'
        all = {'A42820', '5F5647', '9B110E', '3F5151', '4E2A1E', '550307', '0C1707'};
    case 'BottleRocket2' 
        all = {'FAD510', 'CB2314', '273046', '354823', '1E1E1E'};
    case 'Rushmore1'
        all = {'E1BD6D', 'EABE94', '0B775E', '35274A' ,'F2300F'};
    case 'Rushmore'
        all = {'E1BD6D', 'EABE94', '0B775E', '35274A' ,'F2300F'};
    case 'Royal1'
        all = {'899DA4', 'C93312', 'FAEFD1', 'DC863B'};
    case 'Royal2'
        all = {'9A8822', 'F5CDB4', 'F8AFA8', 'FDDDA0', '74A089'};
    case 'Zissou1'
        all = {'3B9AB2', '78B7C5', 'EBCC2A', 'E1AF00', 'F21A00'};
    case 'Darjeeling1'
        all = {'FF0000', '00A08A', 'F2AD00', 'F98400', '5BBCD6'};
    case 'Darjeeling2'
        all = {'ECCBAE', '046C9A', 'D69C4E', 'ABDDDE', '000000'};
    case 'Chevalier1'
        all = {'446455', 'FDD262', 'D3DDDC', 'C7B19C'};
    case 'FantasticFox1'
        all = {'DD8D29', 'E2D200', '46ACC8', 'E58601', 'B40F20'};
    case 'FantasticFox2'
        all = {'E8C95D', 'D16B54', 'A9D8C8', '433447', 'B9B09F'};
    case 'Moonrise1'
        all = {'F3DF6C', 'CEAB07', 'D5D5D3', '24281A'};
    case 'Moonrise2'
        all = {'798E87', 'C27D38', 'CCC591', '29211F'};
    case 'Moonrise3'
        all = {'85D4E3', 'F4B5BD', '9C964A', 'CDC08C', 'FAD77B'};
    case 'Cavalcanti1'
        all = {'D8B70A', '02401B', 'A2A475', '81A88D', '972D15'};
    case 'GrandBudapest1'
        all = {'F1BB7B', 'FD6467', '5B1A18', 'D67236'};
    case 'GrandBudapest2'
        all = {'E6A0C4', 'C6CDF7', 'D8A499', '7294D4'};
    case 'IsleofDogs1' 
        all = {'9986A5', '79402E', 'CCBA72', '0F0D0E', 'D9D0D3', '8D8680'};
    case 'IsleofDogs2'
        all = {'EAD3BF', 'AA9486', 'B6854D', '39312F', '1C1718'};
    otherwise
        error('I haven''t seen that one yet.')
end

% Transfer to RGB
all = reshape(sscanf(cell2mat(all).','%2x'), 3, []).'/255;

% Prepare output
assert(N <= size(all,1), ...
    sprintf('This palette only has %i colors.', size(all,1)))
rgb = all(1:N, :);

end
