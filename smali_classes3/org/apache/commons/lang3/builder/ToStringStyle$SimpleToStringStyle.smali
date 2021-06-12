.class final Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2259
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2260
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseClassName(Z)V

    .line 2261
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2262
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseFieldNames(Z)V

    const-string v0, ""

    .line 2263
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setContentStart(Ljava/lang/String;)V

    const-string v0, ""

    .line 2264
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2272
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
