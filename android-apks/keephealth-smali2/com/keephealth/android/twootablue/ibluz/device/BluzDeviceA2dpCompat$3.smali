.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$3;
.super Ljava/lang/Object;
.source "BluzDeviceA2dpCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mDisconnectSilence:Z

    return-void
.end method
