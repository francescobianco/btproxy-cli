.class Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DisturbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DisturbActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-DisturbActivity$1([B)V
    .registers 7

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->mToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    const/16 v1, 0x12

    aget-byte p1, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindStartTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result v0

    if-lt p1, v0, :cond_c4

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result v0

    if-ne p1, v0, :cond_83

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

    move-result v0

    if-ge p1, v0, :cond_83

    goto :goto_c4

    .line 71
    :cond_83
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    goto :goto_11b

    .line 69
    :cond_c4
    :goto_c4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10044e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I

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

    :goto_11b
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 55
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->fristCmd:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)Z

    move-result v0

    const/16 v1, 0x88

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-eqz v0, :cond_58

    .line 57
    new-array v0, v3, [B

    .line 58
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 59
    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_82

    .line 61
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$102(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 62
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$202(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 63
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$302(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 64
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    const/4 v1, 0x7

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$402(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I

    .line 65
    new-instance p1, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;[B)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_82

    .line 76
    :cond_58
    new-array v0, v3, [B

    .line 77
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 78
    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_82

    .line 80
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$500(Lcom/keephealth/android/ui/device/activity/DisturbActivity;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/DisturbActivity;->fristCmd:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DisturbActivity;Z)Z

    .line 82
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->finish()V

    :cond_82
    :goto_82
    return-void
.end method
