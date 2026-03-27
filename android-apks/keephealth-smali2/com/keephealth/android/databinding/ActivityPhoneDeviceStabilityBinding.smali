.class public final Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;
.super Ljava/lang/Object;
.source "ActivityPhoneDeviceStabilityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnGoSet:Landroid/widget/Button;

.field public final linContent1:Landroid/widget/LinearLayout;

.field public final linContent2:Landroid/widget/LinearLayout;

.field public final linContent3:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvTitle1:Landroid/widget/TextView;

.field public final tvTitle2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->btnGoSet:Landroid/widget/Button;

    .line 48
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->linContent1:Landroid/widget/LinearLayout;

    .line 49
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->linContent2:Landroid/widget/LinearLayout;

    .line 50
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->linContent3:Landroid/widget/LinearLayout;

    .line 51
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->tvTitle1:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->tvTitle2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;
    .registers 11

    const v0, 0x7f0900c4

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_52

    const v0, 0x7f090331

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_52

    const v0, 0x7f090332

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_52

    const v0, 0x7f090333

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_52

    const v0, 0x7f090789

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_52

    const v0, 0x7f09078a

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_52

    .line 118
    new-instance v0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 121
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;
    .registers 5

    const v0, 0x7f0c0071

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityPhoneDeviceStabilityBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
