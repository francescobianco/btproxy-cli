.class Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AlarmAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 85
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->access$000(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
