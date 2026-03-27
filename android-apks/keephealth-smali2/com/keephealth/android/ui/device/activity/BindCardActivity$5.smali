.class Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "BindCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/BindCardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 9

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b0

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isBind:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$102(Lcom/keephealth/android/ui/device/activity/BindCardActivity;Z)Z

    .line 188
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardOrWallet:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$200(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)I

    move-result p1

    if-ne p1, v0, :cond_29

    .line 190
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$300(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->bindCardOrWallet(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_39

    .line 193
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->cardType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$300(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->bindCardOrWallet(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 195
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClickL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->qrCodeString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u540d\u7247"

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b0

    const/4 v1, 0x0

    .line 197
    :goto_66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b0

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne v1, v4, :cond_a0

    .line 200
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    new-instance v6, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;)V

    invoke-virtual {v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_ad

    .line 219
    :cond_a0
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_ad
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_b0
    return-void
.end method
