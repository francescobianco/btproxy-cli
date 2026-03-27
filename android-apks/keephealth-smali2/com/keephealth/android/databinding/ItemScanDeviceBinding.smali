.class public final Lcom/keephealth/android/databinding/ItemScanDeviceBinding;
.super Ljava/lang/Object;
.source "ItemScanDeviceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivDevice:Landroid/widget/ImageView;

.field public final ivState:Landroid/widget/ImageView;

.field public final layoutItem:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvConnect:Landroid/widget/ImageView;

.field public final tvDb:Landroid/widget/TextView;

.field public final tvDeviceName:Landroid/widget/TextView;

.field public final tvMac:Landroid/widget/TextView;

.field public final tvState:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 10

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->ivDevice:Landroid/widget/ImageView;

    .line 53
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->ivState:Landroid/widget/ImageView;

    .line 54
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->layoutItem:Landroid/widget/RelativeLayout;

    .line 55
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->tvConnect:Landroid/widget/ImageView;

    .line 56
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->tvDb:Landroid/widget/TextView;

    .line 57
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->tvDeviceName:Landroid/widget/TextView;

    .line 58
    iput-object p8, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->tvMac:Landroid/widget/TextView;

    .line 59
    iput-object p9, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->tvState:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemScanDeviceBinding;
    .registers 13

    const v0, 0x7f0902a8

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_5f

    const v0, 0x7f0902d2

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_5f

    .line 101
    move-object v6, p0

    check-cast v6, Landroid/widget/RelativeLayout;

    const v0, 0x7f090634

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_5f

    const v0, 0x7f090649

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_5f

    const v0, 0x7f090650

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_5f

    const v0, 0x7f090681

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_5f

    const v0, 0x7f0906e0

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_5f

    .line 133
    new-instance p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v11}, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object p0

    .line 136
    :cond_5f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemScanDeviceBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemScanDeviceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemScanDeviceBinding;
    .registers 5

    const v0, 0x7f0c012d

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemScanDeviceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemScanDeviceBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
