.class public Lcom/keephealth/android/views/ecg/EcgGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "EcgGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private hrv_score:[Ljava/lang/String;

.field private hrv_title:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private txt_color:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .registers 5

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->hrv_title:[Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->hrv_score:[Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->txt_color:[I

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->hrv_title:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->hrv_title:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_2b

    .line 50
    new-instance p2, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;-><init>(Lcom/keephealth/android/views/ecg/EcgGridAdapter$1;)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09074d

    .line 52
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const v0, 0x7f09074e

    .line 53
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_34

    .line 57
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 60
    :goto_34
    iget-object v0, p2, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->hrv_title:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p2, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->hrv_score:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p2, Lcom/keephealth/android/views/ecg/EcgGridAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgGridAdapter;->txt_color:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p3
.end method
