.class Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "MoreSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWearHabit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->handList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    const v3, 0x7f1006e3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelSportTypeDialog(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->wheelViewDialog:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    return-void
.end method
