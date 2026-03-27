.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ScreenRegulationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initView()V
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

    .line 157
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-ScreenRegulationActivity$1(I[B)V
    .registers 11

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itNightShift:Lcom/keephealth/android/views/ItemToggleLayout2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout2;->setOpen(Z)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftStartTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02d"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v3

    if-lt v0, v3, :cond_c4

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v3

    if-ne v0, v3, :cond_81

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v3

    if-ge v0, v3, :cond_81

    goto :goto_c4

    .line 179
    :cond_81
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11d

    .line 177
    :cond_c4
    :goto_c4
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftEndTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10044e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_11d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->llViewNightShift:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_126

    goto :goto_128

    :cond_126
    const/16 v1, 0x8

    :goto_128
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->mNightShiftSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0xc

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 191
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isDoNotDisturb:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$002(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Z)Z

    .line 192
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isDoNotDisturb:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$000(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 161
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    const/4 v1, 0x7

    .line 162
    aget-byte v1, v0, v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " -- "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u6536\u5230\u591c\u89c8\u6570\u636e\u56de\u590d-----:"

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 164
    aget-byte v2, v0, p1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_cd

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v2, v3, :cond_cd

    .line 166
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/16 v3, 0x8

    aget-byte v3, v0, v3

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startHour3:I
    invoke-static {v2, v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$102(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 167
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/16 v3, 0x9

    aget-byte v3, v0, v3

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->startMin3:I
    invoke-static {v2, v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$202(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 168
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endHour3:I
    invoke-static {v2, v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$302(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 169
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/16 v3, 0xb

    aget-byte v3, v0, v3

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->endMin3:I
    invoke-static {v2, v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$402(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 170
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvNightShiftProgress:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->screenDuration:I
    invoke-static {v2, v3}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$502(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;I)I

    .line 172
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->isDoNotDisturb:Z
    invoke-static {v2, p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$002(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;Z)Z

    .line 173
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;I[B)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->getDoNotDisturb()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$600(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    :cond_cd
    return-void
.end method
