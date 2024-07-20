%% 
clear; clc; close all;

import com.comsol.model.*
import com.comsol.model.util.*

%% creating a new model with the tag "Model"
model = ModelUtil.create('Model');
mphlaunch(model); % launch COMSOL desktop

model.modelPath("C:\Users\Himanshu\OneDrive - iitkgp.ac.in\Mech\Semester-7\BTP-1\symComp")

%% adding a 2D component to the model
model.modelNode.create('comp1', true);
model.geom.create('geom1', 2);
model.geom('geom1').model('comp1');

%% Creating Parameters
%% Creating variables
model.variable.create("var1");
model.variable('var1').model('comp1');

readMatrixVarsFromTxtForCOMSOLandSet(model, "var1", "E.txt")

%% Creating Geometry

%% Setting up GFPDE module

%% Creating Mesh

%% setting up study


