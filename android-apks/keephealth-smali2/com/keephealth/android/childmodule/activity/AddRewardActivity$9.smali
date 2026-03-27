.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$9;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AddRewardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$9;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 272
    new-instance p1, Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;

    invoke-direct {p1}, Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;-><init>()V

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$9;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemId:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$600(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;->setId(I)V

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$9;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->deleReward(Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;)V

    return-void
.end method
