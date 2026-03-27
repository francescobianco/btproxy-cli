.class Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "PreMenstrualSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 8

    .line 99
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    const-string v0, "dura"

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    const-string v0, "perimeter"

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$100(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 102
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    const-class v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->typeFrom:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$300(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_51

    .line 106
    :cond_30
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "period_date"

    invoke-static {v0, v3, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v0, "from"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    :goto_51
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->finish()V

    return-void
.end method
