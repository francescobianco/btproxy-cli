.class public final Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;
.super Ljava/lang/Object;
.source "ActivityNewAlarmSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

.field public final alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

.field public final alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

.field public final arrowR1:Landroid/widget/ImageView;

.field public final arrowR2:Landroid/widget/ImageView;

.field public final point:Lcom/keephealth/android/views/wheel/WheelView;

.field public final rlAlarmRemind:Landroid/widget/RelativeLayout;

.field public final rlAlarmRepeat:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

.field public final timeAlarmSetContentLl:Landroid/widget/LinearLayout;

.field public final timeAlarmSetLl:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvAlarmRemind:Landroid/widget/TextView;

.field public final tvAlarmRepeat:Landroid/widget/TextView;

.field public final tvDelete:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/wheel/WheelView;Lcom/keephealth/android/views/wheel/WheelView;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/ItemNewAlarmSet;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 20

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->arrowR1:Landroid/widget/ImageView;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->arrowR2:Landroid/widget/ImageView;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->point:Lcom/keephealth/android/views/wheel/WheelView;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->rlAlarmRemind:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->rlAlarmRepeat:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSetContentLl:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSetLl:Landroid/widget/LinearLayout;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvAlarmRemind:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvAlarmRepeat:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvDelete:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvTag:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;
    .registers 22

    move-object/from16 v0, p0

    const v1, 0x7f090054

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/keephealth/android/views/wheel/WheelView;

    if-eqz v5, :cond_d1

    const v1, 0x7f090055

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/wheel/WheelView;

    if-eqz v6, :cond_d1

    const v1, 0x7f090056

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/keephealth/android/views/wheel/WheelView;

    if-eqz v7, :cond_d1

    const v1, 0x7f09006f

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_d1

    const v1, 0x7f090070

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_d1

    const v1, 0x7f090468

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/keephealth/android/views/wheel/WheelView;

    if-eqz v10, :cond_d1

    const v1, 0x7f0904d8

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_d1

    const v1, 0x7f0904d9

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_d1

    const v1, 0x7f0905eb

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/keephealth/android/views/ItemNewAlarmSet;

    if-eqz v13, :cond_d1

    const v1, 0x7f0905ec

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_d1

    const v1, 0x7f0905ed

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_d1

    const v1, 0x7f0905f6

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d1

    .line 199
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v16

    const v1, 0x7f090617

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_d1

    const v1, 0x7f090618

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_d1

    const v1, 0x7f09064e

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_d1

    const v1, 0x7f0906e6

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_d1

    .line 225
    new-instance v1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;-><init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/wheel/WheelView;Lcom/keephealth/android/views/wheel/WheelView;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/ItemNewAlarmSet;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 230
    :cond_d1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;
    .registers 5

    const v0, 0x7f0c006c

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
