.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$5;
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


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    const/4 v2, 0x2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    invoke-static {v0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    return-void
.end method
