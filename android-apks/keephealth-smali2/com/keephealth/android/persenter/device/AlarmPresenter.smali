.class public Lcom/keephealth/android/persenter/device/AlarmPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "AlarmPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/AlarmContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/device/AlarmContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/device/AlarmContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method


# virtual methods
.method public saveAlarmToDevice(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/Alarm;

    .line 30
    new-instance v4, Lcom/keephealth/android/model/bean/AlarmBean;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/AlarmBean;-><init>()V

    .line 31
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v5

    iput v5, v4, Lcom/keephealth/android/model/bean/AlarmBean;->hour:I

    .line 32
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmMinute()I

    move-result v5

    iput v5, v4, Lcom/keephealth/android/model/bean/AlarmBean;->min:I

    .line 33
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmType()I

    move-result v5

    iput v5, v4, Lcom/keephealth/android/model/bean/AlarmBean;->type:I

    const/16 v5, 0x8

    .line 35
    new-array v5, v5, [B

    .line 36
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getOn_off()Z

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 37
    :goto_42
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_56

    add-int/lit8 v6, v3, 0x1

    .line 38
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v7

    aget-boolean v3, v7, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    move v3, v6

    goto :goto_42

    .line 40
    :cond_56
    iput-object v5, v4, Lcom/keephealth/android/model/bean/AlarmBean;->weeks:[B

    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 44
    :cond_5c
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setAlarm2(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 45
    :goto_60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_76

    .line 46
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 48
    :cond_76
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveAlarms(Ljava/util/List;)V

    goto :goto_90

    .line 50
    :cond_7a
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/AlarmPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast p1, Lcom/keephealth/android/persenter/device/AlarmContract$View;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/device/AlarmContract$View;->showMsg(Ljava/lang/String;)V

    :goto_90
    return-void
.end method
