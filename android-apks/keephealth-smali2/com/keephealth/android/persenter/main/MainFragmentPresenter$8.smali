.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentHRV(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 3

    .line 387
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->val$healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    const/4 p1, 0x0

    .line 408
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 390
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 391
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xd3

    if-ne v0, v1, :cond_66

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_66

    .line 392
    const-string v0, "HRV\u5f53\u524d\u6570\u636e"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->val$healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setHrv(I)V

    .line 394
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 395
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 396
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->val$healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentTemp(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V

    goto :goto_66

    .line 398
    :cond_4b
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->setDeviceState()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 399
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$1400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 400
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$1500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$8;->val$healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateCurrentData(Lcom/keephealth/android/greendao/bean/HealthHeartRate;Lcom/keephealth/android/greendao/bean/TempInfo;)V

    :cond_66
    :goto_66
    return-void
.end method
