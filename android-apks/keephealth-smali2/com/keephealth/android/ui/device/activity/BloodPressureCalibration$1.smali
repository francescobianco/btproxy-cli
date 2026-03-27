.class Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "BloodPressureCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 80
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "6t6tyg"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    const/16 v0, 0x14

    .line 62
    new-array v0, v0, [B

    .line 63
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "to:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "6t6tyg"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 65
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x3

    .line 66
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa1

    if-ne p1, v2, :cond_86

    const/16 p1, 0xa

    if-ne v1, p1, :cond_86

    .line 68
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    iput v1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationHeart:I

    .line 70
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    iput v1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressFz:I

    .line 71
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v0

    iput v0, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressSs:I

    .line 72
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etHeart:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationHeart:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressFz:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressFz:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressSs:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressSs:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_86
    return-void
.end method
