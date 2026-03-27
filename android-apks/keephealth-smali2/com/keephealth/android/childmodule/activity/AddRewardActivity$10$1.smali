.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10$1;
.super Ljava/lang/Object;
.source "AddRewardActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnOkClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10$1;->this$1:Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOk(I)V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10$1;->this$1:Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
