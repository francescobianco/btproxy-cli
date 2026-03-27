.class Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;
.super Ljava/lang/Object;
.source "DebuggerClient.java"

# interfaces
.implements Lfreemarker/debug/Debugger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/DebuggerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDebuggerProxy"
.end annotation


# instance fields
.field private final remoteDebugger:Lfreemarker/debug/Debugger;


# direct methods
.method constructor <init>(Lfreemarker/debug/Debugger;)V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    return-void
.end method


# virtual methods
.method public addBreakpoint(Lfreemarker/debug/Breakpoint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->addBreakpoint(Lfreemarker/debug/Breakpoint;)V

    return-void
.end method

.method public addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 103
    instance-of v0, p1, Ljava/rmi/server/RemoteObject;

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 106
    :cond_b
    new-instance v0, Lfreemarker/debug/impl/RmiDebuggerListenerImpl;

    invoke-direct {v0, p1}, Lfreemarker/debug/impl/RmiDebuggerListenerImpl;-><init>(Lfreemarker/debug/DebuggerListener;)V

    .line 108
    iget-object p1, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {p1, v0}, Lfreemarker/debug/Debugger;->addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBreakpoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0}, Lfreemarker/debug/Debugger;->getBreakpoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBreakpoints(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->getBreakpoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSuspendedEnvironments()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0}, Lfreemarker/debug/Debugger;->getSuspendedEnvironments()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeBreakpoint(Lfreemarker/debug/Breakpoint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->removeBreakpoint(Lfreemarker/debug/Breakpoint;)V

    return-void
.end method

.method public removeBreakpoints()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0}, Lfreemarker/debug/Debugger;->removeBreakpoints()V

    return-void
.end method

.method public removeBreakpoints(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->removeBreakpoints(Ljava/lang/String;)V

    return-void
.end method

.method public removeDebuggerListener(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;->remoteDebugger:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->removeDebuggerListener(Ljava/lang/Object;)V

    return-void
.end method
