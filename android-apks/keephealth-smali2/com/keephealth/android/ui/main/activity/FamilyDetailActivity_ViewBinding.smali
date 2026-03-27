.class public Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FamilyDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0902cd:Landroid/view/View;

.field private view7f090640:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V
    .registers 3

    .line 30
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;Landroid/view/View;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    .line 38
    const-string v0, "field \'ivHeader\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivHeader:Landroid/widget/ImageView;

    .line 39
    const-string v0, "field \'tvName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvName:Landroid/widget/TextView;

    .line 40
    const-string v0, "field \'ilStep\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901ec

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilStep:Lcom/keephealth/android/views/ItemLableValue;

    .line 41
    const-string v0, "field \'ilSport\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901e9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSport:Lcom/keephealth/android/views/ItemLableValue;

    .line 42
    const-string v0, "field \'ilHeart\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilHeart:Lcom/keephealth/android/views/ItemLableValue;

    .line 43
    const-string v0, "field \'ilOxygen\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilOxygen:Lcom/keephealth/android/views/ItemLableValue;

    .line 44
    const-string v0, "field \'ilTemp\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilTemp:Lcom/keephealth/android/views/ItemLableValue;

    .line 45
    const-string v0, "field \'ilBlood\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901c9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilBlood:Lcom/keephealth/android/views/ItemLableValue;

    .line 46
    const-string v0, "field \'ilSleep\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSleep:Lcom/keephealth/android/views/ItemLableValue;

    .line 47
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v0, "field \'tvDate\' and method \'selectData\'"

    const v1, 0x7f090640

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    const-string v2, "field \'tvDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvDate:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cd

    .line 74
    const-string v1, "method \'selectData\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 75
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    if-eqz v0, :cond_3c

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivHeader:Landroid/widget/ImageView;

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvName:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilStep:Lcom/keephealth/android/views/ItemLableValue;

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSport:Lcom/keephealth/android/views/ItemLableValue;

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilHeart:Lcom/keephealth/android/views/ItemLableValue;

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilOxygen:Lcom/keephealth/android/views/ItemLableValue;

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilTemp:Lcom/keephealth/android/views/ItemLableValue;

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilBlood:Lcom/keephealth/android/views/ItemLableValue;

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSleep:Lcom/keephealth/android/views/ItemLableValue;

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvDate:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f090640:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    return-void

    .line 88
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
