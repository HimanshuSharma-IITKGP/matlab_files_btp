clear; clc; close all;

import com.comsol.model.*
import com.comsol.model.util.*


model = ModelUtil.create('Model');
mphlaunch(model); % launch COMSOL desktop

model.modelPath("C:\Users\Himanshu\OneDrive - iitkgp.ac.in\Mech\Semester-7\BTP-1\symComp")

model.modelNode.create('comp1', true);
model.geom.create('geom1', 2);
model.geom('geom1').model('comp1');

%%
model.variable.remove("var1");
model.variable('var1').model('comp1');

readMatrixVarFromTxtForCOMSOLandSet(model, "var1", "E.txt")

