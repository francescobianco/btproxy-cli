.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;
.super Landroid/os/AsyncTask;
.source "MainFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    .line 625
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 608
    aget-object p1, p1, v0

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_42

    const-wide/16 v2, 0x1f4

    .line 612
    :try_start_d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 613
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$700(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connectToAudio(Landroid/bluetooth/BluetoothDevice;)V

    .line 615
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_38

    return-object v1

    :cond_38
    const/4 p1, 0x1

    .line 618
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3d} :catch_3e

    return-object p1

    :catch_3e
    move-exception p1

    .line 621
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 605
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 605
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
