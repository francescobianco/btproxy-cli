.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;
.super Ljava/lang/Object;
.source "BleManagerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestQueue"
.end annotation


# instance fields
.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/keephealth/android/util/ble/bluetooth/Request;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 2

    .line 1773
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;)V
    .registers 3

    .line 1773
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    return-void
.end method

.method private startExecutor()V
    .registers 5

    .line 1787
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/Request;

    if-eqz v0, :cond_94

    .line 1788
    iget-object v1, v0, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    if-eqz v1, :cond_94

    .line 1789
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request.type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF3212"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$8;->$SwitchMap$com$keephealth$android$util$ble$bluetooth$Request$Type:[I

    iget-object v2, v0, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_66

    const/4 v3, 0x2

    if-eq v1, v3, :cond_59

    const/4 v3, 0x3

    if-eq v1, v3, :cond_49

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3b

    goto :goto_94

    .line 1812
    :cond_3b
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->isEnable()Z

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_94

    .line 1808
    :cond_49
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->isEnable()Z

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {v1, v3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1809
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->enable_notication:Z

    goto :goto_94

    :cond_59
    const/4 v1, 0x0

    .line 1804
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->enable_notication:Z

    .line 1805
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_94

    .line 1792
    :cond_66
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1794
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1799
    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send_data:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FF321f2"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_94
    :goto_94
    return-void
.end method


# virtual methods
.method addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;)V
    .registers 4

    .line 1778
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    .line 1779
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1780
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mRequestQueue.size():"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  oldSize:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FF3212"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3d

    if-nez v0, :cond_3d

    .line 1782
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->startExecutor()V

    :cond_3d
    return-void
.end method

.method cancelAll()V
    .registers 2

    .line 1849
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method next(I)V
    .registers 5

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "next:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ddeews"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableQueueDelay:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1821
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->queueDelayTime:I
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I

    move-result p1

    if-gez p1, :cond_3a

    .line 1822
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    .line 1827
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->autoQueueInterval:I
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3000(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I

    move-result v1

    int-to-long v1, v1

    .line 1822
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_53

    .line 1829
    :cond_3a
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    .line 1834
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->queueDelayTime:I
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I

    move-result v1

    int-to-long v1, v1

    .line 1829
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_53

    .line 1837
    :cond_50
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->runQueue()V

    :goto_53
    return-void
.end method

.method runQueue()V
    .registers 2

    .line 1842
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 1843
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 1844
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->startExecutor()V

    :cond_12
    return-void
.end method
