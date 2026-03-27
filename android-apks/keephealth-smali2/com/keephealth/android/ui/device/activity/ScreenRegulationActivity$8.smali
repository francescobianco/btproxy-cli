.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 4

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvStartTime2:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setIsVisible(ZLandroid/widget/TextView;)V

    .line 448
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->tvEndTime2:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setIsVisible(ZLandroid/widget/TextView;)V

    if-eqz p2, :cond_2a

    .line 449
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ItemToggleLayout2;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 450
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDoNotDisturbAllDay:Lcom/keephealth/android/views/ItemToggleLayout2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout2;->setOpen(Z)V

    .line 452
    :cond_2a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDisturbMode()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    return-void
.end method
