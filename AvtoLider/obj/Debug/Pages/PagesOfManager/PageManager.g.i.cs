﻿#pragma checksum "..\..\..\..\Pages\PagesOfManager\PageManager.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "575C4FF879F8FDABF767CD5B687D6241BDAA665676112851DA7397CAF55E7ABF"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using AvtoLider.Pages.PagesOfManager;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace AvtoLider.Pages.PagesOfManager {
    
    
    /// <summary>
    /// PageManager
    /// </summary>
    public partial class PageAvto : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 26 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dGridCars;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnClients;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnToConfiguration;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnToPartsConf;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnExit;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnAdd;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnDelete;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/AvtoLider;component/pages/pagesofmanager/pagemanager.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.dGridCars = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 3:
            this.btnClients = ((System.Windows.Controls.Button)(target));
            
            #line 41 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            this.btnClients.MouseEnter += new System.Windows.Input.MouseEventHandler(this.btnClients_MouseEnter);
            
            #line default
            #line hidden
            
            #line 41 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            this.btnClients.Click += new System.Windows.RoutedEventHandler(this.btnToClients_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.btnToConfiguration = ((System.Windows.Controls.Button)(target));
            
            #line 42 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            this.btnToConfiguration.Click += new System.Windows.RoutedEventHandler(this.btnToConfiguration_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.btnToPartsConf = ((System.Windows.Controls.Button)(target));
            
            #line 43 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            this.btnToPartsConf.Click += new System.Windows.RoutedEventHandler(this.btnToPartsConf_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.btnExit = ((System.Windows.Controls.Button)(target));
            
            #line 44 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            this.btnExit.Click += new System.Windows.RoutedEventHandler(this.btnExit_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btnAdd = ((System.Windows.Controls.Button)(target));
            
            #line 45 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            this.btnAdd.Click += new System.Windows.RoutedEventHandler(this.btnAdd_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.btnDelete = ((System.Windows.Controls.Button)(target));
            
            #line 46 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            this.btnDelete.Click += new System.Windows.RoutedEventHandler(this.btnDelete_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 2:
            
            #line 35 "..\..\..\..\Pages\PagesOfManager\PageManager.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.btnEdit_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

