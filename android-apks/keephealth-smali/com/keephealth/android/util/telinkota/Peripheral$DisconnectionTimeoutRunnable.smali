.class final Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/telinkota/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisconnectionTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/telinkota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V
    .registers 2

    .line 1104
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V
    .registers 3

    .line 1104
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1108
    const-string v0, "disconnection timeout"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->w(Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    # getter for: Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/Peripheral;->access$500(Lcom/keephealth/android/util/telinkota/Peripheral;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1110
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    const/16 v1, 0xfd

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onDisconnect(I)V

    return-void
.end method
