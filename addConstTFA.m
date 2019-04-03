function [model]=addConstTFA(model,CName,vars,coeff,Ctype,rhs)

   [num_constr, num_vars]=size(model.A);

    model.constraintNames{num_constr+1,1} = CName;

    model.constraintType{num_constr+1,1} = Ctype;

    model.rhs(num_constr+1) = rhs;
    ConstPart = length(coeff);
    for i=1:ConstPart
    model.A(num_constr+1,find_cell(vars(i),model.varNames)) = coeff(i);
    end 