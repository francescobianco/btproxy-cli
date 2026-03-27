.class public Lcom/keephealth/android/views/UpdateView;
.super Landroid/widget/RelativeLayout;
.source "UpdateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;
    }
.end annotation


# static fields
.field private static final DOWN_FINISH:I = 0x0

.field private static final DOWN_UPDATE:I = 0x1


# instance fields
.field mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090461
    .end annotation
.end field

.field mProgressTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090736
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private saveFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/keephealth/android/app/Constant;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/app/Constant;->UPDATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/UpdateView;->saveFileName:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/keephealth/android/views/UpdateView$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/UpdateView$1;-><init>(Lcom/keephealth/android/views/UpdateView;)V

    iput-object v0, p0, Lcom/keephealth/android/views/UpdateView;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/keephealth/android/views/UpdateView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/keephealth/android/app/Constant;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcom/keephealth/android/app/Constant;->UPDATE_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/UpdateView;->saveFileName:Ljava/lang/String;

    .line 89
    new-instance p2, Lcom/keephealth/android/views/UpdateView$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/UpdateView$1;-><init>(Lcom/keephealth/android/views/UpdateView;)V

    iput-object p2, p0, Lcom/keephealth/android/views/UpdateView;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/keephealth/android/views/UpdateView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/keephealth/android/app/Constant;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/app/Constant;->UPDATE_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/UpdateView;->saveFileName:Ljava/lang/String;

    .line 89
    new-instance p2, Lcom/keephealth/android/views/UpdateView$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/UpdateView$1;-><init>(Lcom/keephealth/android/views/UpdateView;)V

    iput-object p2, p0, Lcom/keephealth/android/views/UpdateView;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/keephealth/android/views/UpdateView;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/UpdateView;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/views/UpdateView;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/UpdateView;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/UpdateView;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 166
    :try_start_6
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_9b
    .catchall {:try_start_6 .. :try_end_11} :catchall_97

    const/16 v6, 0x2710

    .line 168
    :try_start_13
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x4e20

    .line 169
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 170
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 171
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x194

    if-ne v7, v8, :cond_36

    .line 172
    iget-object p2, p0, Lcom/keephealth/android/views/UpdateView;->mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

    if-eqz p2, :cond_2e

    .line 173
    invoke-interface {p2}, Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;->downLoadFail()V

    .line 175
    :cond_2e
    new-instance p2, Ljava/lang/Exception;

    const-string v6, "fail!"

    invoke-direct {p2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 177
    :cond_36
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3a} :catch_93
    .catchall {:try_start_13 .. :try_end_3a} :catchall_8e

    .line 178
    :try_start_3a
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_8c
    .catchall {:try_start_3a .. :try_end_3f} :catchall_89

    const/16 p2, 0x800

    .line 179
    :try_start_41
    new-array p2, p2, [B

    move v5, v2

    .line 181
    :cond_44
    :goto_44
    invoke-virtual {v7, p2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_6c

    .line 182
    invoke-virtual {v8, p2, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v9

    add-long/2addr v3, v9

    if-eqz v5, :cond_5a

    const-wide/16 v9, 0x64

    mul-long/2addr v9, v3

    int-to-long v11, v6

    .line 184
    div-long/2addr v9, v11

    long-to-int v9, v9

    sub-int/2addr v9, v1

    if-le v9, v5, :cond_44

    :cond_5a
    add-int/lit8 v5, v5, 0x1

    .line 186
    iget-object v9, p0, Lcom/keephealth/android/views/UpdateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 187
    iput v1, v9, Landroid/os/Message;->what:I

    .line 188
    iput v5, v9, Landroid/os/Message;->arg1:I

    .line 189
    iget-object v10, p0, Lcom/keephealth/android/views/UpdateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_44

    .line 192
    :cond_6c
    iget-object p2, p0, Lcom/keephealth/android/views/UpdateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_71} :catch_95
    .catchall {:try_start_41 .. :try_end_71} :catchall_87

    if-eqz p1, :cond_76

    .line 199
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    :cond_76
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v7, p1, v2

    aput-object v8, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

    if-eqz p1, :cond_b7

    .line 203
    :goto_83
    invoke-interface {p1}, Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;->complete()V

    goto :goto_b7

    :catchall_87
    move-exception p2

    goto :goto_91

    :catchall_89
    move-exception p2

    move-object v8, v5

    goto :goto_91

    :catch_8c
    move-object v8, v5

    goto :goto_95

    :catchall_8e
    move-exception p2

    move-object v7, v5

    move-object v8, v7

    :goto_91
    move-object v5, p1

    goto :goto_b9

    :catch_93
    move-object v7, v5

    move-object v8, v7

    :catch_95
    :goto_95
    move-object v5, p1

    goto :goto_9d

    :catchall_97
    move-exception p2

    move-object v7, v5

    move-object v8, v7

    goto :goto_b9

    :catch_9b
    move-object v7, v5

    move-object v8, v7

    .line 194
    :goto_9d
    :try_start_9d
    iget-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

    if-eqz p1, :cond_a4

    .line 195
    invoke-interface {p1}, Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;->downLoadFail()V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_b8

    :cond_a4
    if-eqz v5, :cond_a9

    .line 199
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    :cond_a9
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v7, p1, v2

    aput-object v8, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

    if-eqz p1, :cond_b7

    goto :goto_83

    :cond_b7
    :goto_b7
    return-wide v3

    :catchall_b8
    move-exception p2

    :goto_b9
    if-eqz v5, :cond_be

    .line 199
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    :cond_be
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v7, p1, v2

    aput-object v8, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

    if-eqz p1, :cond_ce

    .line 203
    invoke-interface {p1}, Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;->complete()V

    .line 205
    :cond_ce
    throw p2
.end method

.method private initViews()V
    .registers 5

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    iget-object v1, p0, Lcom/keephealth/android/views/UpdateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00f3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/views/UpdateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startDownLoad()V
    .registers 4

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/views/UpdateView;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_10
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/views/UpdateView;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deviceUpdate.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    :cond_33
    new-instance v1, Lcom/keephealth/android/views/UpdateView$2;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/views/UpdateView$2;-><init>(Lcom/keephealth/android/views/UpdateView;Ljava/io/File;)V

    .line 142
    invoke-virtual {v1}, Lcom/keephealth/android/views/UpdateView$2;->start()V

    return-void
.end method


# virtual methods
.method public setDownLoadCallBack(Ljava/lang/String;Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/views/UpdateView;->mUrl:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/keephealth/android/views/UpdateView;->mCallback:Lcom/keephealth/android/views/UpdateView$DownLoadCallBack;

    .line 85
    invoke-direct {p0}, Lcom/keephealth/android/views/UpdateView;->startDownLoad()V

    return-void
.end method

.method public setProgressRate(I)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/views/UpdateView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/views/UpdateView;->mProgressTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
