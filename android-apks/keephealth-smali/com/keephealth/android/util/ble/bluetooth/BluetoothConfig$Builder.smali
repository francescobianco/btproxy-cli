.class public Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;
.super Ljava/lang/Object;
.source "BluetoothConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private enableLogger:Z

.field private enableQueueDelay:Z

.field private queueDelayTime:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->queueDelayTime:I

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->enableQueueDelay:Z

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->enableLogger:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;
    .registers 3

    .line 82
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$1;)V

    return-object v0
.end method

.method public enableLogger(Z)Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->enableLogger:Z

    return-object p0
.end method

.method public enableQueueInterval(Z)Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->enableQueueDelay:Z

    return-object p0
.end method

.method public setQueueIntervalTime(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;
    .registers 2

    .line 66
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->queueDelayTime:I

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig$Builder;->enableQueueDelay:Z

    return-object p0
.end method
