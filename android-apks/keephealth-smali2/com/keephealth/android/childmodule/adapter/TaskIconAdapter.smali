.class public Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TaskIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;,
        Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;,
        Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$DeleCoureListing;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private id:I

.field private isEdit:Z

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;

.field public mType:I

.field mdeleCoureListing:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$DeleCoureListing;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    .line 33
    iput p3, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->id:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 8

    .line 59
    check-cast p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;

    .line 60
    iget v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mType:I

    if-nez v0, :cond_67

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1eb

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->id:I

    packed-switch p2, :pswitch_data_1f6

    goto/16 :goto_1eb

    .line 83
    :pswitch_21
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0321

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 80
    :pswitch_2b
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0317

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 77
    :pswitch_35
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d031b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 74
    :pswitch_3f
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d030a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 71
    :pswitch_49
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d030c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 68
    :pswitch_53
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0315

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 65
    :pswitch_5d
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d031f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    :cond_67
    const/4 v1, 0x1

    if-ne v0, v1, :cond_107

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1eb

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->id:I

    packed-switch p2, :pswitch_data_208

    goto/16 :goto_1eb

    .line 128
    :pswitch_85
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0318

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 125
    :pswitch_8f
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0320

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 122
    :pswitch_99
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d030f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 119
    :pswitch_a3
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0312

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 116
    :pswitch_ad
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0313

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 113
    :pswitch_b7
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d030b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 110
    :pswitch_c1
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0302

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 107
    :pswitch_cb
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0303

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 104
    :pswitch_d5
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0314

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 101
    :pswitch_df
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0311

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 98
    :pswitch_e9
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d030d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 95
    :pswitch_f3
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0310

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 92
    :pswitch_fd
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d030e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    :cond_107
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_16d

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1eb

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->id:I

    if-eqz p2, :cond_163

    if-eq p2, v1, :cond_159

    if-eq p2, v4, :cond_14f

    if-eq p2, v3, :cond_145

    if-eq p2, v2, :cond_13b

    const/4 v0, 0x5

    if-eq p2, v0, :cond_131

    goto/16 :goto_1eb

    .line 152
    :cond_131
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d031d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 149
    :cond_13b
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d031c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 146
    :cond_145
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0322

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 143
    :cond_14f
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d031e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 140
    :cond_159
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d031a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    .line 137
    :cond_163
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0305

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1eb

    :cond_16d
    if-ne v0, v3, :cond_191

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1eb

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->id:I

    if-eqz p2, :cond_188

    goto :goto_1eb

    .line 161
    :cond_188
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0319

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1eb

    :cond_191
    if-ne v0, v2, :cond_1eb

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1eb

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->id:I

    packed-switch p2, :pswitch_data_226

    goto :goto_1eb

    .line 188
    :pswitch_1ad
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0309

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1eb

    .line 185
    :pswitch_1b6
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0316

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1eb

    .line 182
    :pswitch_1bf
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0304

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1eb

    .line 179
    :pswitch_1c8
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0308

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1eb

    .line 176
    :pswitch_1d1
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0307

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1eb

    .line 173
    :pswitch_1da
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0306

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1eb

    .line 170
    :pswitch_1e3
    iget-object v0, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->task_icon_img_item:Landroid/widget/ImageView;

    const v1, 0x7f0d0301

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    :cond_1eb
    :goto_1eb
    iget-object p1, p1, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;-><init>(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_53
        :pswitch_49
        :pswitch_3f
        :pswitch_35
        :pswitch_2b
        :pswitch_21
    .end packed-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_f3
        :pswitch_e9
        :pswitch_df
        :pswitch_d5
        :pswitch_cb
        :pswitch_c1
        :pswitch_b7
        :pswitch_ad
        :pswitch_a3
        :pswitch_99
        :pswitch_8f
        :pswitch_85
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_1e3
        :pswitch_1da
        :pswitch_1d1
        :pswitch_1c8
        :pswitch_1bf
        :pswitch_1b6
        :pswitch_1ad
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 52
    iget-object p2, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c013a

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$ViewHolder;-><init>(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDeleCoureListing(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$DeleCoureListing;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mdeleCoureListing:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$DeleCoureListing;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;

    return-void
.end method
