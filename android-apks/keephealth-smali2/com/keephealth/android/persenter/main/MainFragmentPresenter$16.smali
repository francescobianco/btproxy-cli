.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendSchedules(Ljava/util/List;Lcom/keephealth/android/model/bean/DeviceModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 3

    .line 1089
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalendarEvent-fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalenderDataStruct"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 1108
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_27
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 1092
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1093
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_41

    .line 1095
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isSendShedule:Z
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1096
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isSendShedule:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3302(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalendarEvent-onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalenderDataStruc2t"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$16;->val$deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->glucosePower(Lcom/keephealth/android/model/bean/DeviceModel;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$3200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/DeviceModel;)V

    :cond_41
    return-void
.end method
