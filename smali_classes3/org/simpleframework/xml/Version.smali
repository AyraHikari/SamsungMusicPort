.class public interface abstract annotation Lorg/simpleframework/xml/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/Version;
        name = ""
        required = false
        revision = 1.0
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method

.method public abstract revision()D
.end method
