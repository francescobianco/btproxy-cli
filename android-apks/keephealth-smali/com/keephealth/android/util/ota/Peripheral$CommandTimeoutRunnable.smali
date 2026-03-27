.class final Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;
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
    name = "CommandTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ota/Peripheral;)V
    .registers 2

    .line 974
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$1;)V
    .registers 3

    .line 974
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;-><init>(Lcom/keephealth/android/util/ota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 979
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 981
    :try_start_5
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;

    if-eqz v1, :cond_34

    .line 985
    iget-object v2, v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    .line 986
    iget-object v3, v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/ota/Command$Callback;

    .line 988
    iget-object v4, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    # invokes: Lcom/keephealth/android/util/ota/Peripheral;->commandTimeout(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;)Z
    invoke-static {v4, v1}, Lcom/keephealth/android/util/ota/Peripheral;->access$300(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$CommandContext;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 991
    iput-object v2, v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    .line 992
    iput-object v3, v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/ota/Command$Callback;

    .line 993
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    const/4 v3, 0x2

    # invokes: Lcom/keephealth/android/util/ota/Peripheral;->processCommand(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V
    invoke-static {v2, v1, v3}, Lcom/keephealth/android/util/ota/Peripheral;->access$400(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V

    goto :goto_34

    .line 995
    :cond_28
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 996
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    # invokes: Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V
    invoke-static {v1}, Lcom/keephealth/android/util/ota/Peripheral;->access$500(Lcom/keephealth/android/util/ota/Peripheral;)V

    .line 999
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v1
.end method
