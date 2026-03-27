.class Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;
.super Landroid/os/AsyncTask;
.source "AsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/AsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Landroid/R$integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/AsyncTaskUtil;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/AsyncTaskUtil;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;->this$0:Lcom/keephealth/android/util/AsyncTaskUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;->this$0:Lcom/keephealth/android/util/AsyncTaskUtil;

    # getter for: Lcom/keephealth/android/util/AsyncTaskUtil;->iAsyncTaskCallBack:Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;
    invoke-static {v0}, Lcom/keephealth/android/util/AsyncTaskUtil;->access$000(Lcom/keephealth/android/util/AsyncTaskUtil;)Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/util/AsyncTaskUtil$MyTask;->this$0:Lcom/keephealth/android/util/AsyncTaskUtil;

    # getter for: Lcom/keephealth/android/util/AsyncTaskUtil;->iAsyncTaskCallBack:Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;
    invoke-static {v0}, Lcom/keephealth/android/util/AsyncTaskUtil;->access$000(Lcom/keephealth/android/util/AsyncTaskUtil;)Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method
