.class Lcom/keephealth/android/util/log/LogService$1;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/log/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/log/LogService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/log/LogService;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # invokes: Lcom/keephealth/android/util/log/LogService;->deleteOutDateLog()V
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$000(Lcom/keephealth/android/util/log/LogService;)V

    .line 84
    :goto_5
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mIsStopLog:Z
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$100(Lcom/keephealth/android/util/log/LogService;)Z

    move-result v0

    const-string v1, "[IDO_APP] LogService"

    if-nez v0, :cond_9c

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$200(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 88
    :try_start_18
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$300(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$400(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 91
    :cond_2d
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mIsStopLog:Z
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$100(Lcom/keephealth/android/util/log/LogService;)Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_33} :catch_78
    .catchall {:try_start_18 .. :try_end_33} :catchall_76

    if-eqz v0, :cond_3f

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$200(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_9c

    .line 95
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$300(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 96
    aget-object v2, v0, v2

    const/4 v3, 0x1

    .line 97
    aget-object v0, v0, v3

    .line 98
    iget-object v3, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # invokes: Lcom/keephealth/android/util/log/LogService;->createLogFileDir(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogService;->access$500(Lcom/keephealth/android/util/log/LogService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 99
    iget-object v3, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # invokes: Lcom/keephealth/android/util/log/LogService;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/keephealth/android/util/log/LogService;->access$600(Lcom/keephealth/android/util/log/LogService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 101
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createLogFileDir failed:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_75} :catch_78
    .catchall {:try_start_3f .. :try_end_75} :catchall_76

    goto :goto_87

    :catchall_76
    move-exception v0

    goto :goto_92

    :catch_78
    move-exception v0

    .line 105
    :try_start_79
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_76

    .line 108
    :goto_87
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/keephealth/android/util/log/LogService;->access$200(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_5

    :goto_92
    iget-object v1, p0, Lcom/keephealth/android/util/log/LogService$1;->this$0:Lcom/keephealth/android/util/log/LogService;

    # getter for: Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/keephealth/android/util/log/LogService;->access$200(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    throw v0

    .line 113
    :cond_9c
    :goto_9c
    const-string v0, "exit loop ok!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
