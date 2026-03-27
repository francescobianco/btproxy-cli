.class Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 77
    const-string v0, ",........."

    const-wide/16 v1, 0xa

    :try_start_4
    iget-object v3, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_85

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    iget-object v4, v4, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    iget-object v3, v3, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 83
    :goto_3b
    iget-object v0, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->scheduleNext()V

    return-void

    .line 86
    :cond_41
    iget-object v3, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    instance-of v4, v3, Lcom/keephealth/android/receiver/task/RunTask;

    if-eqz v4, :cond_7f

    .line 87
    check-cast v3, Lcom/keephealth/android/receiver/task/RunTask;

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Lcom/keephealth/android/receiver/task/RunTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 91
    :goto_6f
    invoke-virtual {v3}, Lcom/keephealth/android/receiver/task/RunTask;->isExeRunFinish()Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_7f

    .line 95
    :cond_76
    :try_start_76
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_6f

    :catch_7a
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6f

    .line 102
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->scheduleNext()V

    return-void

    :catchall_85
    move-exception v3

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    iget-object v5, v5, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    iget-object v4, v4, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b9

    goto :goto_3b

    .line 86
    :cond_b9
    iget-object v4, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    instance-of v5, v4, Lcom/keephealth/android/receiver/task/RunTask;

    if-eqz v5, :cond_f6

    .line 87
    check-cast v4, Lcom/keephealth/android/receiver/task/RunTask;

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v4, Lcom/keephealth/android/receiver/task/RunTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 91
    :goto_e7
    invoke-virtual {v4}, Lcom/keephealth/android/receiver/task/RunTask;->isExeRunFinish()Z

    move-result v0

    if-nez v0, :cond_f6

    .line 95
    :try_start_ed
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f0
    .catch Ljava/lang/InterruptedException; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_e7

    :catch_f1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e7

    .line 102
    :cond_f6
    iget-object v0, p0, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor$1;->this$0:Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/keephealth/android/receiver/task/AsyncTask$SerialExecutor;->scheduleNext()V

    .line 104
    throw v3
.end method
