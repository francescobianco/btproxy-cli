.class public final Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;
.super Ljava/lang/Object;
.source "ItemDrinkWaterDayBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutContent:Landroid/widget/RelativeLayout;

.field public final layoutDelete:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final slidlayout:Lcom/keephealth/android/views/RvSlideLayout;

.field public final tvWaterTime:Landroid/widget/TextView;

.field public final waterTotal:Landroid/widget/TextView;

.field public final waterTotalUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/RvSlideLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->layoutContent:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->layoutDelete:Landroid/widget/LinearLayout;

    .line 49
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->slidlayout:Lcom/keephealth/android/views/RvSlideLayout;

    .line 50
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->tvWaterTime:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->waterTotal:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->waterTotalUnit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;
    .registers 9

    .line 82
    move-object v2, p0

    check-cast v2, Landroid/widget/RelativeLayout;

    const v0, 0x7f090322

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_47

    const v0, 0x7f09057c

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/RvSlideLayout;

    if-eqz v4, :cond_47

    const v0, 0x7f090714

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_47

    const v0, 0x7f0907d4

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_47

    const v0, 0x7f0907d6

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_47

    .line 114
    new-instance p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/RvSlideLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 117
    :cond_47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;
    .registers 5

    const v0, 0x7f0c011c

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemDrinkWaterDayBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
