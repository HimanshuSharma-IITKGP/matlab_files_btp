%% 

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

modelPath = 
model.modelPath(modelPath);

model.baseSystem('none');

%%  Load Parametes from a file and set them
paramsFileName = 
setCOMSOLParams(model, paramsFileName);

%%  Create 2D component
model.modelNode.create('comp1', true); % second argument is a boolean

model.geom.create('geom1', 2);
model.geom('geom1').model('comp1');
%% Create Geometry

%% Set All COMSOL Variables
fileNamesList1 = 


setCOMSOLVars(model, "vars1", fileNamesList1);
setCOMSOLVars(model, "vars2", fileNamesList2);
setCOMSOLVars(model, "vars3", fileNamesList3);

%%  Physics


%% Mesh

%% Study

%% Results


