.class Lcom/keephealth/android/sevice/MusicContrlTwoService$1;
.super Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;
.source "MusicContrlTwoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/sevice/MusicContrlTwoService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/MusicContrlTwoService;I)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-direct {p0, p2}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addVol()V
    .registers 4

    .line 191
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->addVol()V

    .line 192
    const-string v0, "\u97f3\u91cf\u52a0\u6210\u529f"

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 195
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_29

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_29
    return-void
.end method

.method public exitMusic()V
    .registers 19

    move-object/from16 v0, p0

    .line 119
    invoke-super/range {p0 .. p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->exitMusic()V

    .line 121
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 122
    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v1, :cond_77

    .line 123
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$202(Lcom/keephealth/android/sevice/MusicContrlTwoService;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$100(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 126
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v3

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v5

    const/16 v8, 0x57

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 127
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v11

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v13

    const/16 v16, 0x57

    const/16 v17, 0x0

    const/4 v15, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 128
    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 129
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :cond_77
    return-void
.end method

.method public musicControl()V
    .registers 22

    move-object/from16 v0, p0

    .line 61
    invoke-super/range {p0 .. p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->musicControl()V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u73af\u63a7\u5236App\u5f00\u59cb\u97f3\u4e50\u6210\u529f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$000(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u73af\u63a7\u5236App\u5f00\u59cb\u97f3\u4e50\u6210\u529f2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$000(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "audioManager.isMusicActive()2:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$100(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_1cf

    .line 66
    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v1, :cond_1cf

    .line 67
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$202(Lcom/keephealth/android/sevice/MusicContrlTwoService;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$200(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1cf

    .line 69
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$100(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "audio"

    if-eqz v1, :cond_130

    .line 70
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$000(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 73
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v6

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v8

    const/16 v11, 0x7f

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 74
    new-instance v3, Landroid/view/KeyEvent;

    iget-object v5, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v14

    iget-object v5, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v16

    const/16 v19, 0x7f

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 75
    iget-object v5, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 76
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 77
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v1, v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$002(Lcom/keephealth/android/sevice/MusicContrlTwoService;Z)Z

    goto/16 :goto_1cf

    .line 82
    :cond_e5
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v8

    const/16 v11, 0x7e

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 83
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v5, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v14

    iget-object v5, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v5}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v16

    const/16 v19, 0x7e

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 84
    iget-object v5, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 85
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 86
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v1, v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$002(Lcom/keephealth/android/sevice/MusicContrlTwoService;Z)Z

    goto/16 :goto_1cf

    .line 94
    :cond_130
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$100(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 95
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v1, v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$002(Lcom/keephealth/android/sevice/MusicContrlTwoService;Z)Z

    .line 98
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v8

    const/16 v11, 0x7f

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 99
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v14

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v16

    const/16 v19, 0x7f

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 100
    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v3, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 101
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1cf

    .line 103
    :cond_186
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v1, v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$002(Lcom/keephealth/android/sevice/MusicContrlTwoService;Z)Z

    .line 106
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v8

    const/16 v11, 0x7e

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 107
    new-instance v2, Landroid/view/KeyEvent;

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v14

    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J
    invoke-static {v3}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J

    move-result-wide v16

    const/16 v19, 0x7e

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 108
    iget-object v3, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v3, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 109
    iget-object v1, v0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v1, v4}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :cond_1cf
    :goto_1cf
    return-void
.end method

.method public nextMusic()V
    .registers 4

    .line 170
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->nextMusic()V

    .line 171
    const-string v0, "FF433"

    const-string v1, "\u4e0b\u4e00\u66f2\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 173
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_56

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$202(Lcom/keephealth/android/sevice/MusicContrlTwoService;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$100(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_49

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$200(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const/16 v1, 0x7e

    # invokes: Lcom/keephealth/android/sevice/MusicContrlTwoService;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$400(Lcom/keephealth/android/sevice/MusicContrlTwoService;I)V

    .line 184
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$002(Lcom/keephealth/android/sevice/MusicContrlTwoService;Z)Z

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const/16 v1, 0x57

    # invokes: Lcom/keephealth/android/sevice/MusicContrlTwoService;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$400(Lcom/keephealth/android/sevice/MusicContrlTwoService;I)V

    :cond_56
    return-void
.end method

.method public preMusic()V
    .registers 5

    .line 136
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->preMusic()V

    .line 137
    const-string v0, "FF433"

    const-string v1, "\u4e0a\u4e00\u99962:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 139
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_89

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$202(Lcom/keephealth/android/sevice/MusicContrlTwoService;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$100(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_49

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$200(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const/16 v1, 0x7e

    # invokes: Lcom/keephealth/android/sevice/MusicContrlTwoService;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$400(Lcom/keephealth/android/sevice/MusicContrlTwoService;I)V

    .line 150
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$002(Lcom/keephealth/android/sevice/MusicContrlTwoService;Z)Z

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const/16 v1, 0x58

    # invokes: Lcom/keephealth/android/sevice/MusicContrlTwoService;->sendMusicKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$400(Lcom/keephealth/android/sevice/MusicContrlTwoService;I)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.os.Build.MANUFACTURER:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 153
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 154
    const-string v0, "\u9b45\u65cf\u624b\u673a\u518d\u53d1\u4e00\u6b21"

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    # getter for: Lcom/keephealth/android/sevice/MusicContrlTwoService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->access$500(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/sevice/MusicContrlTwoService$1$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/MusicContrlTwoService$1$1;-><init>(Lcom/keephealth/android/sevice/MusicContrlTwoService$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_89
    return-void
.end method

.method public subVol()V
    .registers 5

    .line 204
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->subVol()V

    .line 205
    const-string v0, "subVol...2"

    const-string v1, "gge3d"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 207
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_31

    .line 209
    const-string v0, "\u97f3\u91cf\u51cf\u6210\u529f"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;->this$0:Lcom/keephealth/android/sevice/MusicContrlTwoService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_31
    return-void
.end method
