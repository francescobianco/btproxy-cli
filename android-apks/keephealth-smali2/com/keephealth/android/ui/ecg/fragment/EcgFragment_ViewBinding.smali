.class public Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;
.super Ljava/lang/Object;
.source "EcgFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;

.field private view7f0900b6:Landroid/view/View;

.field private view7f09021e:Landroid/view/View;

.field private view7f090242:Landroid/view/View;

.field private view7f090311:Landroid/view/View;

.field private view7f090312:Landroid/view/View;

.field private view7f090313:Landroid/view/View;

.field private view7f090449:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;Landroid/view/View;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;

    .line 38
    const-string v0, "field \'layoutMeasure\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090310

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure:Landroid/widget/RelativeLayout;

    .line 39
    const-string v0, "field \'layoutMeasure1\' and method \'todatail1\'"

    const v1, 0x7f090311

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    const-string v2, "field \'layoutMeasure1\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure1:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090311:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-string v0, "field \'layoutMeasure2\' and method \'todatail2\'"

    const v1, 0x7f090312

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    const-string v2, "field \'layoutMeasure2\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure2:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090312:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-string v0, "field \'ecgState\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090156

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    .line 58
    const-string v0, "field \'ecgTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090158

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    .line 59
    const-string v0, "field \'ecgHeart\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090154

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgHeart:Landroid/widget/TextView;

    .line 60
    const-string v0, "field \'ecgState2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090157

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState2:Landroid/widget/TextView;

    .line 61
    const-string v0, "field \'ecgTime2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090159

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime2:Landroid/widget/TextView;

    .line 62
    const-string v0, "field \'ecgHeart2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090155

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgHeart2:Landroid/widget/TextView;

    const v0, 0x7f09015a

    .line 63
    const-string v1, "field \'ecgView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgView:Landroid/view/View;

    .line 64
    const-string v0, "field \'layoutNoData\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090318

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutNoData:Landroid/widget/RelativeLayout;

    const v0, 0x7f09021e

    .line 65
    const-string v1, "method \'toEcgWebView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f09021e:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090449

    .line 73
    const-string v1, "method \'toEcgWebViewNoun\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090449:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090242

    .line 81
    const-string v1, "method \'toEcgWebViewInstructions\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090242:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090313

    .line 89
    const-string v1, "method \'toRecords\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090313:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b6

    .line 97
    const-string v1, "method \'satrtMeasuring\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f0900b6:Landroid/view/View;

    .line 99
    new-instance v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;

    if-eqz v0, :cond_4f

    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure:Landroid/widget/RelativeLayout;

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure1:Landroid/widget/RelativeLayout;

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutMeasure2:Landroid/widget/RelativeLayout;

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState:Landroid/widget/TextView;

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime:Landroid/widget/TextView;

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgHeart:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgState2:Landroid/widget/TextView;

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgTime2:Landroid/widget/TextView;

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgHeart2:Landroid/widget/TextView;

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->ecgView:Landroid/view/View;

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment;->layoutNoData:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090311:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090311:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090312:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090312:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f09021e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f09021e:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090449:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090449:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090242:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090242:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090313:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f090313:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f0900b6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/fragment/EcgFragment_ViewBinding;->view7f0900b6:Landroid/view/View;

    return-void

    .line 111
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
