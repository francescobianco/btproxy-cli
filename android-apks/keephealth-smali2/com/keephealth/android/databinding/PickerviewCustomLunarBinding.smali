.class public final Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;
.super Ljava/lang/Object;
.source "PickerviewCustomLunarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final day:Lcom/contrarywind/view/WheelView;

.field public final hour:Lcom/contrarywind/view/WheelView;

.field public final min:Lcom/contrarywind/view/WheelView;

.field public final month:Lcom/contrarywind/view/WheelView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final second:Lcom/contrarywind/view/WheelView;

.field public final timepicker:Landroid/widget/LinearLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvFinish:Landroid/widget/TextView;

.field public final year:Lcom/contrarywind/view/WheelView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/contrarywind/view/WheelView;)V
    .registers 11

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 55
    iput-object p2, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->day:Lcom/contrarywind/view/WheelView;

    .line 56
    iput-object p3, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->hour:Lcom/contrarywind/view/WheelView;

    .line 57
    iput-object p4, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->min:Lcom/contrarywind/view/WheelView;

    .line 58
    iput-object p5, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->month:Lcom/contrarywind/view/WheelView;

    .line 59
    iput-object p6, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->second:Lcom/contrarywind/view/WheelView;

    .line 60
    iput-object p7, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->timepicker:Landroid/widget/LinearLayout;

    .line 61
    iput-object p8, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->tvCancel:Landroid/widget/TextView;

    .line 62
    iput-object p9, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->tvFinish:Landroid/widget/TextView;

    .line 63
    iput-object p10, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->year:Lcom/contrarywind/view/WheelView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;
    .registers 14

    const v0, 0x7f09011b

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/contrarywind/view/WheelView;

    if-eqz v4, :cond_76

    const v0, 0x7f0901b8

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/contrarywind/view/WheelView;

    if-eqz v5, :cond_76

    const v0, 0x7f09040a

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/contrarywind/view/WheelView;

    if-eqz v6, :cond_76

    const v0, 0x7f090410

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/contrarywind/view/WheelView;

    if-eqz v7, :cond_76

    const v0, 0x7f090559

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/contrarywind/view/WheelView;

    if-eqz v8, :cond_76

    const v0, 0x7f0905ee

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_76

    const v0, 0x7f090726

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_76

    const v0, 0x7f09073a

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_76

    const v0, 0x7f0907ee

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/contrarywind/view/WheelView;

    if-eqz v12, :cond_76

    .line 147
    new-instance v0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;-><init>(Landroid/widget/LinearLayout;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Lcom/contrarywind/view/WheelView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/contrarywind/view/WheelView;)V

    return-object v0

    .line 150
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;
    .registers 5

    const v0, 0x7f0c0187

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/databinding/PickerviewCustomLunarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
