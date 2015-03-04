classdef FunctionalData < nirs.Data
    %DATA Object to hold nirs data
    
    properties
        stimulus = nirs.HashTable();        % struct containing stim vectors (vectors, names, types)
        demographics = nirs.HashTable(); 	% table containing demographics (names, values)
    end

    methods
        %% Constructor
        function obj = FunctionalData( data, time, probe, Fm, stimulus, demographics )%, description )
            if nargin > 0, obj.data         = data;         end
            if nargin > 1, obj.time         = time;         end
            if nargin > 2, obj.probe        = probe;        end
            if nargin > 3, obj.Fm           = Fm;           end
            if nargin > 4, obj.stimulus     = stimulus;     end
            if nargin > 5, obj.demographics = demographics; end
        end
        
        %% Set/Get
        function obj = set.stimulus( obj, stim )
           assert( isa(stim,'nirs.HashTable') )
           obj.stimulus = stim;
        end
        
        function obj = set.demographics( obj, demo )
           assert( isa(demo,'nirs.HashTable') )
           obj.demographics = demo;
        end
    end
end
