.class public final Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;
.super Ljava/lang/Object;
.source "ActivityHealthMonitorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;

.field public final ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

.field public final imgRight:Landroid/widget/ImageView;

.field public final relativeXuetang:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContent1:Landroid/widget/TextView;

.field public final tvContent2:Landroid/widget/TextView;

.field public final viewLine:Landroid/view/View;

.field public final viewLine2:Landroid/view/View;

.field public final viewLine3:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemToggleLayout;Lcom/keephealth/android/views/ItemToggleLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 12

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->rootView:Landroid/widget/LinearLayout;

    .line 63
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;

    .line 64
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 65
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 66
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->imgRight:Landroid/widget/ImageView;

    .line 67
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->relativeXuetang:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->tvContent1:Landroid/widget/TextView;

    .line 69
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->tvContent2:Landroid/widget/TextView;

    .line 70
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->viewLine:Landroid/view/View;

    .line 71
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->viewLine2:Landroid/view/View;

    .line 72
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->viewLine3:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;
    .registers 15

    const v0, 0x7f0901ca

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v4, :cond_79

    const v0, 0x7f0901dd

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/ItemToggleLayout;

    if-eqz v5, :cond_79

    const v0, 0x7f0901f0

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/ItemToggleLayout;

    if-eqz v6, :cond_79

    const v0, 0x7f090236

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_79

    const v0, 0x7f0904b7

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_79

    const v0, 0x7f09072d

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_79

    const v0, 0x7f09072e

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_79

    const v0, 0x7f0907ba

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_79

    const v0, 0x7f0907bb

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_79

    const v0, 0x7f0907bc

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_79

    .line 162
    new-instance v0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;-><init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemToggleLayout;Lcom/keephealth/android/views/ItemToggleLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v0

    .line 166
    :cond_79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;
    .registers 5

    const v0, 0x7f0c005c

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityHealthMonitorBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
