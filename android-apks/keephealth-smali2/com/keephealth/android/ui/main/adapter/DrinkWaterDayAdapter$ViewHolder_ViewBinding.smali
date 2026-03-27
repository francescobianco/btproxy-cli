.class public Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "DrinkWaterDayAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;

    .line 23
    const-string v0, "field \'waterTotal\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0907d4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal:Landroid/widget/TextView;

    .line 24
    const-string v0, "field \'tvWaterTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090714

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->tvWaterTime:Landroid/widget/TextView;

    .line 25
    const-string v0, "field \'layout_delete\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090322

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->layout_delete:Landroid/widget/LinearLayout;

    .line 26
    const-string v0, "field \'waterTotal_unit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0907d6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal_unit:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;

    .line 36
    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->tvWaterTime:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->layout_delete:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal_unit:Landroid/widget/TextView;

    return-void

    .line 33
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
