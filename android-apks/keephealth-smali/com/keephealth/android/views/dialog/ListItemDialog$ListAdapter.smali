.class Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/dialog/ListItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private haveTitle:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/dialog/ListItemDialog;ZLandroid/content/Context;)V
    .registers 5

    .line 135
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->haveTitle:Z

    .line 136
    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$000(Lcom/keephealth/android/views/dialog/ListItemDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 137
    iput-boolean p2, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->haveTitle:Z

    .line 138
    iput-object p3, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    if-nez p2, :cond_36

    .line 164
    new-instance p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;-><init>(Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;)V

    .line 165
    iget-object p3, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c014c

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090567

    .line 168
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f090566

    .line 169
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f090565

    .line 171
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 172
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3f

    .line 174
    :cond_36
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    :goto_3f
    const v0, 0x7f080139

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez p1, :cond_79

    .line 178
    iget-boolean v4, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->haveTitle:Z

    if-eqz v4, :cond_70

    .line 180
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f08013a

    .line 184
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_c8

    .line 186
    :cond_70
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f08013c

    .line 187
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_c8

    .line 190
    :cond_79
    iget-object v4, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v4, p1, :cond_99

    .line 191
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f080133

    .line 194
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_c8

    .line 195
    :cond_99
    iget-object v4, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v4, v1, :cond_b6

    .line 196
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 199
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_c8

    .line 201
    :cond_b6
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v4, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f080136

    .line 204
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 207
    :goto_c8
    iget-object v4, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_e3

    .line 208
    iget-object v1, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v1, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v1, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 211
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 221
    :cond_e3
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->itemSS:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$200(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->itemSS:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$200(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_109

    .line 222
    iget-object p2, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->itemSS:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$200(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11a

    .line 224
    :cond_109
    iget-object p2, p2, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    # getter for: Lcom/keephealth/android/views/dialog/ListItemDialog;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/dialog/ListItemDialog;->access$100(Lcom/keephealth/android/views/dialog/ListItemDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11a
    return-object p3
.end method
