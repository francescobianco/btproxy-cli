.class Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MainActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/VersionBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V
    .registers 2

    .line 611
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 4

    .line 639
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "GOOGLE_REQUEST"

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 640
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # invokes: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestFit()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$400(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    :cond_14
    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/VersionBean;",
            ">;)V"
        }
    .end annotation

    .line 614
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/VersionBean;

    if-nez p1, :cond_9

    return-void

    .line 618
    :cond_9
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/VersionBean;->getVersion()I

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 621
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {v0}, Lcom/keephealth/android/util/AppUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/VersionBean;->getVersion()I

    move-result v1

    if-lt v0, v1, :cond_31

    .line 622
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "GOOGLE_REQUEST"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 623
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # invokes: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->requestFit()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$400(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V

    goto :goto_65

    .line 626
    :cond_31
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$500(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 627
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$500(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_65

    .line 628
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$500(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_65

    .line 631
    :cond_4f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/VersionBean;->getUpgradeType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateVersion(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateDialog:Landroid/app/Dialog;
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$502(Lcom/keephealth/android/ui/main/activity/MainActivityNew;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 632
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$7;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->updateDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$500(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_65
    :goto_65
    return-void
.end method
