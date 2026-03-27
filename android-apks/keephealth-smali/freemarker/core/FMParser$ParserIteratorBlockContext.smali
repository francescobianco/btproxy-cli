.class Lfreemarker/core/FMParser$ParserIteratorBlockContext;
.super Ljava/lang/Object;
.source "FMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/FMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserIteratorBlockContext"
.end annotation


# instance fields
.field private hashListing:Z

.field private kind:I

.field private loopVar2Name:Ljava/lang/String;

.field private loopVarName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/FMParser$1;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 22
    iput-object p1, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 22
    iput-object p1, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)I
    .registers 1

    .line 22
    iget p0, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I

    return p0
.end method

.method static synthetic access$302(Lfreemarker/core/FMParser$ParserIteratorBlockContext;I)I
    .registers 2

    .line 22
    iput p1, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I

    return p1
.end method

.method static synthetic access$400(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->hashListing:Z

    return p0
.end method

.method static synthetic access$402(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Z)Z
    .registers 2

    .line 22
    iput-boolean p1, p0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->hashListing:Z

    return p1
.end method
