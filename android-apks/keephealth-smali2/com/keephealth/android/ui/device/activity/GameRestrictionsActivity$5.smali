.class Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "GameRestrictionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-GameRestrictionsActivity$5([B[I)V
    .registers 7

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$400(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$600(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    if-gt v0, v1, :cond_74

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$400(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$600(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v1

    if-lt v0, v1, :cond_62

    goto :goto_74

    .line 178
    :cond_62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a3

    .line 176
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10044e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_a3
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getOnOrOff()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b8

    goto :goto_b9

    :cond_b8
    move v3, v2

    :goto_b9
    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    const/16 v0, 0x8

    .line 181
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->isSwitch(I)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvFrequency:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    const v1, 0x7f100122

    invoke-virtual {p2, v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ea

    .line 184
    :cond_db
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvFrequency:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {v1, p2, v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getTimes([ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_ea
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {p1}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 187
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->llGameTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_109

    .line 189
    :cond_100
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->llGameTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_109
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 200
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->hideLoading()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->hideLoading()V

    .line 152
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u6536\u5230\u6e38\u620f\u7981\u7528\u65f6\u95f4\u6570\u636e\u56de\u590d-----:"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 154
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xf0

    if-ne p1, v1, :cond_f8

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    array-length v1, v0

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p1, v1, :cond_f8

    const/4 p1, 0x3

    .line 155
    invoke-static {v0, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    const/16 v1, 0x8

    if-le p1, v1, :cond_f8

    const/4 p1, 0x4

    .line 157
    aget-byte p1, v0, p1

    if-le p1, v2, :cond_71

    goto/16 :goto_f8

    .line 160
    :cond_71
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->parseBits(I)[I

    move-result-object p1

    .line 161
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    const/16 v4, 0x9

    aget-byte v4, v0, v4

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$302(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 162
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    const/16 v4, 0xa

    aget-byte v4, v0, v4

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$402(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 163
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    const/16 v4, 0xb

    aget-byte v4, v0, v4

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$502(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 164
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    const/16 v4, 0xc

    aget-byte v4, v0, v4

    # setter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$602(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I

    .line 165
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setStartTimeHour(I)V

    .line 166
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$400(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setStartTimeMin(I)V

    .line 167
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setEndTimeHour(I)V

    .line 168
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$600(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setEndTimeMin(I)V

    .line 169
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setCycle([I)V

    .line 170
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;

    move-result-object v3

    aget-byte v1, v0, v1

    and-int/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setOnOrOff(I)V

    .line 171
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;[B[I)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_f8
    :goto_f8
    return-void
.end method
