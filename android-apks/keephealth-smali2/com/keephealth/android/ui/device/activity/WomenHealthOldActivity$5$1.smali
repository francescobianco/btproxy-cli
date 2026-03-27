.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;)V
    .registers 2

    .line 857
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 860
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I

    move-result v3

    const/4 v4, 0x3

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V
    invoke-static {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;IIII)V

    return-void
.end method
