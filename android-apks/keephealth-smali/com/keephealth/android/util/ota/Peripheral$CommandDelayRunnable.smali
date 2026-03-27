.class final Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommandDelayRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ota/Peripheral;)V
    .registers 2

    .line 1003
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$1;)V
    .registers 3

    .line 1003
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;-><init>(Lcom/keephealth/android/util/ota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1007
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 1008
    :try_start_5
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;

    .line 1009
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    const/4 v3, 0x1

    # invokes: Lcom/keephealth/android/util/ota/Peripheral;->processCommand(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V
    invoke-static {v2, v1, v3}, Lcom/keephealth/android/util/ota/Peripheral;->access$400(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V

    .line 1010
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method
