.class Lcom/keephealth/android/ui/main/activity/DetailActivity$2;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 4

    .line 334
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    goto :goto_25

    .line 343
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    goto :goto_25

    .line 340
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->CAL:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    goto :goto_25

    .line 337
    :cond_1f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 346
    :goto_25
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->access$300(Lcom/keephealth/android/ui/main/activity/DetailActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailPresenter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetail(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/DetailActivity;Lcom/keephealth/android/model/bean/StepDetailVO;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method
