.class Lfreemarker/template/DefaultObjectWrapper$2;
.super Lfreemarker/template/DefaultObjectWrapperConfiguration;
.source "DefaultObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/DefaultObjectWrapper;-><init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/DefaultObjectWrapper;


# direct methods
.method constructor <init>(Lfreemarker/template/DefaultObjectWrapper;Lfreemarker/template/Version;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lfreemarker/template/DefaultObjectWrapper$2;->this$0:Lfreemarker/template/DefaultObjectWrapper;

    invoke-direct {p0, p2}, Lfreemarker/template/DefaultObjectWrapperConfiguration;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method
