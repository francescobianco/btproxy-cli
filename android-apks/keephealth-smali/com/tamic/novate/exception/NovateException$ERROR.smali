.class public Lcom/tamic/novate/exception/NovateException$ERROR;
.super Ljava/lang/Object;
.source "NovateException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/exception/NovateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ERROR"
.end annotation


# static fields
.field public static final FORMAT_ERROR:I = 0x3f0

.field public static final HTTP_ERROR:I = 0x3eb

.field public static final NETWORD_ERROR:I = 0x3ea

.field public static final NULL:I = -0x64

.field public static final PARSE_ERROR:I = 0x3e9

.field public static final SSL_ERROR:I = 0x3ed

.field public static final SSL_NOT_FOUND:I = 0x3ef

.field public static final TIMEOUT_ERROR:I = 0x3ee

.field public static final UNKNOWN:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/exception/NovateException;


# direct methods
.method public constructor <init>(Lcom/tamic/novate/exception/NovateException;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/tamic/novate/exception/NovateException$ERROR;->this$0:Lcom/tamic/novate/exception/NovateException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
