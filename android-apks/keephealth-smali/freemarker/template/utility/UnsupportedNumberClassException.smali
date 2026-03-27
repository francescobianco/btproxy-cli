.class public Lfreemarker/template/utility/UnsupportedNumberClassException;
.super Ljava/lang/RuntimeException;
.source "UnsupportedNumberClassException.java"


# instance fields
.field private final fClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported number class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lfreemarker/template/utility/UnsupportedNumberClassException;->fClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getUnsupportedClass()Ljava/lang/Class;
    .registers 2

    .line 35
    iget-object v0, p0, Lfreemarker/template/utility/UnsupportedNumberClassException;->fClass:Ljava/lang/Class;

    return-object v0
.end method
