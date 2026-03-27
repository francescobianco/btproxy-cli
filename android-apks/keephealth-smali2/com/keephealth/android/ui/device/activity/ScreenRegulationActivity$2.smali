.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ScreenRegulationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getDoNotDisturb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-ScreenRegulationActivity$2([B)V
    .registers 7

    .line 220
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->canDissDilalog()V

    .line 221
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    const/16 v0, 0x12

    .line 223
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v2

    if-eqz v2, :cond_25

    move v2, v3

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    const/16 v2, 0x8

    aget-byte p1, p1, v2

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v1

    :goto_3b
    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout2;->setOpen(Z)V

    goto :goto_51

    .line 227
    :cond_3f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/ItemToggleLayout2;->setOpen(Z)V

    .line 230
    :goto_51
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itBrightScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvStartTime2:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setIsVisible(ZLandroid/widget/TextView;)V

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvEndTime2:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setIsVisible(ZLandroid/widget/TextView;)V

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvDisturbModeStartTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    if-lt p1, v0, :cond_134

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f1

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    if-ge p1, v0, :cond_f1

    goto :goto_134

    .line 237
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvDisturbModeEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18d

    .line 235
    :cond_134
    :goto_134
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvDisturbModeEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10044e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18d
    return-void
.end method

.method synthetic lambda$onSuccess$1$com-keephealth-android-ui-device-activity-ScreenRegulationActivity$2([B)V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->handlerScreenData([B)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;[B)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 255
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->canDissDilalog()V

    .line 256
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    const/16 v0, 0x14

    .line 207
    new-array v0, v0, [B

    .line 208
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 209
    const-string p1, "\u52ff\u6270\u6570\u636e"

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 210
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x88

    const v3, 0x7f10050d

    if-ne v1, v2, :cond_74

    .line 212
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$700(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 213
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd:Z
    invoke-static {v1, p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$702(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Z)Z

    .line 214
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour2:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$802(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin2:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$902(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour2:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1002(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/4 v1, 0x7

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin2:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1102(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 219
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;[B)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_9d

    .line 241
    :cond_66
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Ljava/lang/String;)V

    goto :goto_9d

    :cond_74
    const/16 v2, 0xc2

    if-ne v1, v2, :cond_9d

    .line 244
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd2:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 245
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->fristCmd2:Z
    invoke-static {v1, p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1302(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Z)Z

    .line 246
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;[B)V

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9d

    .line 248
    :cond_90
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Ljava/lang/String;)V

    :cond_9d
    :goto_9d
    return-void
.end method
