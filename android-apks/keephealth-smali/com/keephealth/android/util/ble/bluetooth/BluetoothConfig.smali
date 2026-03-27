.class public final Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;
.super Ljava/lang/Object;
.source "BluetoothConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;
    }
.end annotation


# static fields
.field public static final AUTO:I = -0x1


# instance fields
.field private enableLogger:Z

.field private enableQueueDelay:Z

.field private queueDelayTime:I


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->queueDelayTime:I
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->access$000(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->queueDelayTime:I

    .line 43
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->enableQueueDelay:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->access$100(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->enableQueueDelay:Z

    .line 44
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->enableLogger:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->access$200(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->enableLogger:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$1;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)V

    return-void
.end method


# virtual methods
.method getEnableLogger()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->enableLogger:Z

    return v0
.end method

.method getEnableQueueDelay()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->enableQueueDelay:Z

    return v0
.end method

.method getQueueDelayTime()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->queueDelayTime:I

    return v0
.end method
