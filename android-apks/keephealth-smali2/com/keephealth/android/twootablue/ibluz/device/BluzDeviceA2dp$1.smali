.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;
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

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 3

    .line 65
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->access$002(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 66
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->initMethod()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    iget-boolean p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mAutoConnect:Z

    if-eqz p1, :cond_17

    .line 70
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->connect()V

    :cond_17
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    return-void
.end method
