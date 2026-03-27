.class public Lcom/tamic/novate/download/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# static fields
.field public static final APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final AVI:Ljava/lang/String; = "avi"

.field public static final BMP:Ljava/lang/String; = "bmp"

.field public static final BZ2:Ljava/lang/String; = "bz2"

.field public static final CAB:Ljava/lang/String; = "cab"

.field public static final DOC:Ljava/lang/String; = "doc"

.field public static final DOCX:Ljava/lang/String; = "docx"

.field public static final FLV:Ljava/lang/String; = "flv"

.field public static final GIF:Ljava/lang/String; = "gif"

.field public static final GZ:Ljava/lang/String; = "gz"

.field public static final GZIP:Ljava/lang/String; = "gzip"

.field public static final HTML:Ljava/lang/String; = "html"

.field public static final JPEG:Ljava/lang/String; = "jpeg"

.field public static final JPG:Ljava/lang/String; = "jpg"

.field public static final JSON:Ljava/lang/String; = "json"

.field public static final MKV:Ljava/lang/String; = "mkv"

.field public static final MP3:Ljava/lang/String; = "mp3"

.field public static final MP4:Ljava/lang/String; = "mp4"

.field public static final MPEG:Ljava/lang/String; = "mpeg"

.field public static final MPG:Ljava/lang/String; = "mpg"

.field public static final PDF:Ljava/lang/String; = "pdf"

.field public static final PNG:Ljava/lang/String; = "png"

.field public static final PPT:Ljava/lang/String; = "ppt"

.field public static final PPTX:Ljava/lang/String; = "pptx"

.field public static final RAR:Ljava/lang/String; = "rar"

.field public static final RM:Ljava/lang/String; = "rm"

.field public static final RMVB:Ljava/lang/String; = "rmvb"

.field public static final TXT:Ljava/lang/String; = "txt"

.field public static final ThreeGP:Ljava/lang/String; = "3gp"

.field public static final WAV:Ljava/lang/String; = "wav"

.field public static final WMA:Ljava/lang/String; = "wma"

.field public static final WMV:Ljava/lang/String; = "wmv"

.field public static final XLS:Ljava/lang/String; = "xls"

.field public static final XLSX:Ljava/lang/String; = "xlsx"

.field public static final XML:Ljava/lang/String; = "xml"

.field public static final Z7:Ljava/lang/String; = "7z"

.field public static final ZIP:Ljava/lang/String; = "zip"

.field private static sInstance:Lcom/tamic/novate/download/MimeType;


# instance fields
.field private mMimeTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    .line 98
    invoke-direct {p0}, Lcom/tamic/novate/download/MimeType;->loadList()V

    return-void
.end method

.method public static getInstance()Lcom/tamic/novate/download/MimeType;
    .registers 1

    .line 162
    sget-object v0, Lcom/tamic/novate/download/MimeType;->sInstance:Lcom/tamic/novate/download/MimeType;

    if-nez v0, :cond_b

    .line 163
    new-instance v0, Lcom/tamic/novate/download/MimeType;

    invoke-direct {v0}, Lcom/tamic/novate/download/MimeType;-><init>()V

    sput-object v0, Lcom/tamic/novate/download/MimeType;->sInstance:Lcom/tamic/novate/download/MimeType;

    .line 165
    :cond_b
    sget-object v0, Lcom/tamic/novate/download/MimeType;->sInstance:Lcom/tamic/novate/download/MimeType;

    return-object v0
.end method

.method private loadList()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "txt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "html"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "xml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "application/vnd.android.package-archive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "gif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "mpg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "jpg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "jpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "bmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "wmv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "rm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "flv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "mkv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "avi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "mp4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "mpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "wav"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "wma"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "3gp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "rmvb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "json"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "rar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "zip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "7z"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "gzip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "bz2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "cab"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "gz"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "pdf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "doc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "docx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "xls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "xlsx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "ppt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    const-string v1, "pptx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 153
    :cond_8
    iget-object v0, p0, Lcom/tamic/novate/download/MimeType;->mMimeTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_30
    return-object v1
.end method
