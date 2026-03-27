.class Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V
    .registers 3

    .line 129
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 135
    :try_start_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    invoke-static {v2}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 137
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_58

    .line 138
    :try_start_12
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    if-nez v3, :cond_2a

    .line 140
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    invoke-static {v3, v0}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_4d

    .line 142
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v1

    move v3, v0

    goto :goto_51

    .line 144
    :cond_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_4d

    .line 148
    :try_start_2b
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_58

    goto :goto_0

    :catch_2f
    move-exception v2

    .line 151
    :try_start_30
    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$400()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_58

    goto :goto_0

    :catchall_4d
    move-exception v3

    move-object v8, v3

    move v3, v1

    move-object v1, v8

    .line 144
    :goto_51
    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_56

    :try_start_52
    throw v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v2

    move v1, v3

    goto :goto_59

    :catchall_56
    move-exception v1

    goto :goto_51

    :catchall_58
    move-exception v2

    :goto_59
    if-eqz v1, :cond_6c

    .line 160
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 161
    :try_start_62
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    invoke-static {v3, v0}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 162
    monitor-exit v1

    goto :goto_6c

    :catchall_69
    move-exception v0

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    throw v0

    :cond_6c
    :goto_6c
    throw v2
.end method
