.class public Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FamilyPermissonActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;

.field private view7f0900ae:Landroid/view/View;

.field private view7f090304:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V
    .registers 3

    .line 26
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;Landroid/view/View;)V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;

    .line 34
    const-string v0, "field \'ivHeader\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ivHeader:Landroid/widget/ImageView;

    .line 35
    const-string v0, "field \'tvName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->tvName:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'ctSport\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090104

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSport:Lcom/keephealth/android/views/CustomToggleButton;

    .line 37
    const-string v0, "field \'ctSleep\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090103

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSleep:Lcom/keephealth/android/views/CustomToggleButton;

    .line 38
    const-string v0, "field \'ctHeart\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090101

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctHeart:Lcom/keephealth/android/views/CustomToggleButton;

    .line 39
    const-string v0, "field \'ctBlood\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090100

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctBlood:Lcom/keephealth/android/views/CustomToggleButton;

    .line 40
    const-string v0, "field \'ctOxygen\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090102

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctOxygen:Lcom/keephealth/android/views/CustomToggleButton;

    .line 41
    const-string v0, "field \'ctTemp\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090106

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctTemp:Lcom/keephealth/android/views/CustomToggleButton;

    const v0, 0x7f0900ae

    .line 42
    const-string v1, "method \'removeFamily\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->view7f0900ae:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090304

    .line 50
    const-string v1, "method \'editName\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->view7f090304:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;

    .line 67
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ivHeader:Landroid/widget/ImageView;

    .line 68
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->tvName:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSport:Lcom/keephealth/android/views/CustomToggleButton;

    .line 70
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctSleep:Lcom/keephealth/android/views/CustomToggleButton;

    .line 71
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctHeart:Lcom/keephealth/android/views/CustomToggleButton;

    .line 72
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctBlood:Lcom/keephealth/android/views/CustomToggleButton;

    .line 73
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctOxygen:Lcom/keephealth/android/views/CustomToggleButton;

    .line 74
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;->ctTemp:Lcom/keephealth/android/views/CustomToggleButton;

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->view7f0900ae:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->view7f0900ae:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->view7f090304:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity_ViewBinding;->view7f090304:Landroid/view/View;

    return-void

    .line 64
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
