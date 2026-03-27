.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;
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

.field final synthetic val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9009\u62e9\u7684\u65e5\u671f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6tyg"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_out_women_date:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$6;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->view_out_women_date:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
