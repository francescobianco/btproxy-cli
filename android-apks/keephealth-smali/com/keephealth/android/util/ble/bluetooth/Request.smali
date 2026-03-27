.class Lcom/keephealth/android/util/ble/bluetooth/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/Request$Type;
    }
.end annotation


# instance fields
.field private final characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private enable:Z

.field private mBytes:[B

.field public final type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    .line 44
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    .line 55
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 56
    iput-boolean p3, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->enable:Z

    return-void
.end method

.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    .line 49
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 50
    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->mBytes:[B

    return-void
.end method

.method public static newEnableIndicationsRequest(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;
    .registers 4

    .line 72
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_INDICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-direct {v0, v1, p1, p0}, Lcom/keephealth/android/util/ble/bluetooth/Request;-><init>(Lcom/keephealth/android/util/ble/bluetooth/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-object v0
.end method

.method public static newEnableNotificationsRequest(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;
    .registers 4

    .line 68
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ENABLE_NOTIFICATIONS:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-direct {v0, v1, p1, p0}, Lcom/keephealth/android/util/ble/bluetooth/Request;-><init>(Lcom/keephealth/android/util/ble/bluetooth/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-object v0
.end method

.method public static newReadRequest(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;
    .registers 3

    .line 60
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->READ:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-direct {v0, v1, p0}, Lcom/keephealth/android/util/ble/bluetooth/Request;-><init>(Lcom/keephealth/android/util/ble/bluetooth/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0
.end method

.method public static newWriteRequest(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/keephealth/android/util/ble/bluetooth/Request;
    .registers 4

    .line 64
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/Request;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->WRITE:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-direct {v0, v1, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;-><init>(Lcom/keephealth/android/util/ble/bluetooth/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->mBytes:[B

    return-object v0
.end method

.method public getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public isEnable()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/Request;->enable:Z

    return v0
.end method
