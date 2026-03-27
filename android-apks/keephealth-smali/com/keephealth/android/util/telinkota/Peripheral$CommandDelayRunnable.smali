.class final Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;
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
    name = "CommandDelayRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/telinkota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V
    .registers 2

    .line 1161
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V
    .registers 3

    .line 1161
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1165
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 1166
    :try_start_5
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;

    .line 1167
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    # invokes: Lcom/keephealth/android/util/telinkota/Peripheral;->processCommand(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V
    invoke-static {v2, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->access$700(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V

    .line 1168
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method
