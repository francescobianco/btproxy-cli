.class Lcom/keephealth/android/sevice/AssistService$2;
.super Landroid/content/BroadcastReceiver;
.source "AssistService.java"


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

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 138
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/sevice/AssistService;->isRingOrVibrate:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/sevice/AssistService;->access$002(Lcom/keephealth/android/sevice/AssistService;Z)Z

    .line 140
    :try_start_12
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 141
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 142
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 143
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1, p2}, Lcom/keephealth/android/sevice/AssistService;->access$202(Lcom/keephealth/android/sevice/AssistService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 145
    :cond_3e
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$300(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$300(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 146
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$300(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 147
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$2;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;
    invoke-static {p1, p2}, Lcom/keephealth/android/sevice/AssistService;->access$302(Lcom/keephealth/android/sevice/AssistService;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_60} :catch_60

    :catch_60
    :cond_60
    return-void
.end method
