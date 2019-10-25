#!/bin/bash
mkdir React
cd React
echo -e "CLONING..."
echo "Cloning reactjs repos from gitlab.eteration.com"
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-styling-less.git
git clone https://gitlab.eteration.com/academy/tutorials/react/webpack-demos.git
git clone https://gitlab.eteration.com/academy/tutorials/react/es6-demos.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-testing.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-intl.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-saga.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-redux.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-routing.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-state.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-props.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-components.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-styling.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-quickstart.git
git clone https://gitlab.eteration.com/academy/tutorials/react/reactjs-services.git  
git clone https://gitlab.eteration.com/academy/tutorials/react/minimal-react-webpack-babel-setup.git
echo "CLONING PROCESS DONE..............."

echo "NODE MODULES INSTALLING............"

echo "es6-demos node modules installing..."
cd es6-demos
cd setup
npm install
echo "es6-demos node modules installed"

cd ..
cd ..

echo "minimal-react-webpack-babel-setup node modules installing..."
cd minimal-react-webpack-babel-setup
npm install
echo "minimal-react-webpack-babel-setup node modules installed"

cd ..

echo "reactjs-components node modules installing"
cd reactjs-components
cd setup
npm install
echo "reactjs-components node modules installed"

cd ..
cd ..

echo "reactjs-intl node modules installing"
cd reactjs-intl
cd setup
npm install
echo "reactjs-intl node modules installed"

cd ..
cd ..

echo "reactjs-props node modules installing"
cd reactjs-props
cd setup
npm install
echo "reactjs-props node modules installed"

cd ..
cd ..

echo "reactjs-quickstart node modules installing"

echo "skipping reactjs-quickstart"


echo "reactjs-redux node modules installing"
cd reactjs-redux
cd setup
npm install
echo "reactjs-redux node modules installed"


cd ..
cd ..

echo "reactjs-routing node modules installing"
cd reactjs-routing
cd setup
npm install
echo "reactjs-routing node modules installed"

cd ..
cd ..

echo "reactjs-saga node modules installing"
cd reactjs-saga
cd setup
npm install
echo "reactjs-saga node modules installed"

cd ..
cd ..

echo "reactjs-state node modules installing"
cd reactjs-state
cd setup
npm install
echo "reactjs-state node modules installed"

cd ..
cd ..

echo "reactjs-styling node modules installing"
cd reactjs-styling
cd setup
npm install
echo "reactjs-styling node modules installed"

cd ..
cd ..

echo "reactjs-styling-less node modules installing"s
cd reactjs-styling-less
cd setup
npm install
echo "reactjs-styling-less node modules installed"

cd ..
cd ..

echo "reactjs-testing node modules installing"
cd reactjs-testing
cd setup
npm install
echo "reactjs-testing node modules installed"

cd ..
cd ..

echo "webpack-demos node modules installing"
cd webpack-demos
npm install
echo "webpack-demos node modules installed"

cd ..

echo "NODE MODULES INSTALLED..........."

cd ..


echo "------------CLONE -> DONE ! ------ "

