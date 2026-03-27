.class Lcom/keephealth/android/sevice/AssistWorkManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AssistWorkManager.java"


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

    .line 120
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 127
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 129
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRingOrVibrate:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$002(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 131
    :try_start_19
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 133
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1, p2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$202(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 136
    :cond_45
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 137
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 138
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$2;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {p1, p2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$302(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    return-void
.end method
