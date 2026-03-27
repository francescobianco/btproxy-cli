.class Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;
.super Ljava/lang/Object;
.source "DrinkWaterTargetAndNoticeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->createObserver()V
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

    .line 540
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 553
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 558
    :cond_15
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 560
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 561
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 566
    :cond_48
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    .line 567
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->addWater:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
