.class public interface abstract Lfreemarker/template/ObjectWrapperAndUnwrapper;
.super Ljava/lang/Object;
.source "ObjectWrapperAndUnwrapper.java"

# interfaces
.implements Lfreemarker/template/ObjectWrapper;


# static fields
.field public static final CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public abstract unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
