.class public final Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;
.super Ljava/lang/Object;
.source "ActivityDrinkWaterAddBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etDrinkWaterGoal:Landroid/widget/EditText;

.field public final llTag1:Landroid/widget/LinearLayout;

.field public final llTag2:Landroid/widget/LinearLayout;

.field public final rlQukAdd1:Landroid/widget/RelativeLayout;

.field public final rlQukAdd2:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvBottle:Landroid/widget/TextView;

.field public final tvCup:Landroid/widget/TextView;

.field public final tvFastAdd:Landroid/widget/TextView;

.field public final tvLeftBox:Landroid/widget/TextView;

.field public final tvRightBox:Landroid/widget/TextView;

.field public final tvUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->rootView:Landroid/widget/LinearLayout;

    .line 64
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->etDrinkWaterGoal:Landroid/widget/EditText;

    .line 65
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->llTag1:Landroid/widget/LinearLayout;

    .line 66
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->llTag2:Landroid/widget/LinearLayout;

    .line 67
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->rlQukAdd1:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->rlQukAdd2:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->tvBottle:Landroid/widget/TextView;

    .line 70
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->tvCup:Landroid/widget/TextView;

    .line 71
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->tvFastAdd:Landroid/widget/TextView;

    .line 72
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->tvLeftBox:Landroid/widget/TextView;

    .line 73
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->tvRightBox:Landroid/widget/TextView;

    .line 74
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->tvUnit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;
    .registers 16

    const v0, 0x7f09016a

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_8e

    const v0, 0x7f0903a3

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8e

    const v0, 0x7f0903a4

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_8e

    const v0, 0x7f090505

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_8e

    const v0, 0x7f090506

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_8e

    const v0, 0x7f09062a

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_8e

    const v0, 0x7f09063a

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_8e

    const v0, 0x7f090739

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_8e

    const v0, 0x7f090750

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8e

    const v0, 0x7f090774

    .line 159
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8e

    const v0, 0x7f09078d

    .line 165
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_8e

    .line 170
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 173
    :cond_8e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;
    .registers 5

    const v0, 0x7f0c0046

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterAddBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
