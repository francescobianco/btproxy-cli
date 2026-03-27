.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;)V
    .registers 2

    .line 509
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    const/4 v2, 0x2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    invoke-static {v0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 513
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_out_women_date:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$5;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->view_out_women_date:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
