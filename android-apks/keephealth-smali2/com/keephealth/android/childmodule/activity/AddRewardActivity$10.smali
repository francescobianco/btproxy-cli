.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;
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

    .line 277
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 280
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v1, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10$1;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;)V

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/app/Activity;IILcom/keephealth/android/childmodule/DialogView$OnOkClick;)V

    return-void
.end method
