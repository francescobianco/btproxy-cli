.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$2;
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

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 3

    .line 82
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->access$202(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->initMethodHfp()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    return-void
.end method
