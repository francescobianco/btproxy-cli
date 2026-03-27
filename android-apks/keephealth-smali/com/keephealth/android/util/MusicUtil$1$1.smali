.class Lcom/keephealth/android/util/MusicUtil$1$1;
.super Ljava/lang/Object;
.source "MusicUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/MusicUtil$1;->preMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/MusicUtil$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/MusicUtil$1;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/keephealth/android/util/MusicUtil$1$1;->this$1:Lcom/keephealth/android/util/MusicUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil$1$1;->this$1:Lcom/keephealth/android/util/MusicUtil$1;

    iget-object v0, v0, Lcom/keephealth/android/util/MusicUtil$1;->this$0:Lcom/keephealth/android/util/MusicUtil;

    const/16 v1, 0x58

    # invokes: Lcom/keephealth/android/util/MusicUtil;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/util/MusicUtil;->access$400(Lcom/keephealth/android/util/MusicUtil;I)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil$1$1;->this$1:Lcom/keephealth/android/util/MusicUtil$1;

    iget-object v0, v0, Lcom/keephealth/android/util/MusicUtil$1;->this$0:Lcom/keephealth/android/util/MusicUtil;

    # getter for: Lcom/keephealth/android/util/MusicUtil;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/keephealth/android/util/MusicUtil;->access$100(Lcom/keephealth/android/util/MusicUtil;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_20

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil$1$1;->this$1:Lcom/keephealth/android/util/MusicUtil$1;

    iget-object v0, v0, Lcom/keephealth/android/util/MusicUtil$1;->this$0:Lcom/keephealth/android/util/MusicUtil;

    const/16 v1, 0x7e

    # invokes: Lcom/keephealth/android/util/MusicUtil;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/util/MusicUtil;->access$400(Lcom/keephealth/android/util/MusicUtil;I)V

    :cond_20
    return-void
.end method
