.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

.field final synthetic val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4a

    .line 472
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 473
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_53

    .line 475
    :cond_28
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v2, :cond_40

    .line 476
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_53

    .line 478
    :cond_40
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_53

    .line 482
    :cond_4a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 485
    :goto_53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$4;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v1

    const/4 v2, 0x2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V
    invoke-static {v0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;II)V

    return-void
.end method
