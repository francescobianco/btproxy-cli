.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

.field final synthetic val$set1:Ljava/util/HashSet;

.field final synthetic val$set2:Ljava/util/HashSet;

.field final synthetic val$set3:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3053
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->val$set1:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->val$set2:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->val$set3:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 3056
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->val$set1:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->val$set2:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;->val$set3:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    return-void
.end method
