.class final Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;
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
    name = "CommandTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/telinkota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V
    .registers 2

    .line 1132
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V
    .registers 3

    .line 1132
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1137
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 1139
    :try_start_5
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;

    if-eqz v1, :cond_33

    .line 1143
    iget-object v2, v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    .line 1144
    iget-object v3, v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

    .line 1146
    iget-object v4, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    # invokes: Lcom/keephealth/android/util/telinkota/Peripheral;->commandTimeout(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)Z
    invoke-static {v4, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->access$600(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1149
    iput-object v2, v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    .line 1150
    iput-object v3, v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

    .line 1151
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    # invokes: Lcom/keephealth/android/util/telinkota/Peripheral;->processCommand(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V
    invoke-static {v2, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->access$700(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V

    goto :goto_33

    .line 1153
    :cond_27
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 1154
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    # invokes: Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V
    invoke-static {v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->access$800(Lcom/keephealth/android/util/telinkota/Peripheral;)V

    .line 1157
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw v1
.end method
