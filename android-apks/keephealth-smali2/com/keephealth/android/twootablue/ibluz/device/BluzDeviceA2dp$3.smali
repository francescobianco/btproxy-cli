.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$3;
.super Ljava/lang/Object;
.source "BluzDeviceA2dp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->getProfileProxy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 3

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mInputService:Landroid/bluetooth/BluetoothProfile;
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->access$402(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 96
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->initMethodInput()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    return-void
.end method
