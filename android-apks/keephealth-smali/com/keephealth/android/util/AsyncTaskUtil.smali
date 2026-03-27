.class public Lcom/keephealth/android/util/AsyncTaskUtil;
.super Ljava/lang/Object;
.source "AsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;,
        Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;,
        Lcom/keephealth/android/util/AsyncTaskUtil$AsyncTaskCallBackAdapter;
    }
.end annotation


# instance fields
.field private iAsyncTaskCallBack:Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;

.field private myTask:Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/keephealth/android/util/AsyncTaskUtil;->iAsyncTaskCallBack:Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/AsyncTaskUtil;)Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/keephealth/android/util/AsyncTaskUtil;->iAsyncTaskCallBack:Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;

    return-object p0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/util/AsyncTaskUtil;->myTask:Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;->cancel(Z)Z

    :cond_7
    return-void
.end method

.method public varargs execute([Ljava/lang/String;)V
    .registers 3

    .line 26
    new-instance v0, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;-><init>(Lcom/keephealth/android/util/AsyncTaskUtil;)V

    iput-object v0, p0, Lcom/keephealth/android/util/AsyncTaskUtil;->myTask:Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;

    .line 27
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setIAsyncTaskCallBack(Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;)Lcom/keephealth/android/util/AsyncTaskUtil;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/util/AsyncTaskUtil;->iAsyncTaskCallBack:Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;

    return-object p0
.end method
