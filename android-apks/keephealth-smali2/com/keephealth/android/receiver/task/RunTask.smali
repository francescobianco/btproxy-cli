.class public Lcom/keephealth/android/receiver/task/RunTask;
.super Ljava/lang/Object;
.source "RunTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/keephealth/android/receiver/task/RunnableComplete;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/keephealth/android/receiver/task/RunnableComplete;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/receiver/task/RunTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/receiver/task/RunTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    iput-object p1, p0, Lcom/keephealth/android/receiver/task/RunTask;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isExeRunFinish()Z
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/receiver/task/RunTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$run$0$com-keephealth-android-receiver-task-RunTask()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/receiver/task/RunTask;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/receiver/task/RunTask;->onPreExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public run()V
    .registers 2

    .line 30
    new-instance v0, Lcom/keephealth/android/receiver/task/RunTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/receiver/task/RunTask$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/receiver/task/RunTask;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final runFinish()V
    .registers 2

    .line 43
    const-string v0, "runFinish ...."

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/receiver/task/RunTask;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/receiver/task/RunTask;->data:Ljava/lang/Object;

    return-void
.end method
