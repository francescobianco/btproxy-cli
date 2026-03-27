.class Lcom/keephealth/android/sevice/DownDataService$1;
.super Ljava/lang/Object;
.source "DownDataService.java"

# interfaces
.implements Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/sevice/DownDataService;->checkComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/DownDataService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/DownDataService;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/sevice/DownDataService$1;->this$0:Lcom/keephealth/android/sevice/DownDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/keephealth/android/sevice/DownDataService$1;->this$0:Lcom/keephealth/android/sevice/DownDataService;

    iget-object p1, p1, Lcom/keephealth/android/sevice/DownDataService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .registers 3

    .line 51
    iget-object p1, p0, Lcom/keephealth/android/sevice/DownDataService$1;->this$0:Lcom/keephealth/android/sevice/DownDataService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/keephealth/android/sevice/DownDataService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
