.class public interface abstract annotation Lorg/simpleframework/xml/Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/Default;
        a = .enum Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;
        b = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract a()Lorg/simpleframework/xml/DefaultType;
.end method

.method public abstract b()Z
.end method
