.class public Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DrinkWaterAddActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

.field private view7f090505:Landroid/view/View;

.field private view7f090506:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Landroid/view/View;)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    .line 33
    const-string v0, "field \'etDrinkWaterGoal\'"

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09016a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    .line 34
    const-string v0, "field \'tv_unit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09078d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_unit:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tv_fast_add\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090739

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_fast_add:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tv_left_box\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090750

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_left_box:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tv_right_box\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090774

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_right_box:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'tvCup\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09063a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvCup:Landroid/widget/TextView;

    .line 39
    const-string v0, "field \'tvBottle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09062a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvBottle:Landroid/widget/TextView;

    const v0, 0x7f090505

    .line 40
    const-string v1, "method \'addWater1\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->view7f090505:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090506

    .line 48
    const-string v1, "method \'addWater2\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->view7f090506:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    .line 65
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    .line 66
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_unit:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_fast_add:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_left_box:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tv_right_box:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvCup:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->tvBottle:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->view7f090505:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->view7f090505:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->view7f090506:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity_ViewBinding;->view7f090506:Landroid/view/View;

    return-void

    .line 62
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
