﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.ServiceManagement.Common.Models;
using Microsoft.WindowsAzure.Commands.ScenarioTest;
using Xunit;
using Xunit.Abstractions;

namespace Microsoft.Azure.Commands.Resources.Test.ScenarioTests
{
    public class DeploymentTests
    {
        public XunitTracingInterceptor _logger;

        public DeploymentTests(Xunit.Abstractions.ITestOutputHelper output)
        {
            _logger = new XunitTracingInterceptor(output);
            XunitTracingInterceptor.AddToContext(_logger);
        }

        [Fact(Skip = "Need to implement storage client mock.")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestValidateDeployment()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-ValidateDeployment");
        }

        [Fact(Skip = "Need service team to re-record test after changes to the ClientRuntime.")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        [Trait("Re-record", "ClientRuntime changes")]
        public void TestNewDeploymentFromTemplateFile()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NewDeploymentFromTemplateFile");
        }

        [Fact(Skip = "Need service team to re-record test after changes to the ClientRuntime.")]
        [Trait("Re-record", "ClientRuntime changes")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestNestedDeploymentFromTemplateFile()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NestedDeploymentFromTemplateFile");
        }

        [Fact(Skip = "Need service team to re-record test after changes to the ClientRuntime.")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        [Trait("Re-record", "ClientRuntime changes")]
        public void TestCrossResourceGroupDeploymentFromTemplateFile()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-CrossResourceGroupDeploymentFromTemplateFile");
        }

        [Fact(Skip = "Need service team to re-record test after changes to the ClientRuntime.")]
        [Trait("Re-record", "ClientRuntime changes")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestSaveDeploymentTemplateFile()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-SaveDeploymentTemplateFile");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestNestedErrorsDisplayed()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NestedErrorsDisplayed");
        }

        [Fact(Skip = "Fix acquisition of TenantId in KeyVault Test.")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestNewDeploymentWithKeyVaultReference()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NewDeploymentWithKeyVaultReference");
        }

        [Fact(Skip = "Need service team to re-record test after changes to the ClientRuntime.")]
        [Trait("Re-record", "ClientRuntime changes")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestNewDeploymentWithComplexPramaters()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NewDeploymentWithComplexPramaters");
        }

        [Fact(Skip = "Need service team to re-record test after changes to the ClientRuntime.")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        [Trait("Re-record", "ClientRuntime changes")]
        public void TestNewDeploymentWithParameterObject()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NewDeploymentWithParameterObject");
        }

        [Fact(Skip = "Need service team to re-record test after changes to the ClientRuntime.")]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        [Trait("Re-record", "ClientRuntime changes")]
        public void TestNewDeploymentWithDynamicParameters()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NewDeploymentWithDynamicParameters");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestNewDeploymentWithInvalidParameters()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NewDeploymentWithInvalidParameters");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void TestNewDeploymentWithKeyVaultReferenceInParameterObject()
        {
            ResourcesController.NewInstance.RunPsTest(_logger, "Test-NewDeploymentWithKeyVaultReferenceInParameterObject");
        }
    }
}
