classdef Example_app < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure            matlab.ui.Figure
        SixButton           matlab.ui.control.Button
        FourButton          matlab.ui.control.Button
        ThreeButton         matlab.ui.control.Button
        TwoButton           matlab.ui.control.Button
        OneButton           matlab.ui.control.Button
        EditEditField       matlab.ui.control.EditField
        EditEditFieldLabel  matlab.ui.control.Label
    end

    
    properties (Access = private)
        s % Description
        c = 100;
    end
    properties (Access = public)
        ps % Description
    end
    properties (Access = private, Constant)
        cc = 100;
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: OneButton
        function OneButtonPushed(app, event)
            tic
            for i=1:200
                if(app.EditEditField.Value == 20)

                elseif(app.EditEditField.Value ==10)
                end
            end
            toc
            tic
            for i=1:200
                s = app.EditEditField.Value;
                if(s == 20)

                elseif(s ==10)
                end
            end
            toc
            tic
            for i=1:200
                app.s = app.EditEditField.Value;
                if(app.s == 20)

                elseif(app.s ==10)
                end
            end
            toc
            tic
            for i=1:200
                app.ps = app.EditEditField.Value;
                if(app.ps == 20)

                elseif(app.ps ==10)
                end
            end
            toc
          
        end

        % Button pushed function: TwoButton
        function TwoButtonPushed(app, event)
            s = [];
            tic
            for i=1:200
                s(i) = i;
            end
            toc
            s = zeros(200);
            tic
            for i=1:200
                s(i) = i;
            end
            toc
        end

        % Button pushed function: ThreeButton
        function ThreeButtonPushed(app, event)
            s = zeros(200);
            tic
            for i=1:200
                s(i) = i;
            end
            toc
            app.s = zeros(200);
            tic
            for i=1:200
                app.s(i) = i;
            end
            toc
        end

        % Button pushed function: FourButton
        function FourButtonPushed(app, event)
            tic
            for i=1:2000
                app.s = app.cc;
            end
            toc
            
            tic
            for i=1:2000
                app.s = app.c;
            end
            toc
            tic
            for i=1:2000
                app.s = app.cc;
            end
            toc
          
        end

        % Button pushed function: SixButton
        function SixButtonPushed(app, event)
            s = [];
            tic;
            for i=1:1000000
                if(isempty(s))
                end
            end
            toc;
            
            tic;
            for i=1:1000000
                if(s)
                end
            end
            toc;
            tic;
            for i=1:1000000
                if(isempty(s))
                end
            end
            toc;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create EditEditFieldLabel
            app.EditEditFieldLabel = uilabel(app.UIFigure);
            app.EditEditFieldLabel.HorizontalAlignment = 'right';
            app.EditEditFieldLabel.Position = [57 431 26 22];
            app.EditEditFieldLabel.Text = 'Edit';

            % Create EditEditField
            app.EditEditField = uieditfield(app.UIFigure, 'text');
            app.EditEditField.Position = [98 431 100 22];
            app.EditEditField.Value = '13';

            % Create OneButton
            app.OneButton = uibutton(app.UIFigure, 'push');
            app.OneButton.ButtonPushedFcn = createCallbackFcn(app, @OneButtonPushed, true);
            app.OneButton.Position = [287 431 100 22];
            app.OneButton.Text = 'One';

            % Create TwoButton
            app.TwoButton = uibutton(app.UIFigure, 'push');
            app.TwoButton.ButtonPushedFcn = createCallbackFcn(app, @TwoButtonPushed, true);
            app.TwoButton.Position = [287 385 100 22];
            app.TwoButton.Text = 'Two';

            % Create ThreeButton
            app.ThreeButton = uibutton(app.UIFigure, 'push');
            app.ThreeButton.ButtonPushedFcn = createCallbackFcn(app, @ThreeButtonPushed, true);
            app.ThreeButton.Position = [287 334 100 22];
            app.ThreeButton.Text = 'Three';

            % Create FourButton
            app.FourButton = uibutton(app.UIFigure, 'push');
            app.FourButton.ButtonPushedFcn = createCallbackFcn(app, @FourButtonPushed, true);
            app.FourButton.Position = [287 286 100 22];
            app.FourButton.Text = 'Four';

            % Create SixButton
            app.SixButton = uibutton(app.UIFigure, 'push');
            app.SixButton.ButtonPushedFcn = createCallbackFcn(app, @SixButtonPushed, true);
            app.SixButton.Position = [287 238 100 22];
            app.SixButton.Text = 'Six';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Example_app

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
