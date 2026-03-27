.class Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
.source "TasksAndRewardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->initActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V
    .registers 2

    return-void
.end method

.method public onDeviceConnected()V
    .registers 1

    return-void
.end method

.method public onDeviceConnecting()V
    .registers 1

    return-void
.end method

.method public onDeviceDisconnected()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->finish()V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2

    return-void
.end method
