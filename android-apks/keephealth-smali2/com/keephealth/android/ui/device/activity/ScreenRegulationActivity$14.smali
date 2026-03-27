.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$14;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/ItemToggleLayout2$OnToggleListener;


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

    .line 500
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/keephealth/android/views/ItemToggleLayout2;Z)V
    .registers 3

    if-eqz p2, :cond_18

    .line 503
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 504
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->binding:Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityScreenRegulationBinding;->itDisturbMode:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 506
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->setDisturbMode()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V

    return-void
.end method
