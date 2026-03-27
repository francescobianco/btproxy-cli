.class public Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "FamilyAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;

    .line 22
    const-string v0, "field \'familyAvatar\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09017e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->familyAvatar:Landroid/widget/ImageView;

    .line 23
    const-string v0, "field \'familyName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090180

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->familyName:Landroid/widget/TextView;

    const v0, 0x7f0907ba

    .line 24
    const-string v1, "field \'viewLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->viewLine:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;

    .line 34
    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->familyAvatar:Landroid/widget/ImageView;

    .line 35
    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->familyName:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->viewLine:Landroid/view/View;

    return-void

    .line 31
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
