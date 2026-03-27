.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3$1;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 388
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;->val$calendar2:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;->val$calendar2:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;->val$calendar2:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0x15

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v0, v4, v1, v3, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    return-void
.end method
