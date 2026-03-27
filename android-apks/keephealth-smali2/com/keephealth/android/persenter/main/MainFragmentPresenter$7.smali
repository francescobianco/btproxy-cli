.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentTemp(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
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

    .line 361
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;->val$healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    const/4 p1, 0x0

    .line 381
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 364
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 365
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 366
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag_start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4f53\u6e29\u6570\u636e"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xac

    if-ne v1, v2, :cond_93

    .line 368
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v1, v2, :cond_93

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u5f53\u524d\u4f53\u6e29:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->tempDataHandler:Lcom/keephealth/android/util/ble/TempDataHandler;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$1100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/TempDataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/TempDataHandler;->getCurrentTemp([B)Lcom/keephealth/android/greendao/bean/TempInfo;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->setDeviceState()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$1200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$1300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$7;->val$healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateCurrentData(Lcom/keephealth/android/greendao/bean/HealthHeartRate;Lcom/keephealth/android/greendao/bean/TempInfo;)V

    :cond_93
    return-void
.end method
