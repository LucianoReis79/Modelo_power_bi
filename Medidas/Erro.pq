Feedback Type:
Frown (Error)

Timestamp:
2026-06-03T13:02:06.4648324Z

Local Time:
2026-06-03T10:02:06.4648324-03:00

Session ID:
76c65e17-e78d-4bc9-ab40-abbf8943a785

Release:
November 2025

Product Version:
2.149.1252.0 (25.11)+f8814957f64d1b6cd97c6569b42976bdf41b2074 (x64)

Error Message:
O relacionamento '0fc15175-0f6d-3eb2-561e-8ea3f73ebff6' aponta para a coluna excluída 'Interessado-SEI' na tabela 'Ressarcimento'.


Stack Trace:
Microsoft.PowerBI.Modeler.ModelingASOperationException
   em Microsoft.PowerBI.Modeler.TomExceptionExtensions.ThrowAsModelingASException(Exception ex)
   em Microsoft.PowerBI.Modeler.TomExtensions.ExecuteTomOperation(Action action)
   em Microsoft.PowerBI.Modeler.ModelManager.InternalTransaction.<>c__DisplayClass21_0.<SaveChanges>b__0()
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.ModelingTelemetryService.<>c__DisplayClass10_0`1.<RunInActivity>b__0()
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.ModelingTelemetryService.RunInActivity(ModelingActivityKind activity, Action action)
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.ModelingTelemetryService.RunInActivity[T](ModelingActivityKind activity, Func`1 action)
   em Microsoft.PowerBI.Modeler.ModelManager.InternalTransaction.SaveChanges(String description)
   em Microsoft.PowerBI.Modeler.ModelEditor.RenameMeasure(Measure measure, String name)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.SchemaChangeApplier.<>c__DisplayClass8_0.<Visit>b__1(Measure measure)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.SchemaChangeApplier.PerformOperationOnTableItem(Table table, String tableItemName, Nullable`1 objectType, Action`1 columnAction, Action`1 measureAction, Action`1 hierarchyAction, Action`1 calculationItemAction, Action`1 calendarAction)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.SchemaChangeApplier.Visit(RenameTableItemSchemaChange schemaChange)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.SchemaChangeApplier.Apply(IModelEditor modelEditor, IEnumerable`1 changes, IRefreshPolicyUpdater refreshPolicyUpdater)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.ModelAuthoringTransaction.<>c__DisplayClass26_0.<ExecuteChange>b__0(IEnumerable`1 changes)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.ModelAuthoringTransaction.ExecuteChange(ModelChange modelChange, Boolean isTrustedSource, Boolean validateChange, ISchemaChangeApplierFactory schemaChangeApplierFactory, IRefreshPolicyUpdater refreshPolicyUpdater, String descriptionToTrace)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.ExtendedModelChangeScope.ExecuteChange(ModelChange modelChange, Boolean isTrustedSource, Boolean validateChange, String descriptionToTrace)
   em Microsoft.PowerBI.Modeling.Engine.ModelingEngine.<>c__DisplayClass15_0.<RouteModelChangeAsync>b__0(IExtendedModelChangeScope scope)
   em Microsoft.PowerBI.Modeling.Engine.ModelingEngine.<>c__DisplayClass15_0.<RouteModelChangeAsync>b__1(IExtendedModelChangeScope scope)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.<>c__DisplayClass10_0.<<RunExtendedModelChangeAsync>b__0>d.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.<>c__DisplayClass10_0.<<RunExtendedModelChangeAsync>b__0>d.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.<ContinueWithAsyncOperation>d__13.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Modeling.Engine.ModelingEngine.<RouteModelChangeAsync>d__15.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.DesktopModelingHost.<>c__DisplayClass38_0.<<RouteToLocalModel>b__0>d.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Client.Windows.Report.<>c__DisplayClass79_0.<<SynchronizeLooselyWithQueriesAsync>b__0>d.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Client.Windows.Report.<SynchronizeLooselyWithQueriesAsync>d__78`1.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.DesktopModelingHost.<RouteToLocalModel>d__38.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Client.Windows.Modeling.ModelAuthoringRoutingService.<>c__DisplayClass17_0.<<RouteToLocalModel>b__0>d.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Client.Windows.Modeling.ModelAuthoringRoutingService.<RouteToLocalModel>d__17.MoveNext()
--- Fim do rastreamento de pilha do local anterior onde a exceção foi gerada ---
   em System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   em System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   em Microsoft.PowerBI.Client.Windows.ModelAuthoringHostService.<ExecuteAndShowFrownOnException>d__26`1.MoveNext()

Stack Trace Message:
O relacionamento '0fc15175-0f6d-3eb2-561e-8ea3f73ebff6' aponta para a coluna excluída 'Interessado-SEI' na tabela 'Ressarcimento'.


Invocation Stack Trace:
   em Microsoft.Mashup.Host.Document.ExceptionExtensions.GetCurrentInvocationStackTrace()
   em Microsoft.Mashup.Client.UI.Shared.StackTraceInfo..ctor(String exceptionStackTrace, String invocationStackTrace, String exceptionMessage)
   em Microsoft.PowerBI.Client.Windows.Telemetry.PowerBIUserFeedbackServices.GetStackTraceInfo(Exception e)
   em Microsoft.PowerBI.Client.Windows.Telemetry.PowerBIUserFeedbackServices.ReportException(IWindowHandle activeWindow, IUIHost uiHost, FeedbackPackageInfo feedbackPackageInfo, Exception e, Boolean useGDICapture)
   em Microsoft.Mashup.Client.UI.Shared.UnexpectedExceptionHandler.<>c__DisplayClass14_0.<HandleException>b__0()
   em Microsoft.Mashup.Client.UI.Shared.UnexpectedExceptionHandler.HandleException(Exception e)
   em Microsoft.PowerBI.Client.PowerBIUnexpectedExceptionHandler.HandleException(Exception e)
   em Microsoft.PowerBI.Client.Windows.ModelAuthoringHostService.<ExecuteAndShowFrownOnException>d__26`1.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.ModelAuthoringRoutingService.<RouteToLocalModel>d__17.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.ModelAuthoringRoutingService.<>c__DisplayClass17_0.<<RouteToLocalModel>b__0>d.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.DesktopModelingHost.<RouteToLocalModel>d__38.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Report.<SynchronizeLooselyWithQueriesAsync>d__78`1.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Report.<>c__DisplayClass79_0.<<SynchronizeLooselyWithQueriesAsync>b__0>d.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.DesktopModelingHost.<>c__DisplayClass38_0.<<RouteToLocalModel>b__0>d.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Modeling.Engine.ModelingEngine.<RouteModelChangeAsync>d__15.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.<ContinueWithAsyncOperation>d__13.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.RuntimeMethodHandle.InvokeMethod(Object target, Object[] arguments, Signature sig, Boolean constructor)
   em System.Reflection.RuntimeMethodInfo.UnsafeInvokeInternal(Object obj, Object[] parameters, Object[] arguments)
   em System.Delegate.DynamicInvokeImpl(Object[] args)
   em System.Windows.Forms.Control.InvokeMarshaledCallbackDo(ThreadMethodEntry tme)
   em System.Windows.Forms.Control.InvokeMarshaledCallbackHelper(Object obj)
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state)
   em System.Windows.Forms.Control.InvokeMarshaledCallback(ThreadMethodEntry tme)
   em System.Windows.Forms.Control.InvokeMarshaledCallbacks()
   em System.Windows.Forms.Control.WndProc(Message& m)
   em System.Windows.Forms.NativeWindow.Callback(IntPtr hWnd, Int32 msg, IntPtr wparam, IntPtr lparam)
   em System.Windows.Forms.UnsafeNativeMethods.DispatchMessageW(MSG& msg)
   em System.Windows.Forms.UnsafeNativeMethods.DispatchMessageW(MSG& msg)
   em System.Windows.Forms.Application.ComponentManager.System.Windows.Forms.UnsafeNativeMethods.IMsoComponentManager.FPushMessageLoop(IntPtr dwComponentID, Int32 reason, Int32 pvLoopData)
   em System.Windows.Forms.Application.ThreadContext.RunMessageLoopInner(Int32 reason, ApplicationContext context)
   em System.Windows.Forms.Application.ThreadContext.RunMessageLoop(Int32 reason, ApplicationContext context)
   em System.Windows.Forms.Form.ShowDialog(IWin32Window owner)
   em Microsoft.Mashup.Client.UI.Shared.WindowManager.ShowModal[T](T dialog, Func`1 showModalFunction)
   em Microsoft.PowerBI.Client.AppModule.<>c__DisplayClass3_0.<Run>b__0()
   em Microsoft.PowerBI.Client.Windows.IExceptionHandlerExtensions.<>c__DisplayClass3_0.<HandleExceptionsWithNestedTasks>b__0()
   em Microsoft.Mashup.Host.Document.ExceptionHandlerExtensions.HandleExceptions(IExceptionHandler exceptionHandler, Action action)
   em Microsoft.PowerBI.Client.AppModule.Run()
   em Microsoft.PowerBI.Client.Program.RunApplicationFlow(String[] args, IPowerBIRootTrace trace)
   em Microsoft.PowerBI.Client.Program.Main(String[] args)


PowerBINonFatalError:
{"AppName":"PBIDesktop","AppVersion":"2.149.1252.0","ModuleName":"Microsoft.PowerBI.Modeler.dll","Component":"Microsoft.PowerBI.Modeler.TomExceptionExtensions","Error":"Microsoft.PowerBI.Modeler.ModelingASOperationException","MethodDef":"ThrowAsModelingASException - PFE_TM_RELATIONSHIP_END_COLUMN_DELETED","ErrorOffset":"34","ErrorCode":""}

InnerException0.Stack Trace Message:
Failed to save modifications to the server. Error returned: 'O relacionamento '0fc15175-0f6d-3eb2-561e-8ea3f73ebff6' aponta para a coluna excluída 'Interessado-SEI' na tabela 'Ressarcimento'.
'.

InnerException0.Stack Trace:
   em Microsoft.AnalysisServices.Tabular.Model.SaveChangesImpl(SaveContext context)
   em Microsoft.PowerBI.Modeler.ModelManager.InternalTransaction.<>c__DisplayClass21_1.<SaveChanges>b__2()
   em Microsoft.PowerBI.Modeler.TomExtensions.ExecuteTomOperation(Action action)

InnerException0.Invocation Stack Trace:
   em Microsoft.Mashup.Host.Document.ExceptionExtensions.GetCurrentInvocationStackTrace()
   em Microsoft.Mashup.Client.UI.Shared.FeedbackErrorInfo.GetFeedbackValuesFromException(Exception e, String prefix)
   em Microsoft.Mashup.Client.UI.Shared.FeedbackErrorInfo.GetFeedbackValuesFromInnerExceptions(Exception e, Int32 depth)
   em Microsoft.Mashup.Client.UI.Shared.FeedbackErrorInfo.CreateAdditionalErrorInfo(Exception e)
   em Microsoft.Mashup.Client.UI.Shared.FeedbackErrorInfo..ctor(String message, Exception exception, Nullable`1 stackTraceInfo, String messageDetail)
   em Microsoft.PowerBI.Client.Windows.Telemetry.PowerBIUserFeedbackServices.ReportException(IWindowHandle activeWindow, IUIHost uiHost, FeedbackPackageInfo feedbackPackageInfo, Exception e, Boolean useGDICapture)
   em Microsoft.Mashup.Client.UI.Shared.UnexpectedExceptionHandler.<>c__DisplayClass14_0.<HandleException>b__0()
   em Microsoft.Mashup.Client.UI.Shared.UnexpectedExceptionHandler.HandleException(Exception e)
   em Microsoft.PowerBI.Client.PowerBIUnexpectedExceptionHandler.HandleException(Exception e)
   em Microsoft.PowerBI.Client.Windows.ModelAuthoringHostService.<ExecuteAndShowFrownOnException>d__26`1.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.ModelAuthoringRoutingService.<RouteToLocalModel>d__17.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.ModelAuthoringRoutingService.<>c__DisplayClass17_0.<<RouteToLocalModel>b__0>d.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.DesktopModelingHost.<RouteToLocalModel>d__38.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Report.<SynchronizeLooselyWithQueriesAsync>d__78`1.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Report.<>c__DisplayClass79_0.<<SynchronizeLooselyWithQueriesAsync>b__0>d.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Client.Windows.Modeling.Hosting.DesktopModelingHost.<>c__DisplayClass38_0.<<RouteToLocalModel>b__0>d.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Modeling.Engine.ModelingEngine.<RouteModelChangeAsync>d__15.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.Threading.Tasks.AwaitTaskContinuation.RunCallback(ContextCallback callback, Object state, Task& currentTask)
   em System.Threading.Tasks.Task.FinishContinuations()
   em System.Threading.Tasks.Task.Finish(Boolean bUserDelegateExecuted)
   em System.Threading.Tasks.Task`1.TrySetException(Object exceptionObject)
   em System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1.SetException(Exception exception)
   em Microsoft.PowerBI.Modeling.Engine.Authoring.AsyncModelAuthoringService.<ContinueWithAsyncOperation>d__13.MoveNext()
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Runtime.CompilerServices.AsyncMethodBuilderCore.MoveNextRunner.Run()
   em System.RuntimeMethodHandle.InvokeMethod(Object target, Object[] arguments, Signature sig, Boolean constructor)
   em System.Reflection.RuntimeMethodInfo.UnsafeInvokeInternal(Object obj, Object[] parameters, Object[] arguments)
   em System.Delegate.DynamicInvokeImpl(Object[] args)
   em System.Windows.Forms.Control.InvokeMarshaledCallbackDo(ThreadMethodEntry tme)
   em System.Windows.Forms.Control.InvokeMarshaledCallbackHelper(Object obj)
   em System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean preserveSyncCtx)
   em System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state)
   em System.Windows.Forms.Control.InvokeMarshaledCallback(ThreadMethodEntry tme)
   em System.Windows.Forms.Control.InvokeMarshaledCallbacks()
   em System.Windows.Forms.Control.WndProc(Message& m)
   em System.Windows.Forms.NativeWindow.Callback(IntPtr hWnd, Int32 msg, IntPtr wparam, IntPtr lparam)
   em System.Windows.Forms.UnsafeNativeMethods.DispatchMessageW(MSG& msg)
   em System.Windows.Forms.UnsafeNativeMethods.DispatchMessageW(MSG& msg)
   em System.Windows.Forms.Application.ComponentManager.System.Windows.Forms.UnsafeNativeMethods.IMsoComponentManager.FPushMessageLoop(IntPtr dwComponentID, Int32 reason, Int32 pvLoopData)
   em System.Windows.Forms.Application.ThreadContext.RunMessageLoopInner(Int32 reason, ApplicationContext context)
   em System.Windows.Forms.Application.ThreadContext.RunMessageLoop(Int32 reason, ApplicationContext context)
   em System.Windows.Forms.Form.ShowDialog(IWin32Window owner)
   em Microsoft.Mashup.Client.UI.Shared.WindowManager.ShowModal[T](T dialog, Func`1 showModalFunction)
   em Microsoft.PowerBI.Client.AppModule.<>c__DisplayClass3_0.<Run>b__0()
   em Microsoft.PowerBI.Client.Windows.IExceptionHandlerExtensions.<>c__DisplayClass3_0.<HandleExceptionsWithNestedTasks>b__0()
   em Microsoft.Mashup.Host.Document.ExceptionHandlerExtensions.HandleExceptions(IExceptionHandler exceptionHandler, Action action)
   em Microsoft.PowerBI.Client.AppModule.Run()
   em Microsoft.PowerBI.Client.Program.RunApplicationFlow(String[] args, IPowerBIRootTrace trace)
   em Microsoft.PowerBI.Client.Program.Main(String[] args)


OS Version:
Microsoft Windows NT 10.0.19045.0 (x64 pt-BR)

CLR Version:
4.8 or later [Release Number = 533325]

Peak Virtual Memory:
87.4 GB

Private Memory:
1.09 GB

Peak Working Set:
1.15 GB

IE Version:
11.3636.19041.0

User ID:
2904aec3-6d5a-47d7-8d76-812d1bd46b79

Workbook Package Info:
1* - pt-BR, Query Groups: 16, fastCombine: Enabled, runBackgroundAnalysis: False.

Telemetry Enabled:
True

Snapshot Trace Logs:
C:\Users\lcreis\AppData\Local\Microsoft\Power BI Desktop\FrownSnapShot6ccb37ad-3f2d-4400-bb03-1fa177da21ff.zip

Model Default Mode:
Import

Model Version:
PowerBI_V3

Performance Trace Logs:
C:\Users\lcreis\AppData\Local\Microsoft\Power BI Desktop\PerformanceTraces.zip

Enabled Preview Features:
PBI_googleBigQueryAdbcVersionEnabled
PBI_scorecardVisual
PBI_setLabelOnExportPdf
PBI_oneDriveSave
PBI_oneDriveShare
PBI_odspSaveBackgroundUpload
PBI_modernOfficeFilePicker
PBI_useModernPublishDialogs
PBI_gitIntegration
PBI_tmdlInDataset
PBI_enhancedReportFormat
PBI_directLakeOnOneLake
PBI_advancedSlicerTypeList
PBI_textSlicer
PBI_aiNarrativesVisual
PBI_visualCalculationsAuthoring
PBI_copilotUnifiedTooling
PBI_UserInstalledVerticaODBCDriver
PBI_sqlDbNativeArtifactsOnDesktop
PBI_dataFunctionActions
PBI_enableExportQueries

Disabled Preview Features:
PBI_DatabricksAdbcVersionEnabled
PBI_snowflakeLegacyOdbcVersionEnabled
PBI_shapeMapVisualEnabled
PBI_SpanishLinguisticsEnabled
PBI_qnaLiveConnect
PBI_metricsArtifactsOnDesktop
PBI_b2bExternalDatasetSharing
PBI_enhancedTooltips
PBI_onObject
PBI_publishDialogsSupportSubfolders
PBI_enhancedReportFormatPBIX
PBI_qnaImproveLsdlCopilot
PBI_customCalendars
PBI_UserInstalledNetezzaODBCDriver
MashupFlight_EnableOracleBundledOdacProvider
PBI_supportUDFs

Disabled DirectQuery Options:
TreatHanaAsRelationalSource

Cloud:
GlobalCloud

PowerBINonFatalError_MethodDefDescription:
PFE_TM_RELATIONSHIP_END_COLUMN_DELETED

ModelChangeResult:
{"changes":[{"updateExpression":{"expression":"\nCALCULATE(\n    SUMX(\n        Pacientes,\n        Pacientes[Quantidade Autorizada]*Pacientes[Período de tratamento (em meses)]*[Custo unitário]\n    ),\n    Pacientes[Status] <>\"Depósito Judicial\"\n)+0","anonymizedExpression":" CALCULATE( SUMX( Table1, Table1[Column1]*Table1[Column2]*[Measure1] ), Table1[Column3] <>\"String\" )+0","errorMessage":null,"expressionOverride":null,"modelObject":"modelobject://Table/Ressarcimento/Measure/Medida%203"}},{"propertyRename":{"entity":"Ressarcimento","objectType":"Measure","before":"Medida 3","after":"Custo anual"}}],"returnModelTmdl":false}

PowerBIUserFeedbackServices_IsReported:
True

DPI Scale:
100%

Supported Services:
Power BI

Formulas:


section Section1;

shared #"1-Medidas" = let
    Fonte = ""
in
    Fonte;

shared Pacientes = let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_CALAF_DETALHE_D1"]}[Data],
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte, {
        {"NUMERO_PROCESSO", type text}, 
        {"DATA_ENTRADA", type date}, 
        {"INTERESSADO", type text}, 
        {"TIPO_ACAO", type text}, 
        {"MEDICAMENTO", type text}, 
        {"UNIDADE_DISPENSADORA", type text}, 
        {"STATUS_PROCESSO", type text}, 
        {"QUANTIDADE_AUTORIZADA", Int64.Type}, 
        {"FREQUENCIA_EM_DIAS", Int64.Type}, 
        {"PERIODO_TRATAMENTO_MESES", Int64.Type}, 
        {"NUMERO_ATENDIMENTO", Int64.Type}, 
        {"DATA_PRIMEIRO_ATENDIMENTO", type text}
    }),
    #"Erros Substituídos" = Table.ReplaceErrorValues(#"Tipo Alterado", {{"DATA_ENTRADA", #date(2018, 1, 1)}}),
    #"Colunas Removidas" = Table.RemoveColumns(#"Erros Substituídos", {"PRAZO_ATENDIMENTO", "DATA_PRAZO_ATENDIMENTO", "CODIGO_CI", "NUMERO_PROCESSO_COMPRA","NUMERO_ATENDIMENTO"}),
    
    // Consolidando as filtragens da coluna MEDICAMENTO
    FiltroExclusoes = List.Combine({
        {"ALIMENTO", "DIETA", "LEITE", "MODULO", "ESPESSANTE", "GLUTAMINA", "FORMULA"},
        {"SUPLEMENTO", "FRESUBIN", "NOVAMIL", "ISOSOURCE", "PEPTAMEN", "FORMULA INFANTIL","MODULEN","NUTRISON"}
    }),
    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas", each 
        List.Accumulate(FiltroExclusoes, true, (state, excl) => state and not Text.Contains([MEDICAMENTO], excl))
    ),

    // Substituindo valores em uma única operação
    #"Valor Substituído" = Table.ReplaceValue(#"Linhas Filtradas", "", "Ação Judicial", Replacer.ReplaceValue, {"TIPO_ACAO"}),
    #"Renomeando Coluna DATA_ENTRADA" = Table.RenameColumns(#"Valor Substituído", {{"DATA_ENTRADA", "DATA"}}),

    // Substituindo valores específicos
    SubstituicoesMedicamento = Table.ReplaceValue(#"Renomeando Coluna DATA_ENTRADA", 
        "SERINGA, DE INSULINA, DESCARTÁVEL, USO ÚNICO, ATÓXICA, ESCALA GRADUADA 1 EM 1U, S/ ESPAÇO MORTO, CAPACIDADE P/ ATÉ 100U DE INSULINA", 
        "SERINGA PARA INSULINA 100 UI", Replacer.ReplaceValue, {"MEDICAMENTO"}),
    #"Texto Aparado" = Table.TransformColumns(SubstituicoesMedicamento,{{"INTERESSADO", Text.Trim, type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"INTERESSADO", Text.Clean, type text}}),
    #"Texto em Maiúscula" = Table.TransformColumns(#"Texto Limpo",{{"INTERESSADO", Text.Upper, type text}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Texto em Maiúscula",{{"NUMERO_PROCESSO", "Número do processo"}, {"DATA", "Data"}, {"INTERESSADO", "Interessado"}, {"TIPO_ACAO", "Tipo Ação"}, {"MEDICAMENTO", "Medicamento"}, {"UNIDADE_DISPENSADORA", "Unidade Dispensadora"}, {"STATUS_PROCESSO", "Status"}, {"QUANTIDADE_AUTORIZADA", "Quantidade Autorizada"}, {"FREQUENCIA_EM_DIAS", "Frequência (em dias)"}, {"PERIODO_TRATAMENTO_MESES", "Período de tratamento (em meses)"}, {"DATA_PROXIMO_ATENDIMENTO", "Data Próximo Atendimento"}, {"DATA_PRIMEIRO_ATENDIMENTO", "Data Primeiro Atendimento"}, {"TIPO_PERIODO_TRATAMENTO", "Período de Tratamento"}}),
    #"Texto Aparado1" = Table.TransformColumns(Table.TransformColumnTypes(#"Colunas Renomeadas", {{"Data", type text}, {"Quantidade Autorizada", type text}, {"Frequência (em dias)", type text}, {"Período de tratamento (em meses)", type text}, {"Data Próximo Atendimento", type text}}, "pt-BR"),{{"Número do processo", Text.Trim, type text}, {"Data", Text.Trim, type text}, {"Interessado", Text.Trim, type text}, {"Tipo Ação", Text.Trim, type text}, {"Medicamento", Text.Trim, type text}, {"Unidade Dispensadora", Text.Trim, type text}, {"Status", Text.Trim, type text}, {"Quantidade Autorizada", Text.Trim, type text}, {"Frequência (em dias)", Text.Trim, type text}, {"Período de tratamento (em meses)", Text.Trim, type text}, {"Data Próximo Atendimento", Text.Trim, type text}, {"Período de Tratamento", Text.Trim, type text}, {"Data Primeiro Atendimento", Text.Trim, type text}}),
    #"Texto Limpo1" = Table.TransformColumns(#"Texto Aparado1",{{"Número do processo", Text.Clean, type text}, {"Data", Text.Clean, type text}, {"Interessado", Text.Clean, type text}, {"Tipo Ação", Text.Clean, type text}, {"Medicamento", Text.Clean, type text}, {"Unidade Dispensadora", Text.Clean, type text}, {"Status", Text.Clean, type text}, {"Quantidade Autorizada", Text.Clean, type text}, {"Frequência (em dias)", Text.Clean, type text}, {"Período de tratamento (em meses)", Text.Clean, type text}, {"Data Próximo Atendimento", Text.Clean, type text}, {"Período de Tratamento", Text.Clean, type text}, {"Data Primeiro Atendimento", Text.Clean, type text}}),
    Personalizar1 = Table.AddColumn(#"Texto Limpo1" , "Tipo", each if [#"Número do processo"] = "24027-56.2012.4.01.3300" then "Ação Civil Pública" else if Text.StartsWith([#"Número do processo"], "0549646-45.2016.8.05.0001") then "Ação Civil Pública" else [#"Tipo Ação"]),
    #"Dividir Coluna por Delimitador" = Table.SplitColumn(Personalizar1, "Data Primeiro Atendimento", Splitter.SplitTextByDelimiter(" ", QuoteStyle.Csv), {"Data Primeiro Atendimento.1", "Data Primeiro Atendimento.2"}),
    #"Colunas Removidas1" = Table.RemoveColumns(#"Dividir Coluna por Delimitador",{"Data Primeiro Atendimento.2"}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Colunas Removidas1",null,"",Replacer.ReplaceValue,{"Data Primeiro Atendimento.1"}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Data Primeiro Atendimento.1", type date}}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Tipo Alterado1",{{"Data Primeiro Atendimento.1", "Data Primeiro Atendimento"}}),
    #"Coluna Duplicada" = Table.DuplicateColumn(#"Colunas Renomeadas1", "Interessado", "Interessado - Copiar"),
    #"Colunas Renomeadas3" = Table.RenameColumns(#"Coluna Duplicada",{{"Interessado - Copiar", "Interessado-SEI"}}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Colunas Renomeadas3",{{"Data", type date}, {"Número do processo", type text}, {"Interessado", type text}, {"Tipo Ação", type text}, {"Medicamento", type text}, {"Unidade Dispensadora", type text}, {"Status", type text}, {"Quantidade Autorizada", Int64.Type}, {"Frequência (em dias)", Int64.Type}, {"Período de tratamento (em meses)", Int64.Type}, {"Data Próximo Atendimento", type datetime}, {"Período de Tratamento", type text}, {"Data Primeiro Atendimento", type date}, {"Tipo", type text}}),
    // 🔹 Limpeza consolidada (muito mais performático)
#"Limpeza Texto" =
    Table.TransformColumns(
        #"Tipo Alterado2",
        {
            {
                "Interessado",
                each
                    let
                        txt = _,
                        txt1 = Text.Replace(txt, "SEI Nº", ""),
                        txt2 = Text.Replace(txt1, "SEI N°", ""),
                        txt3 = Text.Replace(txt2, "SIEI N", ""),
                        txt4 = Text.Replace(txt3, "(SEI", "*"),
                        txt5 = Text.Replace(txt4, "Nº", ""),
                        txt6 = Text.Replace(txt5, "N°", ""),
                        txt7 = Text.Replace(txt6, "°", ""),
                        txt8 = Text.Replace(txt7, "- SEI", "*"),
                        txt9 = Text.Replace(txt8, "-SEI", "*"),
                        txt10 = Text.Replace(txt9, "- *", "*"),
                        txt11 = Text.Replace(txt10, "-*", "*"),
                        txt12 = Text.Replace(txt11, "* SEI", "*"),
                        txt13 = Text.Replace(txt12, "(", "*"),
                        txt14 = Text.Replace(txt13, ")", "*"),
                        txt15 = Text.Replace(txt13, " * *", "*")
                    in
                        txt15,
                type text
            }
        }
    ),

// 🔹 Regra do 019 (INÍCIO OU FINAL)
#"Padronizar 019" =
    Table.TransformColumns(
        #"Limpeza Texto",
        {
            {
                "Interessado",
                each
                    let
                        txt = Text.Trim(_)
                    in
                        if Text.StartsWith(txt, "019.")
                        then "*" & txt
                        else if Text.Contains(txt, " 019.")
                        then Text.Replace(txt, " 019.", " *019.")
                        else txt,
                type text
            }
        }
    ),
    #"Valor Substituído2" = Table.ReplaceValue(#"Padronizar 019","* *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído3" = Table.ReplaceValue(#"Valor Substituído2","019.5022","*019.5022",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído4" = Table.ReplaceValue(#"Valor Substituído3","- ","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído5" = Table.ReplaceValue(#"Valor Substituído4","*  SEI","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído6" = Table.ReplaceValue(#"Valor Substituído5","* *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído7" = Table.ReplaceValue(#"Valor Substituído6","*)","",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído8" = Table.ReplaceValue(#"Valor Substituído7","*  *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído9" = Table.ReplaceValue(#"Valor Substituído8","**","*",Replacer.ReplaceText,{"Interessado"}),

    #"Padronizar 006" =
    Table.TransformColumns(
       #"Valor Substituído9",
        {
            {
                "Interessado",
                each Text.Replace(_, " 006.", " *006."),
                type text
            }
        }
    ),
    #"Valor Substituído10" = Table.ReplaceValue(#"Padronizar 006","*  *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Remover * inicial" =
    Table.TransformColumns(
        #"Valor Substituído10",
        {
            {
                "Interessado",
                each Text.TrimStart(_, {"*"}),
                type text
            }
        }
    ),
    #"Valor Substituído12" = Table.ReplaceValue(#"Remover * inicial","SEI:","",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído13" = Table.ReplaceValue(#"Valor Substituído12",":","",Replacer.ReplaceText,{"Interessado"}),
    #"Dividir Coluna por Delimitador1" = Table.SplitColumn(#"Valor Substituído13", "Interessado", Splitter.SplitTextByEachDelimiter({"*"}, QuoteStyle.Csv, false), {"Interessado.1", "Interessado.2"}),
    #"Valor Substituído11" = Table.ReplaceValue(#"Dividir Coluna por Delimitador1","*","",Replacer.ReplaceText,{"Interessado.2"}),
    #"Texto Aparado2" = Table.TransformColumns(#"Valor Substituído11",{{"Interessado.2", Text.Trim, type text}}),
    #"Texto Limpo2" = Table.TransformColumns(#"Texto Aparado2",{{"Interessado.2", Text.Clean, type text}}),
    #"Valor Substituído14" = Table.ReplaceValue(#"Texto Limpo2","SEI","",Replacer.ReplaceText,{"Interessado.2"}),
    #"Valor Substituído16" = Table.ReplaceValue(#"Valor Substituído14","N","",Replacer.ReplaceText,{"Interessado.2"}),
    #"Texto Aparado3" = Table.TransformColumns(#"Valor Substituído16",{{"Interessado.2", Text.Trim, type text}, {"Interessado.1", Text.Trim, type text}}),
    #"Texto Limpo3" = Table.TransformColumns(#"Texto Aparado3",{{"Interessado.2", Text.Clean, type text}, {"Interessado.1", Text.Clean, type text}}),
    #"Valor Substituído15" = Table.ReplaceValue(#"Texto Limpo3",null,"",Replacer.ReplaceValue,{"Interessado.1", "Interessado.2"}),
    #"Linhas Filtradas1" = Table.SelectRows(#"Valor Substituído15", each true),
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Linhas Filtradas1",{{"Interessado.1", "Interessado"}, {"Interessado.2", "SEI"}}),
    #"Linhas Classificadas" = Table.Sort(#"Colunas Renomeadas2",{{"SEI", Order.Descending}}),
    #"Valor Substituído17" = Table.ReplaceValue(#"Linhas Classificadas","º ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído18" = Table.ReplaceValue(#"Valor Substituído17",")","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído19" = Table.ReplaceValue(#"Valor Substituído18"," I ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído20" = Table.ReplaceValue(#"Valor Substituído19","ª","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído21" = Table.ReplaceValue(#"Valor Substituído20","]","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído22" = Table.ReplaceValue(#"Valor Substituído21","SI","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído23" = Table.ReplaceValue(#"Valor Substituído22","SI ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído24" = Table.ReplaceValue(#"Valor Substituído23","SE ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído25" = Table.ReplaceValue(#"Valor Substituído24","2 019.8699.2019.0096364-14","019.8699.2019.0096364-14",Replacer.ReplaceText,{"SEI"})
in
    #"Valor Substituído25";

shared Estoque = let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_REL_ESTOQUE_D1#(lf)WHERE DATA_VENCIMENTO >= TIMESTAMP '2025-01-01 00:00:00.000000'"]),
    // Alterar tipos de colunas
    TipoAlterado = Table.TransformColumnTypes(Fonte, {
        {"MEDICAMENTO", type text}, 
        {"UNIDADE", type text}, 
        {"FABRICANTE", type text}, 
        {"lote", type text}, 
        {"DATA_VENCIMENTO", type date}, 
        {"UNIDADES_EM_ESTOQUE", Int64.Type}, 
        {"valor_unitario", type number}, 
        {"PROGRAMA_SAUDE", type text}, 
        {"PRECO_TOTAL", type number}
    }),
    // Filtrar linhas pelo programa de saúde e unidade
    LinhasFiltradas = Table.SelectRows(TipoAlterado, 
        each ([PROGRAMA_SAUDE] = "AÇÃO JUDICIAL" or [PROGRAMA_SAUDE] = "AÇÃO JUDICIAL TERMOLÁBIL" or [PROGRAMA_SAUDE] = "CAJ - ADMINISTRATIVO") 
        and ([UNIDADE] = "CEFARBA - CENTRAL FARMACÊUTICA DO ESTADO DA BAHIA")
    ),

    // Aplicar correção de nomes utilizando dicionário
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    NomeCorrigido = Table.TransformColumns(LinhasFiltradas, {"MEDICAMENTO", each Fn_De_Para(_, De, Para), type text}),

    // Remover colunas desnecessárias
    ColunasRemovidas = Table.RemoveColumns(NomeCorrigido, {"UNIDADE", "PRODUTO","PRECO_TOTAL"}),

    // Filtrar medicamentos não nulos e renomear coluna
    MedicamentoFiltrado = Table.SelectRows(ColunasRemovidas, each [MEDICAMENTO] <> null and [MEDICAMENTO] <> ""),
    ColunasRenomeadas = Table.RenameColumns(MedicamentoFiltrado, {{"DATA_VENCIMENTO", "VALIDADE"}}),

    // Ordenar por validade e filtrar lotes válidos
    LinhasOrdenadas = Table.Sort(ColunasRenomeadas, {{"VALIDADE", Order.Ascending}}),
    LotesValidos = Table.SelectRows(LinhasOrdenadas, each [lote] <> "" and [UNIDADES_EM_ESTOQUE] <> null),
    
    // Adicionar coluna condicional e limpar texto de lotes
    ColunaCondicional = Table.AddColumn(LotesValidos, "Carta de troca", each if Text.Contains([lote], "LOTE") then "Sim" else "Não"),
    // Filtrar por validade após 2015 e classificar por estoque e validade
    ValidadeFiltrada = Table.SelectRows(ColunaCondicional, each [VALIDADE] > #date(2015, 1, 1)),
    LinhasClassificadas = Table.Sort(ValidadeFiltrada, {{"VALIDADE", Order.Ascending}, {"UNIDADES_EM_ESTOQUE", Order.Descending}}),

    // Filtrar medicamentos específicos
    MedicamentoExcluido = Table.SelectRows(LinhasClassificadas, each [MEDICAMENTO] <> "FORMULA ELEMENTAR HIPOALERGENICA INDICADO PARA SINDROME DO INTESTINO CURTO E ALERGIA ALIMENTAR (NEOCATE LCP, ALFAMINO,PURAMINO)"),

    // Ordenar medicamentos e ajustar tipos finais
    OrdenacaoFinal = Table.Sort(MedicamentoExcluido, {{"MEDICAMENTO", Order.Ascending}}),
    TipoFinal = Table.TransformColumnTypes(OrdenacaoFinal, {{"Carta de troca", type text}}),
    #"Texto Aparado" = Table.TransformColumns(TipoFinal,{{"lote", Text.Trim, type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"lote", Text.Clean, type text}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Texto Limpo",{{"MEDICAMENTO", "Medicamento"}, {"lote", "Lote"}, {"VALIDADE", "Validade"}, {"UNIDADES_EM_ESTOQUE", "Unidades em Estoque"}, {"valor_unitario", "valor unitário"}})
in
    #"Colunas Renomeadas";

shared #"Controle de Aquisicao" = let 

    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Controle de Aquisicao"]}[Content],{"Content"}), 

    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}), 

    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true), 

    #"Invocar Função Personalizada1" = Table.AddColumn(#"Arquivos Ocultos Filtrados1", "Transformar Arquivo (3)", each #"Transformar Arquivo (3)"([Content])), 

    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (3)"}), 

    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (3)", Table.ColumnNames(#"Transformar Arquivo (3)"(#"Arquivo de Amostra (3)"))), 

    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(#"Coluna de Tabela Expandida1", [PromoteAllScalars=true]), 

    #"Colunas Renomeadas1" = Table.RenameColumns(#"Cabeçalhos Promovidos",{{"Código CI ", "Código CI"}, {"Medicamento ", "Medicamento"}, {"Código Simpas ", "Código Simpas"}, {"Quantidade ", "Quantidade"}, {"Valor ", "Valor"}, {"Nº Processo ", "Nº Processo"}, {"Empenhar ", "Empenhar"}, {"Nº AFM ", "Nº AFM"}, {"Data de Convocação para Assinatura ", "Data de Convocação para Assinatura"}, {"Data Assinatura AFM ", "Data Assinatura AFM"}, {"Data Entrega AFM ", "Data Entrega AFM"}, {"Quantidade Entregue ", "Quantidade Entregue"}, {"Nº RP - Licitação ", "Nº RP - Licitação"}, {"Validade RP ", "Validade RP"}, {"Fornecedor ", "Fornecedor"}, {"Data CI ", "Data CI"}, {"Origem CI ", "Origem CI"}, {"Assunto CI ", "Assunto CI"}, {"Status CI ", "Status CI"}, {"PAOE ", "PAOE"}, {"Fonte ", "Fonte"}}), 

    #"Colunas Removidas" = Table.RemoveColumns(#"Colunas Renomeadas1",{""}), 

    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas", each ([Origem CI] <> "Núcleo AF Básica ") and ([PAOE] = "6063 ")), 

    // Alteração de tipos de dados 

    TipoAlterado = Table.TransformColumnTypes(#"Linhas Filtradas", { 

        {"Código CI", type text}, {"Medicamento", type text}, {"Código Simpas", type any}, 

        {"Quantidade", type number}, {"Valor", type number}, {"Nº Processo", type text}, 

        {"Empenhar", type text}, {"Nº AFM", type text}, {"Data Assinatura AFM", type date}, 

        {"Data Entrega AFM", type date}, {"Quantidade Entregue", type number},  

        {"Nº RP - Licitação", Int64.Type}, {"Validade RP", type date}, {"Fornecedor", type text}, 

        {"Data CI", type date}, {"Origem CI", type text}, {"Assunto CI", type text}, 

        {"Status CI", type text}, {"PAOE", Int64.Type}, {"Fonte", Int64.Type} 

    }), 

    // Aplicando a função de mapeamento De-Para 

    NomeCorrigido = Table.TransformColumns(TipoAlterado, {"Medicamento", each Fn_De_Para(_, List.Buffer(Dicionário[De]), List.Buffer(Dicionário[Para])), type text}), 

  

    // Removendo colunas indesejadas 

    ColunasRemovidas = Table.RemoveColumns(NomeCorrigido, {"Código Simpas", "Empenhar", "Fonte", "PAOE", "Nº RP - Licitação", "Validade RP", "Origem CI"}), 

  

    // Filtrando linhas com condições específicas 

    LinhasFiltradas = Table.SelectRows(ColunasRemovidas, each  

        ([Medicamento] <> "") and  

        not Text.Contains([Medicamento], "ALIMENTO") and  

        not Text.Contains([Medicamento], "FORMULA") and  

        not Text.Contains([Medicamento], "SUPLEMENTO") and 

        ([Status CI] <> "Coordenação") and  

        ([Status CI] <> "Dispensa de Licitação") and  

        ([Código CI] <> "1369/2021") 

    ), 

  

    // Removendo erros nas colunas relevantes 

    ErrosRemovidos = Table.RemoveRowsWithErrors(LinhasFiltradas, {"Quantidade"}), 

  

    TipoAlterado_Final = Table.TransformColumnTypes(ErrosRemovidos, { 

        {"Data Assinatura AFM", type date}, {"Data Entrega AFM", type date} 

    }), 

    #"Erros Substituídos" = Table.ReplaceErrorValues(TipoAlterado_Final, {{"Data Assinatura AFM", null}}), 

    #"Erros Substituídos1" = Table.ReplaceErrorValues(#"Erros Substituídos", {{"Data Entrega AFM", null}}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Erros Substituídos1",{{"Nº Processo", "Processo SEI"}}) 

in 

    #"Colunas Renomeadas";

shared Distribuição = let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT * FROM AFSESAB.VW_SIGAF_REL_DISTRIBUICAO_D1#(lf)WHERE DATA_DISTRIBUICAO>= TIMESTAMP '2023-01-01 00:00:00.000000'"]),
    #"Tipo Alterado2" = Table.TransformColumnTypes(Fonte,{{"NUMERO_DISTRIBUICAO", type text}, {"NUMERO_PEDIDO", Int64.Type}, {"UNIDADE_ORIGEM", type text}, {"UNIDADE_DESTINO", type text}, {"DATA_DISTRIBUICAO", type date}, {"QUANTIDADE", Int64.Type}, {"VALOR_UNITARIO", type number}, {"DATA_VENCIMENTO", type date}, {"VALOR_TOTAL", type number}, {"MEDICAMENTO", type text}, {"LOTE", type text}}),
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    Nome_Corrigido = Table.TransformColumns(#"Tipo Alterado2", {"MEDICAMENTO", each Fn_De_Para(_, De , Para), type text}), 
    
    
    
    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"UNIDADE_ORIGEM"}),
    #"Personalização Adicionada" = Table.AddColumn(#"Colunas Removidas", "Tipo", each "Distibuição"),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Personalização Adicionada",{{"Tipo", type text}}),
    #"Consultas Mescladas" = Table.NestedJoin(#"Tipo Alterado", {"NUMERO_DISTRIBUICAO"}, #"pendencias de faturamento", {"NF"}, "pendencias de faturamento", JoinKind.LeftOuter),
    #"pendencias de faturamento Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas", "pendencias de faturamento", {"Programa de Saúde"}, {"Programa de Saúde"}),
    #"Linhas Filtradas" = Table.SelectRows(#"pendencias de faturamento Expandido", each ([Programa de Saúde] <> null)),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Linhas Filtradas",{{"DATA_DISTRIBUICAO", "Data"}, {"UNIDADE_DESTINO", "Unidade"}}),
    #"Duplicatas Removidas" = Table.Distinct(#"Colunas Renomeadas", {"NUMERO_DISTRIBUICAO", "NUMERO_PEDIDO", "Unidade", "Data", "QUANTIDADE", "MEDICAMENTO"})
in
    #"Duplicatas Removidas";

shared Entradas = let 

    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_REL_ENTRADA#(lf)WHERE DATA_CADASTRO >= TIMESTAMP '2018-01-01 00:00:00.000000'"]), 

    #"Linhas Filtradas4" = Table.SelectRows(Fonte, each ([STATUS_ENTRADA] = "Ativa") and ([UNIDADE] = "CEFARBA - CENTRAL FARMACÊUTICA DO ESTADO DA BAHIA")), 

    TipoAlterado = Table.TransformColumnTypes(#"Linhas Filtradas4",{{"VALOR_UNITARIO", Currency.Type}, {"QUANTIDADE", Int64.Type}, {"DATA_CADASTRO", type date}, {"DATA_RECEBIMENTO", type date}}), 

    

    De = List.Buffer(Dicionário[De]), 

    Para = List.Buffer(Dicionário[Para]), 

    Nome_Corrigido = Table.TransformColumns(TipoAlterado, {"MEDICAMENTO", each Fn_De_Para(_, De , Para), type text}),  

    

    

    

   #"Linhas Classificadas" = Table.Sort(Nome_Corrigido,{{"DATA_CADASTRO", Order.Ascending}}), 

    #"Dividir Coluna por Transição de Caractere" = Table.SplitColumn(#"Linhas Classificadas", "NUMERO_NOTA_FISCAL", Splitter.SplitTextByCharacterTransition({"0".."9"}, (c) => not List.Contains({"0".."9"}, c)), {"NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.2"}), 

    #"Colunas Removidas2" = Table.RemoveColumns(#"Dividir Coluna por Transição de Caractere",{"NUMERO_NOTA_FISCAL.2"}), 

    #"Coluna Duplicada" = Table.DuplicateColumn(#"Colunas Removidas2", "NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.1 - Copiar"), 

    #"Colunas Reordenadas" = Table.ReorderColumns(#"Coluna Duplicada",{"UNIDADE", "DATA_CADASTRO", "DATA_RECEBIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO", "NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.1 - Copiar", "MEDICAMENTO", "LOTE", "QUANTIDADE", "VALOR_UNITARIO"}), 

    #"Coluna Duplicada1" = Table.DuplicateColumn(#"Colunas Reordenadas", "NUMERO_AUTORIZACAO_FORNECIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"), 

    #"Colunas Reordenadas1" = Table.ReorderColumns(#"Coluna Duplicada1",{"UNIDADE", "DATA_CADASTRO", "DATA_RECEBIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar", "NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.1 - Copiar", "MEDICAMENTO", "LOTE", "QUANTIDADE", "VALOR_UNITARIO"}), 

    #"Valor Substituído" = Table.ReplaceValue(#"Colunas Reordenadas1","","Outras entradas",Replacer.ReplaceValue,{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"}), 

    #"Valor Substituído1" = Table.ReplaceValue(#"Valor Substituído"," CREASI","",Replacer.ReplaceText,{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"}), 

    #"Linhas Filtradas" = Table.SelectRows(#"Valor Substituído1", each true), 

    #"Valor Substituído2" = Table.ReplaceValue(#"Linhas Filtradas","DEVOLUÇÃO","Outras entradas",Replacer.ReplaceText,{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"}), 

    #"Colunas Removidas4" = Table.RemoveColumns(#"Valor Substituído2",{"NUMERO_NOTA_FISCAL.1 - Copiar"}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas4",{{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar", "Tipo Entrada"}}), 

    #"Texto em Maiúscula" = Table.TransformColumns(#"Colunas Renomeadas",{{"NUMERO_NOTA_FISCAL.1", Text.Upper, type text}, {"NUMERO_AUTORIZACAO_FORNECIMENTO", Text.Upper, type text}}), 

    #"Valor Substituído3" = Table.ReplaceValue(#"Texto em Maiúscula",null,"vazio",Replacer.ReplaceValue,{"NUMERO_AUTORIZACAO_FORNECIMENTO"}), 

    #"Coluna Condicional Adicionada" = Table.AddColumn(#"Valor Substituído3", "Personalizar", each if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "DOAÇÃO") then "Doação" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "DEV") then "Devolução" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "STIMO") then "Empréstimo" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "TROCA") then "Troca" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "BONIFICAÇÃO") then "Bonificação" else if [NUMERO_NOTA_FISCAL.1] = "CONTAGEM INICIAL" then "Contagem Inicial" else if Text.StartsWith([NUMERO_NOTA_FISCAL.1], "DEV") then "Devolução" else if Text.Contains([NUMERO_NOTA_FISCAL.1], "EMPRES") then "Empréstimo" else if Text.Contains([NUMERO_NOTA_FISCAL.1], "DOAÇÃO") then "Doação" else if Text.Contains([NUMERO_NOTA_FISCAL.1], "PERM") then "Outras Entradas" else "Aquisição"), 

    #"Colunas Reordenadas2" = Table.ReorderColumns(#"Coluna Condicional Adicionada",{"UNIDADE", "DATA_CADASTRO", "DATA_RECEBIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO", "Tipo Entrada", "NUMERO_NOTA_FISCAL.1", "Personalizar", "MEDICAMENTO", "LOTE", "QUANTIDADE", "VALOR_UNITARIO"}), 

    #"Linhas Filtradas1" = Table.SelectRows(#"Colunas Reordenadas2", each true), 

    #"Colunas Removidas5" = Table.RemoveColumns(#"Linhas Filtradas1",{"Tipo Entrada"}), 

    #"Colunas Renomeadas1" = Table.RenameColumns(#"Colunas Removidas5",{{"Personalizar", "Tipo de entrada"}}), 

    #"Linhas Filtradas6" = Table.SelectRows(#"Colunas Renomeadas1", each ([NOME_PROGRAMA] = "AÇÃO JUDICIAL" or [NOME_PROGRAMA] = "AÇÃO JUDICIAL TERMOLÁBIL" or [NOME_PROGRAMA] = "CAJ - ADMINISTRATIVO")), 

    #"Linhas Filtradas3" = Table.SelectRows(#"Linhas Filtradas6", each true), 

    #"Colunas Removidas3" = Table.RemoveColumns(#"Linhas Filtradas3",{"NOME_PROGRAMA"}), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Colunas Removidas3",{{"LOTE", type text}}), 

    #"Texto Aparado" = Table.TransformColumns(#"Tipo Alterado",{{"LOTE", Text.Trim, type text}}), 

    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"LOTE", Text.Clean, type text}}), 

    #"Colunas Removidas" = Table.RemoveColumns(#"Texto Limpo",{"DATA_ESTORNO", "STATUS_ENTRADA"}), 

    #"Texto em Maiúscula1" = Table.TransformColumns(#"Colunas Removidas",{{"MEDICAMENTO", Text.Upper, type text}}), 

    #"Colunas Renomeadas2" = Table.RenameColumns(#"Texto em Maiúscula1",{{"UNIDADE", "Unidade"}, {"DATA_CADASTRO", "Data Cadastro"}, {"DATA_RECEBIMENTO", "Data Recebimento"}, {"NUMERO_AUTORIZACAO_FORNECIMENTO", "Nº Autorização de Fornecimento"}, {"NUMERO_NOTA_FISCAL.1", "Nº Nota Fiscal .1"}, {"MEDICAMENTO", "Medicamento"}, {"LOTE", "Lote"}, {"QUANTIDADE", "Quantidade"}, {"VALOR_UNITARIO", "Valor Unitário"}}), 

    #"Linhas Filtradas2" = Table.SelectRows(#"Colunas Renomeadas2", each not Text.StartsWith([NUMERO_ENTRADA], "043046325061394")), 

    #"Colunas Renomeadas3" = Table.RenameColumns(#"Linhas Filtradas2",{{"Nº Nota Fiscal .1", "NF"}, {"Data Recebimento", "Data"}, {"Tipo de entrada", "Tipo"}, {"Valor Unitário", "Valor unitário"}}), 

    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Renomeadas3",{{"Tipo", type text}}), 

    #"Colunas Renomeadas4" = Table.RenameColumns(#"Tipo Alterado1",{{"NUMERO_PROCESSO", "Pedido-SEI"}}) 

in 

    #"Colunas Renomeadas4";

shared #"Ata RP" = let 

    Fonte = SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]) 

{[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content] 

{[Name="Rp ativo_Simpas"]}[Content], 

    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}), 

    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true), 

    #"Invocar Função Personalizada1" = Table.AddColumn(#"Arquivos Ocultos Filtrados1", "Transformar Arquivo (8)", each #"Transformar Arquivo (8)"([Content])), 

    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (8)"}), 

    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (8)", Table.ColumnNames(#"Transformar Arquivo (8)"(#"Arquivo de Amostra (27)"))), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Coluna de Tabela Expandida1",{{"Código do Item", type text}, {"Descrição do Item", type text}, {"U.M.", type text}, {"Valor Unitário", type number}, {"Situação Item RP", type text}, {"Fornecedor", type text}, {"CNPJ", type text}, {"UF", type text}, {"Sit.Forn. RP", type text}, {"Marca", type text}, {"Qtd.Licitada", Int64.Type}, {"Qtd.Usada", Int64.Type}, {"Saldo Contratação", Int64.Type}, {"Aditada", Int64.Type}, {"Fim do Saldo", type datetime}, {"Licitaçao", type text}, {"Região", type text}, {"Validade", type date}, {"Sustentável", type any}, {"RC", type text}, {"Exc MPE", type text}}), 

    #"Linhas Filtradas1" = Table.SelectRows(#"Tipo Alterado", each [Sit.Forn. RP] = "Ativo" or [Sit.Forn. RP] = "Pausa"), 

    #"Colunas Renomeadas2" = Table.RenameColumns(#"Linhas Filtradas1",{{"U.M.", "U.M."}}), 

    #"Colunas Removidas" = Table.RemoveColumns(#"Colunas Renomeadas2",{"Unidade", "Descrição da Unidade", "U.M."}), 

    #"Colunas Removidas2" = Table.RemoveColumns(#"Colunas Renomeadas2",{"Unidade", "Descrição da Unidade", "U.M."}), 

    Personalizar1 = Table.TransformColumnTypes(#"Colunas Removidas",{{"Valor Unitário", Currency.Type}}), 

    #"Colunas Removidas1" = Table.RemoveColumns(#"Linhas Filtradas1",{"Situação Item RP", "Qtd.Licitada", "Qtd.Usada", "Aditada"}), 

    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Removidas1",{{"Saldo Contratação", Int64.Type}}), 

    #"Colunas Removidas3" = Table.RemoveColumns(#"Tipo Alterado1",{"Região"}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas3",{{"Código do Item", "CÓDIGO SIMPAS"}, {"Saldo Contratação", "Saldo"}}), 

    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Colunas Renomeadas",{{"Validade", type date}}), 

    #"Colunas Renomeadas1" = Table.RenameColumns(#"Tipo Alterado2",{{"Validade", "Validade Ata"}, {"Sit.Forn. RP", "Rp Ativo"}}), 

    #"Valor Substituído" = Table.ReplaceValue(#"Colunas Renomeadas1","Ativo","Sim",Replacer.ReplaceText,{"Rp Ativo"}), 

    #"Valor Substituído1" = Table.ReplaceValue(#"Valor Substituído","Pausa","Pausado",Replacer.ReplaceText,{"Rp Ativo"}), 

    #"Tipo Alterado3" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Fator Embalagem", Int64.Type}}), 

    #"Colunas Removidas4" = Table.RemoveColumns(#"Tipo Alterado3",{"Sustentável", "RC", "Exc MPE"}) 

in 

    #"Colunas Removidas4";

shared _Calendario = let
    DataMin = #date(2018, 1, 1),
    DataMax = #date(2069, 12, 31),
    QtdeDias = Duration.Days(DataMax-DataMin)+1,
    Personalizar1 = List.Dates(DataMin, QtdeDias, #duration(1,0,0,0)),
    #"Convertido para Tabela" = Table.FromList(Personalizar1, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Convertido para Tabela",{{"Column1", type date}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Tipo Alterado",{{"Column1", "Data"}}),
    #"Nome do Mês Inserido" = Table.AddColumn(#"Colunas Renomeadas", "Nome do Mês", each Date.MonthName([Data]), type text),
    #"Ano Inserido" = Table.AddColumn(#"Nome do Mês Inserido", "Ano", each Date.Year([Data]), Int64.Type),
    #"Mês Inserido" = Table.AddColumn(#"Ano Inserido", "Mês", each Date.Month([Data]), Int64.Type),
    #"Colunas Mescladas" = Table.CombineColumns(Table.TransformColumnTypes(#"Mês Inserido", {{"Ano", type text}}, "pt-BR"),{"Nome do Mês", "Ano"},Combiner.CombineTextByDelimiter("-", QuoteStyle.None),"Mês-Ano"),
    #"Ano Inserido1" = Table.AddColumn(#"Colunas Mescladas", "Ano", each Date.Year([Data]), Int64.Type),
    #"Linhas Classificadas" = Table.Sort(#"Ano Inserido1",{{"Mês-Ano", Order.Ascending}}),
    #"Personalização Adicionada" = Table.AddColumn(#"Linhas Classificadas", "Personalizar", each [Ano]*100+[Mês]),
    #"Linhas Classificadas1" = Table.Sort(#"Personalização Adicionada",{{"Data", Order.Ascending}}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Linhas Classificadas1",{{"Personalizar", Int64.Type}}),
    #"Linhas Classificadas2" = Table.Sort(#"Tipo Alterado1",{{"Personalizar", Order.Ascending}}),
    #"Personalização Adicionada1" = Table.AddColumn(#"Linhas Classificadas2", "Mês Abrev", each Date.ToText([Data],"MMM")),
    #"Coluna Mesclada Inserida" = Table.AddColumn(#"Personalização Adicionada1", "Mesclado", each Text.Combine({[Mês Abrev], "-", Text.From([Ano], "pt-BR")}), type text),
    #"Colunas Removidas" = Table.RemoveColumns(#"Coluna Mesclada Inserida",{"Mês-Ano"}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Colunas Removidas",{{"Mesclado", "Mês e Ano"}, {"Personalizar", "Ano Mês Class"}}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Colunas Renomeadas1",{{"Ano Mês Class", type text}}),
    #"Linhas Filtradas" = Table.SelectRows(#"Tipo Alterado2", each [Data] <> null and [Data] <> ""),
    #"Coluna Condicional Adicionada" = Table.AddColumn(#"Linhas Filtradas", "Quadrimestre", each if [Mês] <= 4 then "Q1" else if [Mês] <= 8 then "Q2" else if [Mês] <= 12 then "Q3" else null),
    #"Semana do Ano Inserida" = Table.AddColumn(#"Coluna Condicional Adicionada", "Semana do Ano", each Date.WeekOfYear([Data]), Int64.Type),
    #"Dia da Semana Inserido" = Table.AddColumn(#"Semana do Ano Inserida", "Dia da Semana", each Date.DayOfWeek([Data]), Int64.Type),
    #"Nome do Dia Inserido" = Table.AddColumn(#"Dia da Semana Inserido", "Nome do Dia", each Date.DayOfWeekName([Data]), type text),
    #"Personalização Adicionada2" = Table.AddColumn(#"Nome do Dia Inserido", "Nome do Dia.1", each [Dia da Semana]+1),
    #"Colunas Removidas1" = Table.RemoveColumns(#"Personalização Adicionada2",{"Dia da Semana"}),
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Colunas Removidas1",{{"Nome do Dia.1", "Dia da Semana"}}),
    #"Nome do Mês Inserido1" = Table.AddColumn(#"Colunas Renomeadas2", "Nome do Mês", each Date.MonthName([Data]), type text),
    #"Coluna Mesclada Inserida1" = Table.AddColumn(#"Nome do Mês Inserido1", "Quadrimestral", each Text.Combine({Text.From([Ano], "pt-BR"), "-", [Quadrimestre]}), type text),
    #"Coluna Condicional Adicionada1" = Table.AddColumn(#"Coluna Mesclada Inserida1", "Semestre", each if [Mês] >= 7 then "2º Semestre" else if [Mês] <= 6 then "1º Semestre" else null)
in
    #"Coluna Condicional Adicionada1";

shared #"pendencias de faturamento" = let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_REL_PENDENCIAS_D1"]}[Data],
    TipoAlterado = Table.TransformColumnTypes(Fonte,{{"numero_pedido", Int64.Type}, {"numero_distribuicao", type text}, {"unidade_saude", type text}, {"programa_saude", type text}, {"data_pedido", type date}, {"data_distribuicao", type date}, {"periodo", type text}, {"medicamento_item", type text}, {"consumo_medio_mensal", Int64.Type}, {"qtd_pedida", Int64.Type}, {"qtd_autorizada", Int64.Type}, {"qtd_faturada", Int64.Type}, {"diferenca", Int64.Type}}),
    #"Texto Limpo1" = Table.TransformColumns(TipoAlterado,{{"medicamento_item", Text.Clean, type text}}),
    #"Texto Aparado1" = Table.TransformColumns(#"Texto Limpo1",{{"medicamento_item", Text.Trim, type text}}),
    #"Texto em Maiúscula" = Table.TransformColumns(#"Texto Aparado1",{{"medicamento_item", Text.Upper, type text}}),
    #"Linhas Filtradas" = Table.SelectRows(#"Texto em Maiúscula", each ([programa_saude] = "AÇÃO JUDICIAL" or [programa_saude] = "AÇÃO JUDICIAL TERMOLÁBIL" or [programa_saude] = "CAJ - ADMINISTRATIVO")),
    #"Linhas Filtradas1" = Table.SelectRows(#"Linhas Filtradas", each [data_distribuicao] > #date(2018, 1, 1)),
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    Nome_Corrigido = Table.TransformColumns(#"Linhas Filtradas1", {"medicamento_item", each Fn_De_Para(_, De , Para), type text}), 
    
    
    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"periodo", "consumo_medio_mensal", "data_pedido"}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas",{{"medicamento_item", "Medicamento"}}),
    #"Linhas Classificadas" = Table.Sort(#"Colunas Renomeadas",{{"data_distribuicao", Order.Descending}}),
    #"Personalização Adicionada" = Table.AddColumn(#"Linhas Classificadas", "Personalizar", each Number.Abs([#"diferenca"])+[#"qtd_faturada"]),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Personalização Adicionada",{{"Personalizar", "Demanda real"}}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Renomeadas1",{{"Demanda real", Int64.Type}}),
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Tipo Alterado1",{{"numero_distribuicao", "Nº Distribuição"}, {"unidade_saude", "Unidade de Saúde"}, {"programa_saude", "Programa de Saúde"}, {"data_distribuicao", "Data Distribuição"}, {"qtd_pedida", "Qtd. Pedida"}, {"qtd_autorizada", "Qtd. Autorizada"}, {"qtd_faturada", "Qtd. Faturada"}, {"diferenca", "Diferença"}, {"numero_pedido", "Pedido"}}),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Colunas Renomeadas2",{{"Pedido", type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Tipo Alterado",{{"Medicamento", Text.Clean, type text}, {"Programa de Saúde", Text.Clean, type text}, {"Unidade de Saúde", Text.Clean, type text}, {"Nº Distribuição", Text.Clean, type text}, {"Pedido", Text.Clean, type text}}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Texto Limpo",{{"Data Distribuição", type date}}),
    #"Texto Aparado" = Table.TransformColumns(Table.TransformColumnTypes(#"Tipo Alterado2", {{"Data Distribuição", type text}}, "pt-BR"),{{"Medicamento", Text.Trim, type text}, {"Data Distribuição", Text.Trim, type text}, {"Programa de Saúde", Text.Trim, type text}, {"Unidade de Saúde", Text.Trim, type text}, {"Nº Distribuição", Text.Trim, type text}, {"Pedido", Text.Trim, type text}}),
    #"Tipo Alterado3" = Table.TransformColumnTypes(#"Texto Aparado",{{"Data Distribuição", type date}}),
    #"Colunas Renomeadas3" = Table.RenameColumns(#"Tipo Alterado3",{{"Unidade de Saúde", "Unidade"}, {"Data Distribuição", "Data"}, {"Qtd. Faturada", "Quantidade"}, {"Nº Distribuição", "NF"}, {"Pedido", "Pedido-SEI"}}),
    #"Duplicatas Removidas" = Table.Distinct(#"Colunas Renomeadas3", {"Pedido-SEI", "NF", "Unidade", "Medicamento"})
in
    #"Duplicatas Removidas";

shared #"Parametros do pedido" = let 

    Fonte=  Excel.Workbook(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Paramentros da programação.xlsx"]}[Content]), 

    Planilha1_Sheet = Fonte{[Item="Planilha1",Kind="Sheet"]}[Data], 

    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(Planilha1_Sheet, [PromoteAllScalars=true]), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Cabeçalhos Promovidos",{{"Fator", Int64.Type}}) 

in 

    #"Tipo Alterado";

shared #"Controle de Dispensa_2" = let 

    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Controle de Dispensa"]}[Content],{"Content"}), 

    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}), 

    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true), 

    #"Invocar Função Personalizada1" = Table.AddColumn(#"Arquivos Ocultos Filtrados1", "Transformar Arquivo (2)", each #"Transformar Arquivo (2)"([Content])), 

    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (2)"}), 

    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (2)", Table.ColumnNames(#"Transformar Arquivo (2)"(#"Arquivo de Amostra (2)"))), 

    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(#"Coluna de Tabela Expandida1", [PromoteAllScalars=true]), 

    #"Linhas Filtradas" = Table.SelectRows(#"Cabeçalhos Promovidos", each ([#"Origem CI "] <> "Diretoria " and [#"Origem CI "] <> "Núcleo AF Básica " and [#"Origem CI "] <> "Núcleo de RP " and [#"Origem CI "] <> "Secretaria ")), 

    TipoAlterado = Table.TransformColumnTypes(#"Linhas Filtradas",{{"Data CI ", type date}}), 

    #"Texto Aparado1" = Table.TransformColumns(TipoAlterado,{{"Medicamento ", Text.Trim, type text}}), 

    #"Texto Limpo2" = Table.TransformColumns(#"Texto Aparado1",{{"Medicamento ", Text.Clean, type text}}), 

    De = List.Buffer(Dicionário[De]), 

    Para = List.Buffer(Dicionário[Para]), 

    Nome_Corrigido = Table.TransformColumns(#"Texto Limpo2", {"Medicamento ", each Fn_De_Para(_, De , Para), type text}),  

     

     

     

    #"Colunas Removidas1" = Table.RemoveColumns(Nome_Corrigido,{"Documento ", "Fornecedor ", "Fabricante ", "Produto/Serviço ", "Data Pesquisa ", "Preço Referência ", "PMVG ", "Inciso ", "Classificação ", "Preço Final ", "Data Solicitação Proposta ", "Nº Dispensa ", "Ano Dispensa "}), 

    #"Linhas Filtradas2" = Table.SelectRows(#"Colunas Removidas1", each true), 

    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Linhas Filtradas2",{{"Medicamento ", type text}, {"Quantidade ", Int64.Type}, {"Status CI ", type text}, {"N° Processo ", type text}}), 

    #"Erros Removidos1" = Table.RemoveRowsWithErrors(#"Tipo Alterado1", {"Quantidade "}), 

    #"Erros Removidos" = Table.RemoveRowsWithErrors(#"Erros Removidos1", {"Medicamento "}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Erros Removidos",{{"Nº CI ", "Nº CI"}}), 

    #"Linhas Classificadas" = Table.Sort(#"Colunas Renomeadas",{{"Medicamento ", Order.Descending}}), 

    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Linhas Classificadas",{{"N° Processo ", type text}}), 

    #"Colunas Renomeadas1" = Table.RenameColumns(#"Tipo Alterado2",{{"N° Processo ", "N° Processo"}}), 

    #"Colunas Renomeadas2" = Table.RenameColumns(#"Colunas Renomeadas1",{{"N° Processo", "Processo SEI"}}), 

    #"Texto Limpo" = Table.TransformColumns(#"Colunas Renomeadas2",{{"Processo SEI", Text.Clean, type text}}), 

    #"Texto Aparado" = Table.TransformColumns(#"Texto Limpo",{{"Processo SEI", Text.Trim, type text}, {"Medicamento ", Text.Trim, type text}}), 

    #"Texto Limpo1" = Table.TransformColumns(#"Texto Aparado",{{"Medicamento ", Text.Clean, type text}}), 

    #"Linhas Filtradas3" = Table.SelectRows(#"Texto Limpo1", each ([Processo SEI] <> "")), 

    #"Colunas Renomeadas3" = Table.RenameColumns(#"Linhas Filtradas3",{{"Data CI ", "Data CI"}, {"Status CI ", "Status CI"}, {"Data Conclusão Dispensa ", "Data Conclusão Dispensa"}, {"Status da Dispensa ", "Status da Dispensa"}, {"Quantidade ", "Quantidade"}, {"Medicamento ", "Medicamento"}}), 

    #"Colunas Renomeadas4" = Table.RenameColumns(#"Colunas Renomeadas3",{{"Origem CI ", "Origem CI"}, {"Nº CI", "Código CI"}}), 

    #"Valor Substituído" = Table.ReplaceValue(#"Colunas Renomeadas4","00/00/0000","",Replacer.ReplaceText,{"Data Conclusão Dispensa"}), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Valor Substituído",{{"Data Conclusão Dispensa", type date}}), 

    #"Consultas Mescladas" = Table.NestedJoin(#"Tipo Alterado", {"Processo SEI"}, #"Controle de Aquisicao", {"Processo SEI"}, "Controle de Aquisicao", JoinKind.LeftOuter), 

    #"Controle de Aquisicao Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas", "Controle de Aquisicao", {"Nº AFM", "Data de Convocação para Assinatura", "Data Assinatura AFM", "Quantidade Entregue"}, {"Nº AFM", "Data de Convocação para Assinatura", "Data Assinatura AFM", "Quantidade Entregue"}), 

    #"Valor Substituído1" = Table.ReplaceValue(#"Controle de Aquisicao Expandido","00/00/0000","",Replacer.ReplaceText,{"Data de Convocação para Assinatura"}), 

    #"Tipo Alterado3" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Data de Convocação para Assinatura", type date}}), 

    #"Duplicatas Removidas" = Table.Distinct(#"Tipo Alterado3", {"Código CI", "Medicamento", "Quantidade", "Processo SEI"}) 

in 

    #"Duplicatas Removidas";

shared #"CI sem rp" = let 

  

    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_REL_CI_COM_MEDICAMENTOS"]}[Data], 

    #"Linhas Filtradas4" = Table.SelectRows(Fonte, each ([status_ci] = "Ativo") and ([assunto_ci] = "Solicitação de medicamentos sem RP Ativo") and ([origem_ci] = "Coordenação")), 

    TipoAlterado = Table.TransformColumnTypes(#"Linhas Filtradas4",{{"numero_ci", type text}, {"data_ci", type date}, {"destino", type text}, {"origem_ci", type text}, {"servidor", type text}, {"assunto_ci", type text}, {"status_ci", type text}, {"numero_processo", type text}, {"descricao", type text}, {"nom_medicamento", type text}, {"quantidade", Int64.Type}}), 

     

    De = List.Buffer(Dicionário[De]), 

    Para = List.Buffer(Dicionário[Para]), 

    Nome_Corrigido = Table.TransformColumns(TipoAlterado, {"nom_medicamento", each Fn_De_Para(_, De , Para), type text}), 

    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"destino", "origem_ci", "assunto_ci","descricao"}), 

    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas", each ([#"numero_ci"] <> " * ")), 

    #"Erros Substituídos" = Table.ReplaceErrorValues(#"Linhas Filtradas", {{"quantidade", 0}}), 

    #"Erros Removidos" = Table.RemoveRowsWithErrors(#"Erros Substituídos", {"nom_medicamento"}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Erros Removidos",{{"numero_ci", "Nº CI"}, {"data_ci", "Data CI"}, {"numero_processo", "Processo SEI"}, {"nom_medicamento", "Medicamento"}, {"quantidade", "Quantidade"}}), 

    Personalizar1 = Table.AddColumn(#"Colunas Renomeadas", "Assunto CI", each "Dispensa de Licitação"), 

    #"Colunas Renomeadas1" = Table.RenameColumns(Personalizar1,{{"Nº CI", "Código CI"}, {"status_ci", "Status CI"}}) 

in 

    #"Colunas Renomeadas1";

shared #"_Lista de medicamentos" = let 

    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Lista de medicamentos"]}[Content],{"Content"}), 

    #"Invocar Função Personalizada1" = Table.AddColumn(Fonte, "Transformar Arquivo (4)", each #"Transformar Arquivo (4)"([Content])), 

    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (4)"}), 

    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (4)", Table.ColumnNames(#"Transformar Arquivo (4)"(#"Arquivo de Amostra (23)"))), 

    #"Tipo Alterado7" = Table.TransformColumnTypes(#"Coluna de Tabela Expandida1",{{"CÓDIGO SIMPAS", type text}}), 

    #"Texto Aparado" = Table.TransformColumns(#"Tipo Alterado7",{{"CÓDIGO SIMPAS", Text.Trim, type text}}), 

    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"CÓDIGO SIMPAS", Text.Clean, type text}}), 

    #"Consultas Mescladas" = Table.NestedJoin(#"Texto Limpo", {"CÓDIGO SIMPAS"}, #"Ata RP", {"CÓDIGO SIMPAS"}, "Ata RP", JoinKind.LeftOuter), 

    #"Ata RP Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas", "Ata RP", {"Fator Embalagem", "Valor Unitário", "Fornecedor", "CNPJ", "Rp Ativo", "Marca", "Saldo", "Licitaçao", "Validade Ata"}, {"Fator Embalagem.1", "Valor Unitário", "Fornecedor", "CNPJ", "Rp Ativo", "Marca", "Saldo", "Licitaçao", "Validade Ata"}), 

    #"Consultas Mescladas1" = Table.NestedJoin(#"Ata RP Expandido", {"CURVA"}, #"Parametros do pedido", {"Curva"}, "Parametros do pedido", JoinKind.LeftOuter), 

    #"Parametros do pedido Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas1", "Parametros do pedido", {"Fator"}, {"Fator"}), 

    #"Colunas Renomeadas4" = Table.RenameColumns(#"Parametros do pedido Expandido",{{"MEDICAMENTO", "Medicamento"}}), 

    #"Duplicatas Removidas" = Table.Distinct(#"Colunas Renomeadas4", {"Medicamento"}), 

    #"Linhas Classificadas" = Table.Sort(#"Duplicatas Removidas",{{"Medicamento", Order.Descending}}), 

    #"Linhas Classificadas1" = Table.Sort(#"Linhas Classificadas",{{"Medicamento", Order.Descending}}), 

    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Linhas Classificadas1",{{"Fator Embalagem.1", Int64.Type}}), 

    #"Colunas Renomeadas2" = Table.RenameColumns(#"Tipo Alterado2",{{"Fator Embalagem.1", "Fator Embalagem-1"}, {"FATOR EMBALAGEM", "FATOR EMBALAGEM-2"}}), 

    #"Coluna Condicional Adicionada1" = Table.AddColumn(#"Colunas Renomeadas2", "FATOR EMBALAGEM", each if [#"Fator Embalagem-1"] <> null then [#"Fator Embalagem-1"] else [#"FATOR EMBALAGEM-2"]), 

    #"Colunas Reordenadas" = Table.ReorderColumns(#"Coluna Condicional Adicionada1",{"Medicamento", "CÓDIGO SIMPAS", "CURVA", "Indicação Terapêutica", "Tempo de Tratamento", "Responsável", "FATOR EMBALAGEM-2", "Fator Embalagem-1", "FATOR EMBALAGEM", "Fornecedor", "Marca", "Saldo", "Licitaçao", "Validade Ata", "Rp Ativo", "Fator"}), 

    #"Colunas Removidas2" = Table.RemoveColumns(#"Colunas Reordenadas",{"Fator Embalagem-1", "FATOR EMBALAGEM-2"}), 

    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas2", each true), 

    #"Tipo Alterado3" = Table.TransformColumnTypes(#"Linhas Filtradas",{{"CÓDIGO SIMPAS", type text}}), 

    #"Consultas Mescladas2" = Table.NestedJoin(#"Tipo Alterado3", {"CÓDIGO SIMPAS"}, #"Monitoramento RP", {"SIMPAS"}, "Monitoramento RP", JoinKind.LeftOuter), 

    #"Monitoramento RP Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas2", "Monitoramento RP", {"N° PROCESSO", "ANDAMENTO", "Prazo para ativação, caso logre Êxito"}, {"N° PROCESSO", "ANDAMENTO", "Prazo para ativação, caso logre Êxito"}), 

    #"Duplicatas Removidas2" = Table.Distinct(#"Monitoramento RP Expandido", {"Medicamento", "CÓDIGO SIMPAS"}), 

    #"Colunas Renomeadas3" = Table.RenameColumns(#"Duplicatas Removidas2",{{"Prazo para ativação, caso logre Êxito", "Prazo para ativação"}}), 

    #"Tipo Alterado4" = Table.TransformColumnTypes(#"Colunas Renomeadas3",{{"Medicamento", type text}}), 

    #"Linhas Filtradas1" = Table.SelectRows(#"Tipo Alterado4", each true), 

    #"Valor Substituído" = Table.ReplaceValue(#"Linhas Filtradas1",null,"Sem previsão",Replacer.ReplaceValue,{"Prazo para ativação"}), 

    #"Valor Substituído1" = Table.ReplaceValue(#"Valor Substituído",null,"",Replacer.ReplaceValue,{"Rp Ativo"}), 

    #"Linhas Filtradas2" = Table.SelectRows(#"Valor Substituído1", each true), 

    #"Tipo Alterado5" = Table.TransformColumnTypes(#"Linhas Filtradas2",{{"Tipo", type text}}), 

    #"Linhas Filtradas3" = Table.SelectRows(#"Tipo Alterado5", each ([STATUS] = "ATIVO")), 

    #"Valor Substituído3" = Table.ReplaceValue(#"Linhas Filtradas3","","Não",Replacer.ReplaceValue,{"Rp Ativo"}), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Valor Substituído3",{{"PREÇO", type number}}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Tipo Alterado",{{"Valor Unitário", "Custo em rp"}})
in
    #"Colunas Renomeadas";

shared Parâmetro4 = #"Arquivo de Amostra (23)" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra (23)", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo (4)" = let
    Fonte = Excel.Workbook(Parâmetro4, null, true),
    Planilha1_Sheet = Fonte{[Item="Planilha1",Kind="Sheet"]}[Data],
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(Planilha1_Sheet, [PromoteAllScalars=true])
in
    #"Cabeçalhos Promovidos";

shared #"Arquivo de Amostra (23)" = let
    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Lista de medicamentos"]}[Content],{"Content"}), 
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}),
    Navegação1 = #"Outras Colunas Removidas"{0}[Content]
in
    Navegação1;

shared #"Transformar Arquivo (4)" = let
    Fonte = (Parâmetro4 as binary) => let
    Fonte = Excel.Workbook(Parâmetro4, null, true),
    Planilha1_Sheet = Fonte{[Item="Planilha1",Kind="Sheet"]}[Data],
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(Planilha1_Sheet, [PromoteAllScalars=true])
in
    #"Cabeçalhos Promovidos"
in
    Fonte;

shared Controle_CI = let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_CADASTRO_CI_D1 #(lf)WHERE DATA_CI >= TIMESTAMP '2020-01-01 00:00:00.000000'"]),
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"NUMERO_CI", type text}, {"DATA_CI", type date}, {"DESTINO", type text}, {"ORIGEM_CI", type text}, {"SERVIDOR", type text}, {"ASSUNTO_CI", type text}, {"STATUS_CI", type text}, {"NUMERO_PROCESSO", type text}, {"descricao", type text} }),
    #"Duplicatas Removidas" = Table.Distinct(#"Tipo Alterado", {"NUMERO_CI"}),
    #"Texto Limpo" = Table.TransformColumns(#"Duplicatas Removidas",{{"descricao", Text.Clean, type text}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Texto Limpo","CISTEAMINA, (MERCAPTAMINA) 75 MG, CAPSULA OU COMPRIMIDO","CISTEAMINA, (MERCAPTAMINA) 75 MG, CAPSULA OU COMPRIMIDO (AJ)",Replacer.ReplaceText,{"descricao"}),
    #"Linhas Classificadas" = Table.Sort(#"Valor Substituído",{{"DATA_CI", Order.Ascending}}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Linhas Classificadas",{{"DATA_CI", "DATA_CI"}}),
    #"Linhas Filtradas1" = Table.SelectRows(#"Colunas Renomeadas1", each ([ORIGEM_CI] = "Coordenação" or [ORIGEM_CI] = "Núcleo de Atendimento MNS" or [ORIGEM_CI] = "Núcleo Planejamento MNS") and ([ASSUNTO_CI] = "Aquisição - Registro de Preços" or [ASSUNTO_CI] = "Dispensa de Licitação" or [ASSUNTO_CI] = "Solicitação de medicamentos sem RP Ativo") and ([SERVIDOR] <> "IURI MIRA" and [SERVIDOR] <> "JUNIELLA LUIZA MIRANDA" and [SERVIDOR] <> "LIVIA DE OLIVEIRA E SILVA SAMPAIO" and [SERVIDOR] <> "LUCAS DUARTE ANDRADE" and [SERVIDOR] <> "RODRIGO CARVALHO DE OLIVEIRA")),
    #"Colunas Removidas" = Table.RemoveColumns(#"Linhas Filtradas1",{"ORIGEM_CI",
"DESTINO"}),
    #"Linhas Classificadas1" = Table.Sort(#"Colunas Removidas",{{"DATA_CI", Order.Descending}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Linhas Classificadas1",{{"NUMERO_CI", "Nº CI"}, {"DATA_CI", "Data CI"}, {"SERVIDOR", "Servidor"}, {"ASSUNTO_CI", "Assunto CI"}, {"STATUS_CI", "Status CI"}, {"NUMERO_PROCESSO", "N° Processo"}, {"descricao", "Descrição"}}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Colunas Renomeadas","Solicitação de medicamentos sem RP Ativo","Dispensa de Licitação",Replacer.ReplaceValue,{"Assunto CI"}),
    #"Linhas Filtradas" = Table.SelectRows(#"Valor Substituído1", each true),
    #"Coluna Condicional Adicionada" = Table.AddColumn(#"Linhas Filtradas", "Tipo de atendimento", each if Text.Contains([Descrição], "ADMINIS") then "Administrativo" else "Judicial")
in
    #"Coluna Condicional Adicionada";

shared demanda = let

    // Carregar arquivos da pasta 
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_REL_PENDENCIAS_D1"]}[Data], 

    // Alterar tipos das colunas 
    TipoAlterado = Table.TransformColumnTypes(Fonte,{{"numero_pedido", Int64.Type}, {"numero_distribuicao", type text}, {"unidade_saude", type text}, {"programa_saude", type text}, {"data_pedido", type date}, {"data_distribuicao", type date}, {"periodo", type text}, {"medicamento_item", type text}, {"consumo_medio_mensal", Int64.Type}, {"qtd_pedida", Int64.Type}, {"qtd_autorizada", Int64.Type}, {"qtd_faturada", Int64.Type}, {"diferenca", Int64.Type}}), 

    #"Linhas Filtradas" = Table.SelectRows(TipoAlterado, each [programa_saude] = "AÇÃO JUDICIAL" or [programa_saude] = "AÇÃO JUDICIAL TERMOLÁBIL" or [programa_saude] = "CAJ - ADMINISTRATIVO"), 

    // Corrigir nomes de medicamentos 
    De = List.Buffer(Dicionário[De]), 
    Para = List.Buffer(Dicionário[Para]), 
    Nome_Corrigido = Table.TransformColumns(#"Linhas Filtradas", {"medicamento_item", each Fn_De_Para(_, De , Para), type text}), 

    // Remover colunas não necessárias 
    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"numero_pedido", "numero_distribuicao","periodo", "unidade_saude", "consumo_medio_mensal", "data_pedido"}), 
    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas",{{"medicamento_item", "Medicamento"}}), 
     

    // Mesclar com calendário e adicionar coluna de valor absoluto 
    #"Consultas Mescladas" = Table.NestedJoin(#"Colunas Renomeadas", {"data_distribuicao"}, _Calendario, {"Data"}, "_Calendario", JoinKind.LeftOuter), 
    #"Valor absoluto inserido" = Table.AddColumn(#"Consultas Mescladas", "Valor Absoluto", each Number.Abs([#"diferenca"]), type number), 
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Valor absoluto inserido",{{"Valor Absoluto", "dif Valor Absoluto"}}), 
    #"_Calendario Expandido" = Table.ExpandTableColumn(#"Colunas Renomeadas1", "_Calendario", {"Ano Mês Class"}, {"_Calendario.Ano Mês Class"}),   

    // Calcular intervalo de 7 meses a partir da data atual 
    DataAtual = DateTime.Date(DateTime.LocalNow()), 
    DataInicio = Date.AddMonths(DataAtual, -7), 
    DataFim = DataAtual, 
  

    // Filtrar dados para o intervalo de 7 meses 
    DMM = Table.SelectRows(#"_Calendario Expandido", each [#"data_distribuicao"] >= DataInicio and [#"data_distribuicao"] <= DataFim), 
    #"Linhas Classificadas2" = Table.Sort(DMM,{{"data_distribuicao", Order.Descending}}),   

    // Adicionar coluna de total consumo e agrupar dados 
    #"Personalização Adicionada" = Table.AddColumn(#"Linhas Classificadas2", "total consumo", each [#"qtd_faturada"]+[dif Valor Absoluto]), 
    #"Linhas Agrupadas" = Table.Group(#"Personalização Adicionada", {"Medicamento", "_Calendario.Ano Mês Class"}, {{"Contagem", each List.Sum([total consumo]), type number}}),      

    // Classificar e renomear colunas 
    #"Linhas Classificadas" = Table.Sort(#"Linhas Agrupadas",{{"_Calendario.Ano Mês Class", Order.Descending}}), 
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Linhas Classificadas",{{"_Calendario.Ano Mês Class", "periodo"}, {"Contagem", "faturado"}}), 
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Renomeadas2",{{"faturado", Int64.Type}}), 
    #"Texto Limpo" = Table.TransformColumns(#"Tipo Alterado1",{{"Medicamento", Text.Clean, type text}}), 
    #"Texto Aparado" = Table.TransformColumns(#"Texto Limpo",{{"Medicamento", Text.Trim, type text}}), 
    #"Linhas Classificadas1" = Table.Sort(#"Texto Aparado",{{"Medicamento", Order.Ascending}}) 
in 

    #"Linhas Classificadas1";

shared #"Arquivo de Amostra (27)" = let
    Fonte = SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]) 

{[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content] 

{[Name="Rp ativo_Simpas"]}[Content], 
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}),
    Navegação1 = #"Outras Colunas Removidas"{0}[Content]
in
    Navegação1;

shared Parâmetro8 = #"Arquivo de Amostra (27)" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra (27)", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo (8)" = let
    Fonte = Csv.Document(Parâmetro8,[Delimiter=";", Columns=24, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(Fonte, [PromoteAllScalars=true])
in
    #"Cabeçalhos Promovidos";

shared #"Transformar Arquivo (8)" = let
    Fonte = (Parâmetro8 as binary) => let
    Fonte = Csv.Document(Parâmetro8,[Delimiter=";", Columns=24, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(Fonte, [PromoteAllScalars=true])
in
    #"Cabeçalhos Promovidos"
in
    Fonte;

shared #"Monitoramento RP" = let    
Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="NRP"]}[Content],{"Content"}),
    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(Fonte, each [Attributes]?[Hidden]? <> true),
    #"Invocar Função Personalizada1" = Table.AddColumn(#"Arquivos Ocultos Filtrados1", "Transformar Arquivo (9)", each #"Transformar Arquivo (9)"([Content])),
    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (9)"}),
    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (9)", Table.ColumnNames(#"Transformar Arquivo (9)"(#"Arquivo de Amostra (7)"))),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Coluna de Tabela Expandida1",{{"Column1", type text}}),
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(#"Tipo Alterado1", [PromoteAllScalars=true]),
    #"Linhas Filtradas" = Table.SelectRows(#"Cabeçalhos Promovidos", each ([MEDICAMENTO] <> null)),
    // Renomeação da coluna original "CÓDIGO SIMPAS" para evitar conflitos
    RenomearCodigoOriginal = Table.RenameColumns(#"Linhas Filtradas", {{"CÓDIGO SIMPAS", "CodigoOriginal"}}),
    #"Tipo Alterado" = Table.TransformColumnTypes(RenomearCodigoOriginal,{{"CodigoOriginal", type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Tipo Alterado",{{"CodigoOriginal", Text.Clean, type text}}),
    #"Texto Aparado" = Table.TransformColumns(#"Texto Limpo",{{"CodigoOriginal", Text.Trim, type text}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Texto Aparado",".","",Replacer.ReplaceText,{"CodigoOriginal"}),
    // Criação da coluna personalizada "SIMPAS"
    ColunaPersonalizada = Table.AddColumn(#"Valor Substituído", "SIMPAS", each 
        Text.Combine({Text.Start([CodigoOriginal], 2), ".", 
                      Text.Middle([CodigoOriginal], 2, 2), ".19.", 
                      Text.Middle([CodigoOriginal], 6, 8), "-", 
                      Text.Middle([CodigoOriginal], 14)}), type text),
    // Limpeza de texto na coluna "MEDICAMENTO"
    MedicamentoLimpo = Table.TransformColumns(ColunaPersonalizada, {
        {"MEDICAMENTO", Text.Clean, type text}
    }),
    MedicamentoAparado = Table.TransformColumns(MedicamentoLimpo, {
        {"MEDICAMENTO", Text.Trim, type text}
    }),

    #"Colunas Removidas" = Table.RemoveColumns(MedicamentoAparado,{"CodigoOriginal", "RP COMPARTILHADO", "HOSPITALAR", "ESPECIALIZADA", "BÁSICA", "ORIGEM CI", "STATUS", "SETOR", "AÇÃO JUDICIAL", "N° PROCESSO"}),
    #"Texto Aparado1" = Table.TransformColumns(#"Colunas Removidas",{{"SIMPAS", Text.Trim, type text}}),
    #"Texto Limpo1" = Table.TransformColumns(#"Texto Aparado1",{{"SIMPAS", Text.Clean, type text}}),
    #"Erros Removidos" = Table.RemoveRowsWithErrors(#"Texto Limpo1", {"Prazo para ativação, caso logre Êxito"}),
    #"Erros Substituídos" = Table.ReplaceErrorValues(#"Erros Removidos", {{"Prazo para ativação, caso logre Êxito", null}}),
    #"Valor Substituído2" = Table.ReplaceValue(#"Erros Substituídos",null,"",Replacer.ReplaceValue,{"Prazo para ativação, caso logre Êxito"}),
    #"Erros Substituídos1" = Table.ReplaceErrorValues(#"Valor Substituído2", {{"SIMPAS", null}})
in
    #"Erros Substituídos1";

shared Dicionário = let 

    Fonte = Excel.Workbook(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Tabela Dicionário.xlsx"]}[Content]), 

    Tabela1_Table = Fonte{[Item="Tabela1",Kind="Table"]}[Data], 

    #"Tipo Alterado" = Table.TransformColumnTypes(Tabela1_Table,{{"Nome antigo", type text}, {"Nome atual", type text}}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Tipo Alterado",{{"Nome antigo", "De"}, {"Nome atual", "Para"}}) 

in 

    #"Colunas Renomeadas";

shared Fn_De_Para = (Texto as text , De as list , Para as list)=>
let
    Zip = List.Zip({ De , Para}),
    Resultado = List.ReplaceMatchingItems( {Texto} , Zip){0}
in
    Resultado;

shared Lotes = let 

    Fonte = Entradas, 

    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Lote"}), 

    #"Duplicatas Removidas" = Table.Distinct(#"Outras Colunas Removidas") 

in 

    #"Duplicatas Removidas";

shared #"Deposito judicial" = let 

    Fonte = Excel.Workbook(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Deposito judicial.xlsx"]}[Content]){[Name="Tabela1"]}[Data], 

    #"Texto Aparado" = Table.TransformColumns(Fonte,{{"Número do processo", Text.Trim, type text}, {"Interessado", Text.Trim, type text}, {"Ação Judicial", Text.Trim, type text}, {"Medicamento", Text.Trim, type text}, {" ESTOQUE", Text.Trim, type text}, {"Unidade Dispensadora", Text.Trim, type text}, {"Status", Text.Trim, type text}, {"SEI", Text.Trim, type text}}), 

    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"Número do processo", Text.Clean, type text}, {"Interessado", Text.Clean, type text}, {"Ação Judicial", Text.Clean, type text}, {"Medicamento", Text.Clean, type text}, {" ESTOQUE", Text.Clean, type text}, {"Unidade Dispensadora", Text.Clean, type text}, {"Status", Text.Clean, type text}, {"SEI", Text.Clean, type text}}), 

    #"Texto em Maiúscula" = Table.TransformColumns(#"Texto Limpo",{{"Interessado", Text.Upper, type text}, {"Medicamento", Text.Upper, type text}, {"Unidade Dispensadora", Text.Upper, type text}}), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Texto em Maiúscula",{{"Número do processo", type text}, {"Data Entrada", type date}, {"Interessado", type text}, {"Ação Judicial", type text}, {"Medicamento", type text}, {" ESTOQUE", type text}, {"Unidade Dispensadora", type text}, {"Status", type text}, {"Quantidade Autorizada", Int64.Type}, {"Frequência (em dias)", Int64.Type}, {"Período de tratamento (em meses)", Int64.Type}, {"Data do depósito", type date}, {"Cobertura do depósito (dias)", Int64.Type}, {"Data do próximo atendimento", type date}, {"SEI", type text}, {"Valor depositado", type number}}), 

    #"Colunas Removidas" = Table.RemoveColumns(#"Tipo Alterado",{" ESTOQUE", "Unidade Dispensadora", "Status", "Quantidade Autorizada", "Frequência (em dias)", "Período de tratamento (em meses)", "Cobertura do depósito (dias)"}) 

in 

    #"Colunas Removidas";

shared Faturamento_US = let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_FATURAMENTO_US_D1#(lf)WHERE DATA_AUTORIZACAO >= TIMESTAMP '2018-01-01 00:00:00.000000'"]),
    // Remove coluna desnecessária
    ColunasRemovidas = Table.RemoveColumns(Fonte, {"ALMOXARIFADO_ORIGEM"}),

    // Filtra linhas removendo palavras-chave indesejadas da coluna LISTA_MEDICAMENTO
    PalavrasChave = {
        "COAFE", "ESTRATÉGICO", "COMPONENTE", "INSULINA - MUNICÍPIO", "IMUNOGLOBULINA",
        "SAÚDE DA MULHER - MISOPROSTOL", "INSULINA - DIRES", "ANTICONCEPCIONAIS",
        "HOSPITALAR", "INFECÇÕES OPORTUNISTAS", "PALIVIZUMABE - PROTOCOLO ESTADUAL",
        "PROGRAMA AIDS", "PROGRAMA AIDS - MATERNIDADE / URE", "TESTE TUBERCULOSE - PPD",
        "PROCESSO CE E AJ: COMPLEMENTO ALIMENTAR", "ESTOQUE REGULADOR CEAF","KIT MEDICAMENTOS DESASTRE - ESTADUAL"
    },
    LinhasFiltradas = Table.SelectRows(ColunasRemovidas, each List.AllTrue(List.Transform(PalavrasChave, (x) => not Text.Contains([LISTA_MEDICAMENTO], x)))),

    // Limpeza da coluna MEDICAMENTO
    TextoAparado = Table.TransformColumns(LinhasFiltradas, {{"MEDICAMENTO", Text.Trim, type text}}),
    TextoLimpo = Table.TransformColumns(TextoAparado, {{"MEDICAMENTO", Text.Clean, type text}}),

    // Correção de nomes usando função Fn_De_Para
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    NomeCorrigido = Table.TransformColumns(TextoLimpo, {{"MEDICAMENTO", each Fn_De_Para(_, De, Para), type text}}),

    // Ajustes de tipo e limpeza final
    TipoAlterado = Table.TransformColumnTypes(NomeCorrigido, {{"NUMERO_PEDIDO", type text}, {"DATA_AGENDAMENTO", type date}}),
    TextoPedidoAparado = Table.TransformColumns(TipoAlterado, {{"NUMERO_PEDIDO", Text.Trim, type text}}),
    TextoPedidoLimpo = Table.TransformColumns(TextoPedidoAparado, {{"NUMERO_PEDIDO", Text.Clean, type text}}),
    TipoAlteradoFinal = Table.TransformColumnTypes(TextoPedidoLimpo, {{"DATA_AUTORIZACAO", type date}})
in
    TipoAlteradoFinal;

shared Parâmetro1 = #"Arquivo de Amostra" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo" = let
    Fonte = Excel.Workbook(Parâmetro1, null, true),
    #"EM ANDAMENTO SEM RP ATIVO_Sheet" = Fonte{[Item="EM ANDAMENTO SEM RP ATIVO",Kind="Sheet"]}[Data]
in
    #"EM ANDAMENTO SEM RP ATIVO_Sheet";

shared #"Arquivo de Amostra" = let
    // Carregamento da fonte de dados
    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="NRP"]}[Content],{"Content"}), 
    Navegação1 = Fonte{0}[Content]
in
    Navegação1;

shared #"Transformar Arquivo" = let
    Fonte = (Parâmetro1 as binary) => let
    Fonte = Excel.Workbook(Parâmetro1, null, true),
    #"EM ANDAMENTO SEM RP ATIVO_Sheet" = Fonte{[Item="EM ANDAMENTO SEM RP ATIVO",Kind="Sheet"]}[Data]
in
    #"EM ANDAMENTO SEM RP ATIVO_Sheet"
in
    Fonte;

shared #"Arquivo de Amostra (2)" = let
    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Controle de Aquisicao"]}[Content],{"Content"}), 
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}),
    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true),
    Navegação1 = #"Arquivos Ocultos Filtrados1"{0}[Content]
in
    Navegação1;

shared Parâmetro2 = #"Arquivo de Amostra (2)" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra (2)", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo (2)" = let
    Fonte = Csv.Document(Parâmetro2,[Delimiter=";", Columns=22, Encoding=1252, QuoteStyle=QuoteStyle.None])
in
    Fonte;

shared #"Transformar Arquivo (2)" = let
    Fonte = (Parâmetro2 as binary) => let
    Fonte = Csv.Document(Parâmetro2,[Delimiter=";", Columns=22, Encoding=1252, QuoteStyle=QuoteStyle.None])
in
    Fonte
in
    Fonte;

shared #"Processos em andamento" = let 

    Fonte = #"Controle de Dispensa_2", 

    #"Consulta Acrescentada" = Table.Combine({Fonte, #"Controle de Aquisicao", #"CI sem rp"}), 

    #"Colunas Removidas2" = Table.RemoveColumns(#"Consulta Acrescentada",{"servidor"}), 

    #"Texto Aparado1" = Table.TransformColumns(Table.TransformColumnTypes(#"Colunas Removidas2", {{"Quantidade", type text}, {"Data Conclusão Dispensa", type text}, {"Data CI", type text}, {"Data de Convocação para Assinatura", type text}, {"Data Assinatura AFM", type text}, {"Quantidade Entregue", type text}, {"Valor", type text}, {"Data Entrega AFM", type text}, {"Assunto CI", type text}}, "pt-BR"),{{"Código CI", Text.Trim, type text}, {"Medicamento", Text.Trim, type text}, {"Quantidade", Text.Trim, type text}, {"Status da Dispensa", Text.Trim, type text}, {"Data Conclusão Dispensa", Text.Trim, type text}, {"Data CI", Text.Trim, type text}, {"Origem CI", Text.Trim, type text}, {"Status CI", Text.Trim, type text}, {"Processo SEI", Text.Trim, type text}, {"Nº AFM", Text.Trim, type text}, {"Data de Convocação para Assinatura", Text.Trim, type text}, {"Data Assinatura AFM", Text.Trim, type text}, {"Quantidade Entregue", Text.Trim, type text}, {"Valor", Text.Trim, type text}, {"Data Entrega AFM", Text.Trim, type text}, {"Fornecedor", Text.Trim, type text}}), 

    #"Texto Limpo1" = Table.TransformColumns(#"Texto Aparado1",{{"Código CI", Text.Clean, type text}, {"Medicamento", Text.Clean, type text}, {"Quantidade", Text.Clean, type text}, {"Status da Dispensa", Text.Clean, type text}, {"Data Conclusão Dispensa", Text.Clean, type text}, {"Data CI", Text.Clean, type text}, {"Origem CI", Text.Clean, type text}, {"Status CI", Text.Clean, type text}, {"Processo SEI", Text.Clean, type text}, {"Nº AFM", Text.Clean, type text}, {"Data de Convocação para Assinatura", Text.Clean, type text}, {"Data Assinatura AFM", Text.Clean, type text}, {"Quantidade Entregue", Text.Clean, type text}, {"Valor", Text.Clean, type text}, {"Data Entrega AFM", Text.Clean, type text}, {"Fornecedor", Text.Clean, type text}}), 

    #"Valor Substituído" = Table.ReplaceValue(#"Texto Limpo1",null,"Dispensa de Licitação",Replacer.ReplaceValue,{"Assunto CI"}), 

    #"Linhas Filtradas" = Table.SelectRows(#"Valor Substituído", each true), 

    #"Duplicatas Removidas" = Table.Distinct(#"Linhas Filtradas", {"Assunto CI", "Código CI", "Medicamento"}), 

    #"Colunas Removidas" = Table.RemoveColumns(#"Duplicatas Removidas",{"Valor", "Data Entrega AFM", "Fornecedor"}), 

    #"Linhas Filtradas2" = Table.SelectRows(#"Colunas Removidas", each ([Status da Dispensa] <> "Cancelada")), 

    #"Duplicatas Removidas2" = Table.Distinct(#"Linhas Filtradas2", {"Código CI", "Medicamento", "Processo SEI"}), 

    #"Consultas Mescladas" = Table.NestedJoin(#"Duplicatas Removidas2", {"Código CI"}, Controle_CI, {"Nº CI"}, "Controle_CI", JoinKind.LeftOuter), 

    #"Controle_CI Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas", "Controle_CI", {"N° Processo"}, {"Controle_CI.N° Processo"}), 

    #"Colunas Reordenadas" = Table.ReorderColumns(#"Controle_CI Expandido",{"Código CI", "Medicamento", "Quantidade", "Status da Dispensa", "Data Conclusão Dispensa", "Data CI", "Origem CI", "Status CI", "Processo SEI", "Controle_CI.N° Processo", "Nº AFM", "Data de Convocação para Assinatura", "Data Assinatura AFM", "Quantidade Entregue", "Assunto CI"}), 

    #"Coluna Condicional Adicionada" = Table.AddColumn(#"Colunas Reordenadas", "SEI", each if [Processo SEI] = "" then [#"Controle_CI.N° Processo"] else [Processo SEI]), 

    #"Colunas Reordenadas1" = Table.ReorderColumns(#"Coluna Condicional Adicionada",{"Código CI", "Medicamento", "Quantidade", "Status da Dispensa", "Data Conclusão Dispensa", "Data CI", "Origem CI", "Status CI", "Processo SEI", "Controle_CI.N° Processo", "SEI", "Nº AFM", "Data de Convocação para Assinatura", "Data Assinatura AFM", "Quantidade Entregue", "Assunto CI"}), 

    #"Colunas Removidas1" = Table.RemoveColumns(#"Colunas Reordenadas1",{"Processo SEI", "Controle_CI.N° Processo"}), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Colunas Removidas1",{{"Data de Convocação para Assinatura", type date}}), 

    #"Valor Substituído1" = Table.ReplaceValue(#"Tipo Alterado",null,0,Replacer.ReplaceValue,{"Quantidade Entregue"}), 

    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Quantidade", Int64.Type}, {"Data Conclusão Dispensa", type date}, {"Data CI", type date}, {"Quantidade Entregue", Int64.Type}}), 

    #"Linhas Classificadas" = Table.Sort(#"Tipo Alterado1",{{"Data Conclusão Dispensa", Order.Descending}}) 

in 

    #"Linhas Classificadas";

shared #"Arquivo de Amostra (3)" = let
    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Controle de Aquisicao"]}[Content],{"Content"}), 
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}),
    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true),
    Navegação1 = #"Arquivos Ocultos Filtrados1"{0}[Content]
in
    Navegação1;

shared Parâmetro3 = #"Arquivo de Amostra (3)" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra (3)", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo (3)" = let
    Fonte = Csv.Document(Parâmetro3,[Delimiter=";", Columns=22, Encoding=1252, QuoteStyle=QuoteStyle.None])
in
    Fonte;

shared #"Transformar Arquivo (3)" = let
    Fonte = (Parâmetro3 as binary) => let
    Fonte = Csv.Document(Parâmetro3,[Delimiter=";", Columns=22, Encoding=1252, QuoteStyle=QuoteStyle.None])
in
    Fonte
in
    Fonte;

shared #"Arquivo de Amostra (4)" = let
    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Controle de Dispensa"]}[Content],{"Content"}), 
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}),
    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true),
    Navegação1 = #"Arquivos Ocultos Filtrados1"{0}[Content]
in
    Navegação1;

shared Parâmetro5 = #"Arquivo de Amostra (4)" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra (4)", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo (5)" = let
    Fonte = Csv.Document(Parâmetro5,[Delimiter=";", Columns=25, Encoding=1252, QuoteStyle=QuoteStyle.None])
in
    Fonte;

shared #"Transformar Arquivo (5)" = let
    Fonte = (Parâmetro5 as binary) => let
    Fonte = Csv.Document(Parâmetro5,[Delimiter=";", Columns=25, Encoding=1252, QuoteStyle=QuoteStyle.None])
in
    Fonte
in
    Fonte;

shared Ressarcimentos_AJ = let
    Fonte = SharePoint.Tables("https://prodeboffice365-my.sharepoint.com/personal/dasf_caj_saude_ba_gov_br", [ApiVersion = 15]),
    #"43a5ff37-8608-4a78-befb-3a00aef6c3a2" = Fonte{[Id="43a5ff37-8608-4a78-befb-3a00aef6c3a2"]}[Items],
    #"Colunas Renomeadas" = Table.RenameColumns(#"43a5ff37-8608-4a78-befb-3a00aef6c3a2",{{"ID", "ID.1"}}),
    #"Outras Colunas Removidas" = Table.SelectColumns(#"Colunas Renomeadas",{"Title", "Valor", "DatadoEnvio", "Paciente", "Ano/referência", "Created", "Ofício", "NPU", "Status"}),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Outras Colunas Removidas",{{"Valor", Currency.Type}, {"DatadoEnvio", type date}, {"Created", type date}, {"Ano/referência", type text}}),
    #"Texto Aparado" = Table.TransformColumns(#"Tipo Alterado",{{"Title", Text.Trim, type text}, {"Paciente", Text.Trim, type text}, {"Ano/referência", Text.Trim, type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"Title", Text.Clean, type text}, {"Paciente", Text.Clean, type text}, {"Ano/referência", Text.Clean, type text}}),
    #"Texto em Maiúscula" = Table.TransformColumns(#"Texto Limpo",{{"Title", Text.Upper, type text}, {"Paciente", Text.Upper, type text}, {"Ano/referência", Text.Upper, type text}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Texto em Maiúscula",null,"",Replacer.ReplaceValue,{"DatadoEnvio", "Ano/referência"}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Valor Substituído",{{"Title", "Medicamento"}, {"DatadoEnvio", "Data Envio"}}),
    #"Colunas Removidas" = Table.RemoveColumns(#"Colunas Renomeadas1",{"Created"}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Colunas Removidas",null,"",Replacer.ReplaceValue,{"Ofício", "NPU", "Status"}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Data Envio", type date}})
in
    #"Tipo Alterado1";

shared salario_minimo = let
    Fonte = Table.FromRows({
        {#date(2025, 1, 1), "1.518,00"},
        {#date(2024, 1, 1), "1.412,00"},
        {#date(2023, 1, 1), "1.320,00"},
        {#date(2022, 1, 1), "1.212,00"},
        {#date(2021, 1, 1), "1.100,00"},
        {#date(2020, 1, 1), "1.045,00"},
        {#date(2019, 1, 1), "998,00"},
        {#date(2018, 1, 1), "954,00"}
        
    },
    {"Data", "Salário mensal"}),
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"Data", type date}, {"Salário mensal", Currency.Type}}),
    #"Personalização Adicionada" = Table.AddColumn(#"Tipo Alterado", "7_sal", each [Salário mensal]*7),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Personalização Adicionada",{{"7_sal", Currency.Type}}),
    #"Personalização Adicionada1" = Table.AddColumn(#"Tipo Alterado1", "210_sal", each [Salário mensal]*210),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Personalização Adicionada1",{{"210_sal", Currency.Type}})
in
    #"Tipo Alterado2";

shared Interessados = let
    Fonte = Pacientes,
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Interessado","SEI", "Interessado-SEI"}),
    #"Linhas Classificadas" = Table.Sort(#"Outras Colunas Removidas",{{"Interessado", Order.Ascending}}),
    #"Duplicatas Removidas" = Table.Distinct(#"Linhas Classificadas", {"Interessado"})
in
    #"Duplicatas Removidas";

shared Entradas_MS = let 

    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_REL_ENTRADA#(lf)WHERE DATA_CADASTRO >= TIMESTAMP '2018-01-01 00:00:00.000000'"]), 

    #"Linhas Filtradas4" = Table.SelectRows(Fonte, each ([STATUS_ENTRADA] = "Ativa") and ([UNIDADE] = "CEFARBA - CENTRAL FARMACÊUTICA DO ESTADO DA BAHIA")), 

    TipoAlterado = Table.TransformColumnTypes(#"Linhas Filtradas4",{{"VALOR_UNITARIO", Currency.Type}, {"QUANTIDADE", Int64.Type}, {"DATA_CADASTRO", type date}, {"DATA_RECEBIMENTO", type date}}), 

    #"Texto Limpo1" = Table.TransformColumns(TipoAlterado,{{"MEDICAMENTO", Text.Clean, type text}}), 

    #"Texto Aparado1" = Table.TransformColumns(#"Texto Limpo1",{{"MEDICAMENTO", Text.Trim, type text}}), 

    De = List.Buffer(Dicionário[De]), 

    Para = List.Buffer(Dicionário[Para]), 

    Nome_Corrigido = Table.TransformColumns(#"Texto Aparado1", {"MEDICAMENTO", each Fn_De_Para(_, De , Para), type text}),  

    

    

    

   #"Linhas Classificadas" = Table.Sort(Nome_Corrigido,{{"DATA_CADASTRO", Order.Ascending}}), 

    #"Dividir Coluna por Transição de Caractere" = Table.SplitColumn(#"Linhas Classificadas", "NUMERO_NOTA_FISCAL", Splitter.SplitTextByCharacterTransition({"0".."9"}, (c) => not List.Contains({"0".."9"}, c)), {"NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.2"}), 

    #"Colunas Removidas2" = Table.RemoveColumns(#"Dividir Coluna por Transição de Caractere",{"NUMERO_NOTA_FISCAL.2"}), 

    #"Coluna Duplicada" = Table.DuplicateColumn(#"Colunas Removidas2", "NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.1 - Copiar"), 

    #"Colunas Reordenadas" = Table.ReorderColumns(#"Coluna Duplicada",{"UNIDADE", "DATA_CADASTRO", "DATA_RECEBIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO", "NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.1 - Copiar", "MEDICAMENTO", "LOTE", "QUANTIDADE", "VALOR_UNITARIO"}), 

    #"Coluna Duplicada1" = Table.DuplicateColumn(#"Colunas Reordenadas", "NUMERO_AUTORIZACAO_FORNECIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"), 

    #"Colunas Reordenadas1" = Table.ReorderColumns(#"Coluna Duplicada1",{"UNIDADE", "DATA_CADASTRO", "DATA_RECEBIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar", "NUMERO_NOTA_FISCAL.1", "NUMERO_NOTA_FISCAL.1 - Copiar", "MEDICAMENTO", "LOTE", "QUANTIDADE", "VALOR_UNITARIO"}), 

    #"Valor Substituído" = Table.ReplaceValue(#"Colunas Reordenadas1","","Outras entradas",Replacer.ReplaceValue,{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"}), 

    #"Valor Substituído1" = Table.ReplaceValue(#"Valor Substituído"," CREASI","",Replacer.ReplaceText,{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"}), 

    #"Linhas Filtradas" = Table.SelectRows(#"Valor Substituído1", each true), 

    #"Valor Substituído2" = Table.ReplaceValue(#"Linhas Filtradas","DEVOLUÇÃO","Outras entradas",Replacer.ReplaceText,{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar"}), 

    #"Colunas Removidas4" = Table.RemoveColumns(#"Valor Substituído2",{"NUMERO_NOTA_FISCAL.1 - Copiar"}), 

    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas4",{{"NUMERO_AUTORIZACAO_FORNECIMENTO - Copiar", "Tipo Entrada"}}), 

    #"Texto em Maiúscula" = Table.TransformColumns(#"Colunas Renomeadas",{{"NUMERO_NOTA_FISCAL.1", Text.Upper, type text}, {"NUMERO_AUTORIZACAO_FORNECIMENTO", Text.Upper, type text}}), 

    #"Valor Substituído3" = Table.ReplaceValue(#"Texto em Maiúscula",null,"vazio",Replacer.ReplaceValue,{"NUMERO_AUTORIZACAO_FORNECIMENTO"}), 

    #"Coluna Condicional Adicionada" = Table.AddColumn(#"Valor Substituído3", "Personalizar", each if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "DOAÇÃO") then "Doação" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "DEV") then "Devolução" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "STIMO") then "Empréstimo" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "TROCA") then "Troca" else if Text.Contains([NUMERO_AUTORIZACAO_FORNECIMENTO], "BONIFICAÇÃO") then "Bonificação" else if [NUMERO_NOTA_FISCAL.1] = "CONTAGEM INICIAL" then "Contagem Inicial" else if Text.StartsWith([NUMERO_NOTA_FISCAL.1], "DEV") then "Devolução" else if Text.Contains([NUMERO_NOTA_FISCAL.1], "EMPRES") then "Empréstimo" else if Text.Contains([NUMERO_NOTA_FISCAL.1], "DOAÇÃO") then "Doação" else if Text.Contains([NUMERO_NOTA_FISCAL.1], "PERM") then "Outras Entradas" else "Aquisição"), 

    #"Colunas Reordenadas2" = Table.ReorderColumns(#"Coluna Condicional Adicionada",{"UNIDADE", "DATA_CADASTRO", "DATA_RECEBIMENTO", "NUMERO_AUTORIZACAO_FORNECIMENTO", "Tipo Entrada", "NUMERO_NOTA_FISCAL.1", "Personalizar", "MEDICAMENTO", "LOTE", "QUANTIDADE", "VALOR_UNITARIO"}), 

    #"Linhas Filtradas1" = Table.SelectRows(#"Colunas Reordenadas2", each true), 

    #"Colunas Removidas5" = Table.RemoveColumns(#"Linhas Filtradas1",{"Tipo Entrada"}), 

    #"Colunas Renomeadas1" = Table.RenameColumns(#"Colunas Removidas5",{{"Personalizar", "Tipo de entrada"}}), 

    #"Linhas Filtradas6" = Table.SelectRows(#"Colunas Renomeadas1", each Text.Contains([NOME_PROGRAMA], "CEAF") or Text.Contains([NOME_PROGRAMA], "ONCOLOGIA")), 

    #"Linhas Filtradas3" = Table.SelectRows(#"Linhas Filtradas6", each true), 

    #"Tipo Alterado" = Table.TransformColumnTypes(#"Linhas Filtradas3",{{"LOTE", type text}}), 

    #"Texto Aparado" = Table.TransformColumns(#"Tipo Alterado",{{"LOTE", Text.Trim, type text}}), 

    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"LOTE", Text.Clean, type text}}), 

    #"Linhas Filtradas5" = Table.SelectRows(#"Texto Limpo", each [DATA_CADASTRO] > #date(2018, 1, 1)), 

    #"Colunas Removidas" = Table.RemoveColumns(#"Linhas Filtradas5",{"DATA_ESTORNO", "STATUS_ENTRADA"}), 

    #"Texto em Maiúscula1" = Table.TransformColumns(#"Colunas Removidas",{{"MEDICAMENTO", Text.Upper, type text}}), 

    #"Colunas Renomeadas2" = Table.RenameColumns(#"Texto em Maiúscula1",{{"UNIDADE", "Unidade"}, {"DATA_CADASTRO", "Data Cadastro"}, {"DATA_RECEBIMENTO", "Data Recebimento"}, {"NUMERO_AUTORIZACAO_FORNECIMENTO", "Nº Autorização de Fornecimento"}, {"NUMERO_NOTA_FISCAL.1", "Nº Nota Fiscal .1"}, {"MEDICAMENTO", "Medicamento"}, {"LOTE", "Lote"}, {"QUANTIDADE", "Quantidade"}, {"VALOR_UNITARIO", "Valor Unitário"}}), 

    #"Linhas Filtradas2" = Table.SelectRows(#"Colunas Renomeadas2", each not Text.StartsWith([NUMERO_ENTRADA], "043046325061394")), 

    #"Colunas Renomeadas3" = Table.RenameColumns(#"Linhas Filtradas2",{{"Nº Nota Fiscal .1", "NF"}, {"Data Recebimento", "Data"}, {"Tipo de entrada", "Tipo"}, {"Valor Unitário", "Valor unitário"}}), 

    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Renomeadas3",{{"Tipo", type text}}), 

    #"Colunas Renomeadas4" = Table.RenameColumns(#"Tipo Alterado1",{{"NUMERO_PROCESSO", "Pedido-SEI"}}), 

    #"Colunas Removidas1" = Table.RemoveColumns(#"Colunas Renomeadas4",{"Unidade", "NUMERO_ENTRADA", "Data Cadastro", "Lote"}), 

    #"Linhas Filtradas7" = Table.SelectRows(#"Colunas Removidas1", each ([NOME_PROGRAMA] <> "ESTOQUE REGULADOR CEAF")), 

    #"Valor Substituído4" = Table.ReplaceValue(#"Linhas Filtradas7","ASSISTÊNCIA FARMACÊUTICA NA ATENÇÃO ESPECIALIZADA (CEAF 1A - MS)","CEAF 1A - MS",Replacer.ReplaceValue,{"NOME_PROGRAMA"}), 

    #"Valor Substituído5" = Table.ReplaceValue(#"Valor Substituído4","ASSISTÊNCIA FARMACÊUTICA NA ATENÇÃO ESPECIALIZADA (CEAF 1A - MS) #(tab)TERMOLÁBIL","CEAF 1A - MS",Replacer.ReplaceValue,{"NOME_PROGRAMA"}), 

    #"Valor Substituído6" = Table.ReplaceValue(#"Valor Substituído5","ASSISTÊNCIA FARMACÊUTICA NA ATENÇÃO ESPECIALIZADA (CEAF 1B SESAB)","CEAF 1B SESAB",Replacer.ReplaceText,{"NOME_PROGRAMA"}), 

    #"Valor Substituído7" = Table.ReplaceValue(#"Valor Substituído6","ASSISTÊNCIA FARMACÊUTICA NA ATENÇÃO ESPECIALIZADA (CEAF GRUPO 2 - SESAB)","CEAF GRUPO 2 - SESAB",Replacer.ReplaceText,{"NOME_PROGRAMA"}), 

    #"Linhas Filtradas8" = Table.SelectRows(#"Valor Substituído7", each not Text.Contains([#"Pedido-SEI"], "DEV")), 

    #"Texto Limpo2" = Table.TransformColumns(#"Linhas Filtradas8",{{"Medicamento", Text.Clean, type text}}), 

    #"Texto Aparado2" = Table.TransformColumns(#"Texto Limpo2",{{"Medicamento", Text.TrimStart, type text}})
in
    #"Texto Aparado2";

shared Parâmetro7 = #"Arquivo de Amostra (6)" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra (6)", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo (7)" = let
    Fonte = Excel.Workbook(Parâmetro7, null, true),
    #"EM ANDAMENTO SEM RP ATIVO_Sheet" = Fonte{[Item="EM ANDAMENTO SEM RP ATIVO",Kind="Sheet"]}[Data]
in
    #"EM ANDAMENTO SEM RP ATIVO_Sheet";

shared #"Arquivo de Amostra (6)" = let     

Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="NRP"]}[Content],{"Content"}),
    Navegação1 = Fonte{0}[Content]
in
    Navegação1;

[ FunctionQueryBinding = "{""exemplarFormulaName"":""Transformar o Arquivo de Exemplo (7)""}" ]shared #"Transformar Arquivo (7)" = let
    Fonte = (Parâmetro7 as binary) => let
    Fonte = Excel.Workbook(Parâmetro7, null, true),
    #"EM ANDAMENTO SEM RP ATIVO_Sheet" = Fonte{[Item="EM ANDAMENTO SEM RP ATIVO",Kind="Sheet"]}[Data]
in
    #"EM ANDAMENTO SEM RP ATIVO_Sheet"
in
    Fonte;

shared Parâmetro9 = #"Arquivo de Amostra (7)" meta [IsParameterQuery=true, BinaryIdentifier=#"Arquivo de Amostra (7)", Type="Binary", IsParameterQueryRequired=true];

shared #"Transformar o Arquivo de Exemplo (9)" = let
    Fonte = Excel.Workbook(Parâmetro9, null, true),
    #"EM ANDAMENTO SEM RP ATIVO_Sheet" = Fonte{[Item="EM ANDAMENTO SEM RP ATIVO",Kind="Sheet"]}[Data]
in
    #"EM ANDAMENTO SEM RP ATIVO_Sheet";

shared #"Arquivo de Amostra (7)" = let    
Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="NRP"]}[Content],{"Content"}),
    Navegação1 = Fonte{0}[Content]
in
    Navegação1;

[ FunctionQueryBinding = "{""exemplarFormulaName"":""Transformar o Arquivo de Exemplo (9)""}" ]shared #"Transformar Arquivo (9)" = let
    Fonte = (Parâmetro9 as binary) => let
    Fonte = Excel.Workbook(Parâmetro9, null, true),
    #"EM ANDAMENTO SEM RP ATIVO_Sheet" = Fonte{[Item="EM ANDAMENTO SEM RP ATIVO",Kind="Sheet"]}[Data]
in
    #"EM ANDAMENTO SEM RP ATIVO_Sheet"
in
    Fonte;

shared Ressarcimento_Geral = let
    Fonte = Excel.Workbook(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Ressarcimento Interfederativo"]}[Content]{[Name="Ressarcimento_Geral.xlsx"]}[Content]){[Name="processos"]}[Data],
    #"Texto Aparado" = Table.TransformColumns(Table.TransformColumnTypes(Fonte, {{"Qtde", type text}, {"Ano", type text}}, "pt-BR"),{{"Interessado", Text.Trim, type text}, {"Medicamento", Text.Trim, type text}, {"Unidade Dispensadora", Text.Trim, type text}, {"Status Sigaf", Text.Trim, type text}, {"Qtde", Text.Trim, type text}, {"Status", Text.Trim, type text}, {"Ano", Text.Trim, type text}, {"Responsável", Text.Trim, type text}, {"OBS", Text.Trim, type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"Interessado", Text.Clean, type text}, {"Medicamento", Text.Clean, type text}, {"Unidade Dispensadora", Text.Clean, type text}, {"Status Sigaf", Text.Clean, type text}, {"Qtde", Text.Clean, type text}, {"Status", Text.Clean, type text}, {"Ano", Text.Clean, type text}, {"Responsável", Text.Clean, type text}, {"OBS", Text.Clean, type text}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Texto Limpo",null,"",Replacer.ReplaceValue,{"Interessado", "Medicamento", "Unidade Dispensadora", "Status Sigaf", "Qtde", "Status", "Ano", "Responsável", "OBS"}),
    #"Consultas Mescladas" = Table.NestedJoin(#"Valor Substituído", {"Interessado"}, Pacientes, {"Interessado-SEI"}, "Pacientes", JoinKind.LeftOuter),
    #"Pacientes Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas", "Pacientes", {"Interessado"}, {"Nome"})
in
    #"Pacientes Expandido";

WebView2 Runtime Version:
148.0.3967.96

WebView2 SDK Version:
1.0.2365.46