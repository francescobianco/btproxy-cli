.class Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;
.super Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;
.source "MusicControlWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/workmanager/MusicControlWorkManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/keephealth/android/workmanager/MusicControlWorkManager;ILandroid/content/Context;)V
    .registers 4

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    iput-object p3, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addVol()V
    .registers 4

    .line 173
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->addVol()V

    .line 174
    const-string v0, "\u97f3\u91cf\u52a0\u6210\u529f"

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 177
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_25

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_25
    return-void
.end method

.method public exitMusic()V
    .registers 19

    move-object/from16 v0, p0

    .line 101
    invoke-super/range {p0 .. p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->exitMusic()V

    .line 103
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 104
    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v1, :cond_77

    .line 105
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$202(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$100(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 108
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v3

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v5

    const/16 v8, 0x57

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 109
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v11

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v13

    const/16 v16, 0x57

    const/16 v17, 0x0

    const/4 v15, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 110
    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 111
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :cond_77
    return-void
.end method

.method public musicControl()V
    .registers 22

    move-object/from16 v0, p0

    .line 43
    invoke-super/range {p0 .. p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->musicControl()V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u73af\u63a7\u5236App\u5f00\u59cb\u97f3\u4e50\u6210\u529f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$000(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u73af\u63a7\u5236App\u5f00\u59cb\u97f3\u4e50\u6210\u529f2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$000(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "audioManager.isMusicActive()2:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$100(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_1cf

    .line 48
    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v1, :cond_1cf

    .line 49
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$202(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$200(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1cf

    .line 51
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$100(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "audio"

    if-eqz v1, :cond_130

    .line 52
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$000(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 55
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v6

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v8

    const/16 v11, 0x7f

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 56
    new-instance v3, Landroid/view/KeyEvent;

    iget-object v5, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v14

    iget-object v5, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v16

    const/16 v19, 0x7f

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 57
    iget-object v5, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 58
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 59
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v1, v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$002(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Z)Z

    goto/16 :goto_1cf

    .line 64
    :cond_e5
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v8

    const/16 v11, 0x7e

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 65
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v5, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v14

    iget-object v5, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v16

    const/16 v19, 0x7e

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 66
    iget-object v5, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 67
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 68
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v1, v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$002(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Z)Z

    goto/16 :goto_1cf

    .line 76
    :cond_130
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$100(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 77
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v1, v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$002(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Z)Z

    .line 80
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v8

    const/16 v11, 0x7f

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 81
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v14

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v16

    const/16 v19, 0x7f

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 82
    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 83
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1cf

    .line 85
    :cond_186
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v1, v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$002(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Z)Z

    .line 88
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v8

    const/16 v11, 0x7e

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 89
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v14

    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J

    move-result-wide v16

    const/16 v19, 0x7e

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 90
    iget-object v3, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 91
    iget-object v1, v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :cond_1cf
    :goto_1cf
    return-void
.end method

.method public nextMusic()V
    .registers 4

    .line 152
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->nextMusic()V

    .line 153
    const-string v0, "FF433"

    const-string v1, "\u4e0b\u4e00\u66f2\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 155
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_56

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$202(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$100(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_49

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$200(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    const/16 v1, 0x7e

    # invokes: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$400(Lcom/keephealth/android/workmanager/MusicControlWorkManager;I)V

    .line 166
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$002(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Z)Z

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    const/16 v1, 0x57

    # invokes: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$400(Lcom/keephealth/android/workmanager/MusicControlWorkManager;I)V

    :cond_56
    return-void
.end method

.method public preMusic()V
    .registers 5

    .line 118
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->preMusic()V

    .line 119
    const-string v0, "FF433"

    const-string v1, "\u4e0a\u4e00\u99962:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 121
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_89

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$202(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$100(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_49

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$200(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    const/16 v1, 0x7e

    # invokes: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$400(Lcom/keephealth/android/workmanager/MusicControlWorkManager;I)V

    .line 132
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$002(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Z)Z

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    const/16 v1, 0x58

    # invokes: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$400(Lcom/keephealth/android/workmanager/MusicControlWorkManager;I)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.os.Build.MANUFACTURER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 135
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 136
    const-string v0, "\u9b45\u65cf\u624b\u673a\u518d\u53d1\u4e00\u6b21"

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->this$0:Lcom/keephealth/android/workmanager/MusicControlWorkManager;

    # getter for: Lcom/keephealth/android/workmanager/MusicControlWorkManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->access$500(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1$1;-><init>(Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_89
    return-void
.end method

.method public subVol()V
    .registers 5

    .line 186
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->subVol()V

    .line 187
    const-string v0, "gge3d"

    const-string v1, "subVol...3"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 189
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_2f

    .line 191
    const-string v0, "FF433"

    const-string v1, "\u97f3\u91cf\u51cf\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;->val$context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2f
    return-void
.end method
