.class Lcom/keephealth/android/sevice/AssistService$1;
.super Ljava/lang/Object;
.source "AssistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/AssistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/AssistService;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->isRingOrVibrate:Z
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$000(Lcom/keephealth/android/sevice/AssistService;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->exitTime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistService;->access$100(Lcom/keephealth/android/sevice/AssistService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5b

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistService;->access$202(Lcom/keephealth/android/sevice/AssistService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 120
    :cond_45
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$300(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$300(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistService;->access$302(Lcom/keephealth/android/sevice/AssistService;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    .line 125
    :cond_5b
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$400(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_70

    .line 127
    :cond_67
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$1;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$400(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_70
    return-void
.end method
