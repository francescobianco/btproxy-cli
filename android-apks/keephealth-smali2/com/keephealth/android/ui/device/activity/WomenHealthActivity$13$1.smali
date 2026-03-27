.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;)V
    .registers 2

    .line 3015
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3018
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;

    iget v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$year:I

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;

    iget v2, v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$month:I

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;

    iget v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$day:I

    const/16 v4, 0x24

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    return-void
.end method
