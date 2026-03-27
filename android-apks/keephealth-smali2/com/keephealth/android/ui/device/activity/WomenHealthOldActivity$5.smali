.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 2

    .line 852
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 855
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuData(ZIII)V
    invoke-static {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;ZIII)V

    .line 857
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
