.class Lcom/keephealth/android/ui/main/activity/MainActivityNew$8;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/MainActivityNew;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V
    .registers 2

    .line 965
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$8;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    return-void
.end method
