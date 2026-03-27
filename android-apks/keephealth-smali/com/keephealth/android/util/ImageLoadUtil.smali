.class public Lcom/keephealth/android/util/ImageLoadUtil;
.super Ljava/lang/Object;
.source "ImageLoadUtil.java"


# instance fields
.field private error:I

.field private error_pro:I

.field private placeholder:I

.field private transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0d002e

    .line 25
    iput v0, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    const v0, 0x7f080122

    .line 27
    iput v0, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    const v0, 0x7f0d0189

    .line 28
    iput v0, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error:I

    return-void
.end method

.method private load(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 274
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 275
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 276
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 278
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 281
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_28

    .line 282
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_2b

    .line 284
    :cond_28
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 286
    :goto_2b
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private load(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 242
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 243
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 244
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 246
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 248
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 249
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_34

    .line 250
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 252
    :cond_34
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private loadNoCache(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 223
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 224
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 227
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 231
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_2f

    .line 232
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_32

    .line 234
    :cond_2f
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 236
    :goto_32
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private loadNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 205
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 206
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 207
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 209
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x1

    .line 210
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 212
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_2e

    .line 213
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    :cond_2e
    if-eqz p4, :cond_44

    .line 216
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_53

    .line 218
    :cond_44
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_53
    return-void
.end method

.method private loadOrGif(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 256
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 257
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 258
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 260
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 263
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_2e

    .line 264
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    :cond_2e
    if-eqz p4, :cond_44

    .line 267
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_53

    .line 269
    :cond_44
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_53
    return-void
.end method

.method private loadPor(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 171
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 172
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 173
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 175
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 177
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 178
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_35

    .line 179
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_38

    .line 181
    :cond_35
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 183
    :goto_38
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private loadPor(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 133
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 134
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 135
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 137
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 139
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 140
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_34

    .line 141
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 143
    :cond_34
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private loadPorNoCache(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 188
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 189
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 190
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 192
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 194
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 195
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_35

    .line 196
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_38

    .line 198
    :cond_35
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 200
    :goto_38
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private loadPorNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 151
    :cond_3
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    .line 152
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    .line 153
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 155
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 158
    iget-object v1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    if-eqz v1, :cond_2e

    .line 159
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    :cond_2e
    if-eqz p4, :cond_44

    .line 162
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_53

    .line 164
    :cond_44
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_53
    return-void
.end method


# virtual methods
.method public loadImage(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 5

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->load(Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->load(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public loadPortrait(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 5

    .line 103
    new-instance v0, Lcom/keephealth/android/util/GlideCircleTransform;

    invoke-direct {v0}, Lcom/keephealth/android/util/GlideCircleTransform;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPorNoCache(Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public loadPortrait(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    .line 87
    new-instance v0, Lcom/keephealth/android/util/GlideCircleTransform;

    invoke-direct {v0}, Lcom/keephealth/android/util/GlideCircleTransform;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPor(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 5

    .line 107
    new-instance v0, Lcom/keephealth/android/util/GlideCircleTransform;

    invoke-direct {v0}, Lcom/keephealth/android/util/GlideCircleTransform;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPorNoCache(Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    .line 94
    new-instance v0, Lcom/keephealth/android/util/GlideCircleTransform;

    invoke-direct {v0}, Lcom/keephealth/android/util/GlideCircleTransform;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPorNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 6

    .line 99
    new-instance v0, Lcom/keephealth/android/util/GlideCircleTransform;

    invoke-direct {v0}, Lcom/keephealth/android/util/GlideCircleTransform;-><init>()V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPorNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 6

    .line 60
    new-instance v0, Lcom/keephealth/android/util/GlideRoundTransform;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/GlideRoundTransform;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->load(Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6

    .line 48
    new-instance v0, Lcom/keephealth/android/util/GlideRoundTransform;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/GlideRoundTransform;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->load(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 7

    .line 55
    new-instance v0, Lcom/keephealth/android/util/GlideRoundTransform;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/GlideRoundTransform;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadOrGif(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .registers 6

    .line 79
    new-instance v0, Lcom/keephealth/android/util/GlideRoundTransform;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/GlideRoundTransform;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadNoCache(Landroid/content/Context;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6

    .line 69
    new-instance v0, Lcom/keephealth/android/util/GlideRoundTransform;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/GlideRoundTransform;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->loadNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 7

    .line 74
    new-instance v0, Lcom/keephealth/android/util/GlideRoundTransform;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/GlideRoundTransform;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public setError(I)Lcom/keephealth/android/util/ImageLoadUtil;
    .registers 2

    .line 118
    iput p1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->error_pro:I

    return-object p0
.end method

.method public setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;
    .registers 2

    .line 113
    iput p1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->placeholder:I

    return-object p0
.end method

.method public setTransformation(Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/keephealth/android/util/ImageLoadUtil;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/keephealth/android/util/ImageLoadUtil;->transforms:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    return-object p0
.end method
