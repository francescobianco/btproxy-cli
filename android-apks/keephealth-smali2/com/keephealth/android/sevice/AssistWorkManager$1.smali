.class Lcom/keephealth/android/sevice/AssistWorkManager$1;
.super Ljava/lang/Object;
.source "AssistWorkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/AssistWorkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistWorkManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/AssistWorkManager;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRingOrVibrate:Z
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$000(Lcom/keephealth/android/sevice/AssistWorkManager;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->exitTime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$100(Lcom/keephealth/android/sevice/AssistWorkManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5b

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$202(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 108
    :cond_45
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$302(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    .line 113
    :cond_5b
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$400(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_70

    .line 115
    :cond_67
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$1;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$400(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_70
    return-void
.end method
