.class public Lcom/keephealth/android/views/dialog/ListItemDialog;
.super Landroid/app/Dialog;
.source "ListItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;
    }
.end annotation


# instance fields
.field private cancel:Landroid/widget/Button;

.field private haveTitle:Z

.field private isSetTextDelRed:Z

.field private itemSS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    const p2, 0x7f11030f

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->isSetTextDelRed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    const v0, 0x7f11030f

    .line 86
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->isSetTextDelRed:Z

    .line 88
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->title:Ljava/lang/String;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 92
    iput-boolean v1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    .line 93
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 95
    :cond_24
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 96
    iget-object p3, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 99
    :cond_3a
    iput-object p4, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 7

    const v0, 0x7f11030f

    .line 64
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->isSetTextDelRed:Z

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->title:Ljava/lang/String;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 70
    iput-boolean v1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    .line 71
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    :cond_24
    array-length p1, p3

    :goto_25
    if-ge v0, p1, :cond_31

    aget-object p2, p3, v0

    .line 74
    iget-object v1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 77
    :cond_31
    iput-object p4, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->isSetTextDelRed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/dialog/ListItemDialog;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->itemSS:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public haveTitle()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 105
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00ed

    .line 106
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/dialog/ListItemDialog;->setContentView(I)V

    const p1, 0x7f090564

    .line 110
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/dialog/ListItemDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->cancel:Landroid/widget/Button;

    .line 111
    new-instance v0, Lcom/keephealth/android/views/dialog/ListItemDialog$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/ListItemDialog$1;-><init>(Lcom/keephealth/android/views/dialog/ListItemDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090563

    .line 120
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/dialog/ListItemDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->mListView:Landroid/widget/ListView;

    .line 121
    new-instance p1, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;

    iget-boolean v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->haveTitle:Z

    iget-object v1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v1}, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;-><init>(Lcom/keephealth/android/views/dialog/ListItemDialog;ZLandroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/dialog/ListItemDialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/dialog/ListItemDialog;->setCancelable(Z)V

    return-void
.end method

.method public setItemSS([Landroid/text/SpannableString;)V
    .registers 6

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->itemSS:Ljava/util/List;

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    .line 47
    iget-object v3, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->itemSS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method public setSetTextDelRed(Z)V
    .registers 2

    .line 81
    iput-boolean p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog;->isSetTextDelRed:Z

    return-void
.end method

.method public show()V
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/ListItemDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 241
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
