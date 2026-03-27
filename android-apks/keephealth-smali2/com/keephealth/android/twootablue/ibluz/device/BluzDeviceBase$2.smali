.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;
.super Ljava/lang/Object;
.source "BluzDeviceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    const/4 v2, 0x0

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$102(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 245
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
