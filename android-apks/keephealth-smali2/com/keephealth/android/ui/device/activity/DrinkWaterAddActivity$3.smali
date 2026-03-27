.class Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;
.super Ljava/lang/Object;
.source "DrinkWaterAddActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 221
    :cond_13
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 229
    :cond_42
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->addWater:Ljava/lang/String;

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
