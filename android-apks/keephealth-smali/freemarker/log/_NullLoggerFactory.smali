.class public Lfreemarker/log/_NullLoggerFactory;
.super Ljava/lang/Object;
.source "_NullLoggerFactory.java"

# interfaces
.implements Lfreemarker/log/LoggerFactory;


# static fields
.field private static final INSTANCE:Lfreemarker/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lfreemarker/log/_NullLoggerFactory$1;

    invoke-direct {v0}, Lfreemarker/log/_NullLoggerFactory$1;-><init>()V

    sput-object v0, Lfreemarker/log/_NullLoggerFactory;->INSTANCE:Lfreemarker/log/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;
    .registers 2

    .line 31
    sget-object p1, Lfreemarker/log/_NullLoggerFactory;->INSTANCE:Lfreemarker/log/Logger;

    return-object p1
.end method
