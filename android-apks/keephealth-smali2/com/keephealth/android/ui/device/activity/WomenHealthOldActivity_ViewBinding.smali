.class public Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

.field private view7f090210:Landroid/view/View;

.field private view7f090211:Landroid/view/View;

.field private view7f090212:Landroid/view/View;

.field private view7f090213:Landroid/view/View;

.field private view7f090214:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 3

    .line 36
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Landroid/view/View;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    .line 44
    const-string v0, "field \'titleDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0905f1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->titleDate:Landroid/widget/TextView;

    .line 45
    const-string v0, "field \'calendarView\'"

    const-class v1, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    const v2, 0x7f0900cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    .line 46
    const-string v0, "field \'itMen\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09026f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 47
    const-string v0, "field \'starBarDysm\'"

    const-class v1, Lcom/keephealth/android/views/StarBar;

    const v2, 0x7f090597

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/StarBar;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    .line 48
    const-string v0, "field \'starBarFlow\'"

    const-class v1, Lcom/keephealth/android/views/StarBar;

    const v2, 0x7f090598

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/StarBar;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    .line 49
    const-string v0, "field \'imgMood1\' and method \'moodOnClick\'"

    const v1, 0x7f090210

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    const-string v2, "field \'imgMood1\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090210:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-string v0, "field \'imgMood2\' and method \'moodOnClick\'"

    const v1, 0x7f090211

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    const-string v2, "field \'imgMood2\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090211:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const-string v0, "field \'imgMood3\' and method \'moodOnClick\'"

    const v1, 0x7f090212

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    const-string v2, "field \'imgMood3\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    .line 69
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090212:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v0, "field \'imgMood4\' and method \'moodOnClick\'"

    const v1, 0x7f090213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    const-string v2, "field \'imgMood4\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    .line 78
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090213:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-string v0, "field \'imgMood5\' and method \'moodOnClick\'"

    const v1, 0x7f090214

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    const-string v2, "field \'imgMood5\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    .line 87
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090214:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const-string v0, "field \'showDate\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->showDate:Landroid/widget/LinearLayout;

    .line 95
    const-string v0, "field \'hideDate\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->hideDate:Landroid/widget/LinearLayout;

    .line 96
    const-string v0, "field \'ilMakeLove\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    .line 97
    const-string v0, "field \'itSymptom\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09027f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itSymptom:Landroid/widget/LinearLayout;

    .line 98
    const-string v0, "field \'tvSymptom\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->tvSymptom:Landroid/widget/TextView;

    .line 99
    const-string v0, "field \'rlTips\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090519

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rlTips:Landroid/widget/LinearLayout;

    .line 100
    const-string v0, "field \'llMenstrual\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09038a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    .line 101
    const-string v0, "field \'lin_mood_makelove\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09033b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    if-eqz v0, :cond_4f

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->titleDate:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->showDate:Landroid/widget/LinearLayout;

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->hideDate:Landroid/widget/LinearLayout;

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itSymptom:Landroid/widget/LinearLayout;

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->tvSymptom:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rlTips:Landroid/widget/LinearLayout;

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090210:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090210:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090211:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090211:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090212:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090212:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090213:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090214:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;->view7f090214:Landroid/view/View;

    return-void

    .line 108
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
