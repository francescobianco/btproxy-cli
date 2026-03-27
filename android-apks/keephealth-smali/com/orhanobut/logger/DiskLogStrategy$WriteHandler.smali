.class Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;
.super Landroid/os/Handler;
.source "DiskLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orhanobut/logger/DiskLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteHandler"
.end annotation


# instance fields
.field private final folder:Ljava/lang/String;

.field private final maxFileSize:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/String;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    iput-object p2, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    return-void
.end method

.method private getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 9

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_e

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 86
    :cond_e
    new-instance p1, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s_%s.csv"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 87
    :goto_23
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_40

    add-int/lit8 v1, v1, 0x1

    .line 90
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_23

    :cond_40
    if-eqz v2, :cond_4f

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iget p2, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    int-to-long v3, p2

    cmp-long p2, v0, v3

    if-ltz p2, :cond_4e

    return-object p1

    :cond_4e
    return-object v2

    :cond_4f
    return-object p1
.end method

.method private writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    const-string v1, "logs"

    invoke-direct {p0, v0, v1}, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    :try_start_d
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_1e

    .line 49
    :try_start_13
    invoke-direct {p0, v2, p1}, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 52
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-object v1, v2

    :catch_1e
    if-eqz v1, :cond_26

    .line 56
    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 57
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    :goto_26
    return-void
.end method
