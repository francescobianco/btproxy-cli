.class Lfreemarker/debug/impl/RmiDebuggerImpl;
.super Ljava/rmi/server/UnicastRemoteObject;
.source "RmiDebuggerImpl.java"

# interfaces
.implements Lfreemarker/debug/Debugger;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final service:Lfreemarker/debug/impl/RmiDebuggerService;


# direct methods
.method protected constructor <init>(Lfreemarker/debug/impl/RmiDebuggerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/rmi/server/UnicastRemoteObject;-><init>()V

    .line 43
    iput-object p1, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    return-void
.end method


# virtual methods
.method public addBreakpoint(Lfreemarker/debug/Breakpoint;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/RmiDebuggerService;->addBreakpoint(Lfreemarker/debug/Breakpoint;)V

    return-void
.end method

.method public addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;
    .registers 3

    .line 51
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/RmiDebuggerService;->addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBreakpoints()Ljava/util/List;
    .registers 2

    .line 55
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0}, Lfreemarker/debug/impl/RmiDebuggerService;->getBreakpointsSpi()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBreakpoints(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 59
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/RmiDebuggerService;->getBreakpointsSpi(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSuspendedEnvironments()Ljava/util/Collection;
    .registers 2

    .line 63
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0}, Lfreemarker/debug/impl/RmiDebuggerService;->getSuspendedEnvironments()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeBreakpoint(Lfreemarker/debug/Breakpoint;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/RmiDebuggerService;->removeBreakpoint(Lfreemarker/debug/Breakpoint;)V

    return-void
.end method

.method public removeBreakpoints()V
    .registers 2

    .line 75
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0}, Lfreemarker/debug/impl/RmiDebuggerService;->removeBreakpoints()V

    return-void
.end method

.method public removeBreakpoints(Ljava/lang/String;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/RmiDebuggerService;->removeBreakpoints(Ljava/lang/String;)V

    return-void
.end method

.method public removeDebuggerListener(Ljava/lang/Object;)V
    .registers 3

    .line 71
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerImpl;->service:Lfreemarker/debug/impl/RmiDebuggerService;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/RmiDebuggerService;->removeDebuggerListener(Ljava/lang/Object;)V

    return-void
.end method
