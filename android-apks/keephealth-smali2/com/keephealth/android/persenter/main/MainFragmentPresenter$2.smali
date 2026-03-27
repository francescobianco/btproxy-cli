.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;
.super Ljava/lang/Object;
.source "MainFragmentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 215
    const-string v0, "weatherTask -- return1"

    const-string v1, "ghfgr4"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->weatherTask:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v3, v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->delayMillisWeather:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    const-string v0, "weatherTask -- return2"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_4e

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-eqz v0, :cond_25

    goto :goto_4e

    .line 222
    :cond_25
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_48

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_48

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-nez v0, :cond_48

    .line 223
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 224
    const-string v0, "weather_3333"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchWeather()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_4d

    .line 227
    :cond_42
    const-string v0, "weather_2222"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 230
    :cond_48
    const-string v0, "weather_1111"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-void

    .line 219
    :cond_4e
    :goto_4e
    const-string v0, "weatherTask -- return3"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
