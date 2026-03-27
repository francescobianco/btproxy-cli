.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$7;
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

    .line 517
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$7;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$7;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$7;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$7;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v1

    const/4 v2, 0x1

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V
    invoke-static {v0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;II)V

    return-void
.end method
