.class Lfreemarker/debug/impl/DebuggerServer$1;
.super Ljava/lang/Object;
.source "DebuggerServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/debug/impl/DebuggerServer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/debug/impl/DebuggerServer;


# direct methods
.method constructor <init>(Lfreemarker/debug/impl/DebuggerServer;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lfreemarker/debug/impl/DebuggerServer$1;->this$0:Lfreemarker/debug/impl/DebuggerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 66
    iget-object v0, p0, Lfreemarker/debug/impl/DebuggerServer$1;->this$0:Lfreemarker/debug/impl/DebuggerServer;

    # invokes: Lfreemarker/debug/impl/DebuggerServer;->startInternal()V
    invoke-static {v0}, Lfreemarker/debug/impl/DebuggerServer;->access$000(Lfreemarker/debug/impl/DebuggerServer;)V

    return-void
.end method
