.class public final synthetic Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$3:Lcom/keephealth/android/model/bean/DeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;ZLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;

    iput-boolean p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$3:Lcom/keephealth/android/model/bean/DeviceModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;

    iget-boolean v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15$$ExternalSyntheticLambda0;->f$3:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$15;->lambda$onSuccess$0$com-keephealth-android-persenter-main-MainFragmentPresenter$15(ZLandroid/bluetooth/BluetoothGattCharacteristic;Lcom/keephealth/android/model/bean/DeviceModel;)V

    return-void
.end method
