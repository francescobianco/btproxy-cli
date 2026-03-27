.class Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$1;->doStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_3e

    .line 218
    :try_start_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_33

    if-eq v0, v1, :cond_1d

    .line 227
    :try_start_13
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_3e

    return-void

    .line 225
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_33

    .line 227
    :try_start_24
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyStopped()V

    return-void

    :catchall_33
    move-exception v0

    .line 227
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    .line 231
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 232
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
