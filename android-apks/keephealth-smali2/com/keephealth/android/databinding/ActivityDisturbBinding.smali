.class public final Lcom/keephealth/android/databinding/ActivityDisturbBinding;
.super Ljava/lang/Object;
.source "ActivityDisturbBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final arrowR3:Landroid/widget/ImageView;

.field public final arrowR4:Landroid/widget/ImageView;

.field public final mToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

.field public final remindSportSetLl:Landroid/widget/LinearLayout;

.field public final rlRemindEndTime:Landroid/widget/RelativeLayout;

.field public final rlRemindStartTime:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvMode:Landroid/widget/TextView;

.field public final tvRemindEndTime:Landroid/widget/TextView;

.field public final tvRemindStartTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/keephealth/android/views/CustomToggleButton;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->arrowR3:Landroid/widget/ImageView;

    .line 59
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->arrowR4:Landroid/widget/ImageView;

    .line 60
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->mToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    .line 61
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->remindSportSetLl:Landroid/widget/LinearLayout;

    .line 62
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->rlRemindEndTime:Landroid/widget/RelativeLayout;

    .line 63
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->rlRemindStartTime:Landroid/widget/RelativeLayout;

    .line 64
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->tvMode:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->tvRemindEndTime:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->tvRemindStartTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDisturbBinding;
    .registers 14

    const v0, 0x7f090071

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_76

    const v0, 0x7f090072

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_76

    const v0, 0x7f0903e4

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/CustomToggleButton;

    if-eqz v6, :cond_76

    const v0, 0x7f0904bb

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_76

    const v0, 0x7f09050a

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_76

    const v0, 0x7f09050c

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_76

    const v0, 0x7f090688

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_76

    const v0, 0x7f0906ae

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_76

    const v0, 0x7f0906b0

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_76

    .line 150
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/ActivityDisturbBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/keephealth/android/views/CustomToggleButton;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 154
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDisturbBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDisturbBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDisturbBinding;
    .registers 5

    const v0, 0x7f0c0044

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDisturbBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDisturbBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
