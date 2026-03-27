.class public final Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;
.super Lfreemarker/ext/jsp/TaglibFactory$MetaInfTldSource;
.source "TaglibFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearMetaInfTldSource"
.end annotation


# static fields
.field public static final INSTANCE:Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1181
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;

    invoke-direct {v0}, Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;-><init>()V

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;->INSTANCE:Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1182
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory$MetaInfTldSource;-><init>(Lfreemarker/ext/jsp/TaglibFactory$1;)V

    return-void
.end method
