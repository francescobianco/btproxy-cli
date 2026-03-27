.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5$1;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;)V
    .registers 2

    .line 886
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 889
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    const/4 v4, 0x3

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    return-void
.end method
