.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;
.super Ljava/lang/Object;
.source "DownLoadHistoryActivity.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 203
    const-string p1, "3423rew22"

    const-string v0, "\u8fde\u63a5\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAVersion:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$302(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$202(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    :cond_e
    return-void
.end method
