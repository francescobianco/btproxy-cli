.class Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;
.super Ljava/lang/Object;
.source "DefaultObjectWrapperBuilder.java"

# interfaces
.implements Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultObjectWrapperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultObjectWrapperFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory<",
        "Lfreemarker/template/DefaultObjectWrapper;",
        "Lfreemarker/template/DefaultObjectWrapperConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;

    invoke-direct {v0}, Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;-><init>()V

    sput-object v0, Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;->INSTANCE:Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;
    .registers 1

    .line 72
    sget-object v0, Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;->INSTANCE:Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/BeansWrapper;
    .registers 2

    .line 72
    check-cast p1, Lfreemarker/template/DefaultObjectWrapperConfiguration;

    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultObjectWrapperBuilder$DefaultObjectWrapperFactory;->create(Lfreemarker/template/DefaultObjectWrapperConfiguration;)Lfreemarker/template/DefaultObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public create(Lfreemarker/template/DefaultObjectWrapperConfiguration;)Lfreemarker/template/DefaultObjectWrapper;
    .registers 4

    .line 78
    new-instance v0, Lfreemarker/template/DefaultObjectWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lfreemarker/template/DefaultObjectWrapper;-><init>(Lfreemarker/template/DefaultObjectWrapperConfiguration;Z)V

    return-object v0
.end method
