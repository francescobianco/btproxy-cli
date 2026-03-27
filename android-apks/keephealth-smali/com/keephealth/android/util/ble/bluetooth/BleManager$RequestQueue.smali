.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestQueue"
.end annotation


# instance fields
.field cachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/keephealth/android/util/ble/bluetooth/Request;",
            ">;"
        }
    .end annotation
.end field

.field oldSize:I

.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 2960
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2961
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    .line 2964
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Lcom/keephealth/android/util/ble/bluetooth/BleManager$1;)V
    .registers 3

    .line 2960
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    return-void
.end method

.method private startExecutor(I)V
    .registers 6

    .line 2986
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/Request;

    if-eqz p1, :cond_aa

    .line 2987
    iget-object v0, p1, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    if-eqz v0, :cond_aa

    .line 2988
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getBytes()[B

    move-result-object v0

    if-nez v0, :cond_23

    .line 2989
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2991
    :cond_23
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$12;->$SwitchMap$com$keephealth$android$util$ble$bluetooth$Request$Type:[I

    iget-object v1, p1, Lcom/keephealth/android/util/ble/bluetooth/Request;->type:Lcom/keephealth/android/util/ble/bluetooth/Request$Type;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/Request$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_65

    const/4 v3, 0x2

    if-eq v0, v3, :cond_59

    const/4 v1, 0x3

    if-eq v0, v1, :cond_49

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3b

    goto :goto_aa

    .line 3010
    :cond_3b
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->isEnable()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_aa

    .line 3006
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->isEnable()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 3007
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->enable_notication:Z

    goto :goto_aa

    .line 3002
    :cond_59
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->enable_notication:Z

    .line 3003
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_aa

    .line 2993
    :cond_65
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 2995
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2997
    :cond_72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5199\u5165\u6570\u636e-!--:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " -- "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "drer4re"

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2999
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isCannextSend:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1702(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    :cond_aa
    :goto_aa
    return-void
.end method


# virtual methods
.method addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;I)V
    .registers 4

    .line 2967
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->oldSize:I

    .line 2968
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2970
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4e

    iget p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->oldSize:I

    if-nez p1, :cond_4e

    const/4 p1, 0x3

    if-eq p2, p1, :cond_24

    if-ne p2, v0, :cond_20

    goto :goto_24

    .line 2981
    :cond_20
    invoke-direct {p0, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->startExecutor(I)V

    goto :goto_4e

    .line 2973
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->canSendData:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x2

    .line 2974
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->startExecutor(I)V

    goto :goto_4e

    .line 2976
    :cond_31
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 2977
    const-string p1, "courseviewmodel"

    const-string p2, "removeCallbacks666"

    invoke-static {p1, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method cancelAll()V
    .registers 2

    .line 3048
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method next(I)V
    .registers 6

    .line 3018
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableQueueDelay:Z
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3019
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->queueDelayTime:I
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I

    move-result v0

    if-gez v0, :cond_26

    .line 3020
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;I)V

    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    .line 3025
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->autoQueueInterval:I
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I

    move-result p1

    int-to-long v2, p1

    .line 3020
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_40

    .line 3027
    :cond_26
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;I)V

    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    .line 3032
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->queueDelayTime:I
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I

    move-result p1

    int-to-long v2, p1

    .line 3027
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_40

    :cond_3c
    const/4 v0, 0x1

    .line 3035
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->runQueue(II)V

    :goto_40
    return-void
.end method

.method runQueue(II)V
    .registers 3

    .line 3040
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_16

    .line 3041
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3042
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->startExecutor(I)V

    const/4 p1, 0x0

    .line 3043
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    :cond_16
    return-void
.end method
