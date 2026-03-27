.class Lcom/keephealth/android/twootablue/ota/OTAManager$2;
.super Ljava/lang/Object;
.source "OTAManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ota/OTAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ota/OTAManager;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$2;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 3

    monitor-enter p0

    .line 521
    :try_start_1
    const-string v0, "ggrr20"

    const-string v1, "STATE_UNKNOWN_1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$2;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v1, 0x0

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyStatus(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$000(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 523
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
