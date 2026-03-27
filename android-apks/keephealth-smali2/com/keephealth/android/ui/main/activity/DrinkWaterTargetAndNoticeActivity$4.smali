.class Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;
.super Ljava/lang/Object;
.source "DrinkWaterTargetAndNoticeActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->handleData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 408
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoalPosition:I
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$802(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;I)I

    .line 409
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p2, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->drinkWaterGoals:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoalPosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$902(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    .line 410
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object p1

    if-nez p1, :cond_26

    .line 411
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->initLunarPicker()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    goto :goto_4d

    .line 413
    :cond_26
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;
    invoke-static {p2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result p2

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->selectGoal:Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setSelectOptions(III)V

    .line 414
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/OptionsPickerView;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    :goto_4d
    return-void
.end method
