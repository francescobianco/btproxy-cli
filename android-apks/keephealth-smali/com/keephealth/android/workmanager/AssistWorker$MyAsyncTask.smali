.class Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "AssistWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/workmanager/AssistWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/workmanager/AssistWorker;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/workmanager/AssistWorker;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 132
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6

    .line 142
    :try_start_0
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->callHandler:Landroid/os/Handler;

    if-eqz p1, :cond_21

    .line 143
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    new-instance v0, Lcom/keephealth/android/sevice/AssistWorkManager;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object v2, v2, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object v3, v3, Lcom/keephealth/android/workmanager/AssistWorker;->callHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/sevice/AssistWorkManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p1, Lcom/keephealth/android/workmanager/AssistWorker;->assistCallPhoning:Lcom/keephealth/android/sevice/AssistWorkManager;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_21

    .line 148
    :catch_21
    :cond_21
    :try_start_21
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->callHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3f

    .line 149
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_3f

    .line 154
    :catch_3f
    :cond_3f
    :try_start_3f
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->callHandler:Landroid/os/Handler;

    if-eqz p1, :cond_59

    .line 155
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    # getter for: Lcom/keephealth/android/workmanager/AssistWorker;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/workmanager/AssistWorker;->access$200(Lcom/keephealth/android/workmanager/AssistWorker;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_59} :catch_59

    .line 162
    :catch_59
    :cond_59
    :try_start_59
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-virtual {p1}, Lcom/keephealth/android/workmanager/AssistWorker;->initPairStatus()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_5e

    .line 166
    :catch_5e
    const-string p1, "\u4efb\u52a1\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 132
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 2

    .line 179
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2

    .line 172
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 132
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
