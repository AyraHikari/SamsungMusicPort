.class public interface abstract annotation Lorg/simpleframework/xml/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/Namespace;
        prefix = ""
        reference = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract prefix()Ljava/lang/String;
.end method

.method public abstract reference()Ljava/lang/String;
.end method
