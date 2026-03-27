.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaActivity.java"

# interfaces
.implements Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V
    .registers 2

    .line 615
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(ILcom/keephealth/android/util/telinkota/GattConnection;I)V
    .registers 9

    .line 652
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    move v3, v0

    goto :goto_a

    :cond_9
    move v3, v1

    :goto_a
    iput-boolean v3, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnected:Z

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    .line 654
    :goto_10
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    const/16 v3, 0xd

    invoke-virtual {p2, v3, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 655
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isOtaRunning:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isOtaRunning:Z
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  isConnected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-boolean p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnected:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  statusCode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ggrrt6"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isOtaRunning:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z

    move-result p1

    if-nez p1, :cond_c9

    .line 657
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-boolean p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnected:Z

    const/16 v3, 0xc

    if-eqz p1, :cond_8b

    .line 658
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blReconnectRetry:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 659
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    const-string p2, "connect success"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 660
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->stopScanLe()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    .line 662
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c9

    :cond_8b
    if-eqz v0, :cond_c9

    .line 672
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v4, "device disconnected when ota: 0x%02X"

    invoke-static {v1, v4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 673
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "isDisconnected:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z

    move-result p1

    if-nez p1, :cond_c9

    .line 687
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanBlDevice(I)V
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public onMtuChanged(ILcom/keephealth/android/util/telinkota/GattConnection;)V
    .registers 4

    .line 703
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotify([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/telinkota/GattConnection;)V
    .registers 5

    .line 695
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 696
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/telinkota/OtaController;->pushNotification([B)V

    .line 697
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\u56fa\u4ef6\u66f4\u65b0   \u5347\u7ea7\u5931\u8d25"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method
