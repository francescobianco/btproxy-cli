.class Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;
.super Ljava/lang/Object;
.source "DeviceVibrateActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/model/bean/SetVibrateBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 114
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SetVibrateBean;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->hideLoading()V

    if-eqz p1, :cond_119

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_119

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ec

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resultList.get(i)-observe:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CalenderDataStruct"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v2, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-direct {v2}, Lcom/keephealth/android/model/bean/VibrateBean;-><init>()V

    .line 123
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/SetVibrateBean;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setType(I)V

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/SetVibrateBean;->getStyle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/SetVibrateBean;->getStyle()I

    move-result v3

    if-eqz v3, :cond_cf

    const/4 v4, 0x1

    if-eq v3, v4, :cond_be

    const/4 v4, 0x2

    if-eq v3, v4, :cond_ad

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9c

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8b

    const/4 v4, 0x5

    if-eq v3, v4, :cond_7a

    goto :goto_df

    .line 142
    :cond_7a
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    goto :goto_df

    .line 139
    :cond_8b
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    goto :goto_df

    .line 136
    :cond_9c
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    goto :goto_df

    .line 133
    :cond_ad
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    goto :goto_df

    .line 130
    :cond_be
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    goto :goto_df

    .line 127
    :cond_cf
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10045c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 146
    :goto_df
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    .line 149
    :cond_ec
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->setList(Ljava/util/List;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6 vibrateBean.get(0).getVibrateStrong():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/SetVibrateBean;->getVibrateStrong()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalenderDataStruc3t"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    return-void
.end method
