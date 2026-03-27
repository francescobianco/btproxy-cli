.class public Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "DrinkWaterGoalAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;

    .line 22
    const-string v0, "field \'tvName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 23
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;

    .line 33
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    return-void

    .line 30
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
