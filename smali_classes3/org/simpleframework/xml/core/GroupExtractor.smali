.class Lorg/simpleframework/xml/core/GroupExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/GroupExtractor$Registry;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/annotation/Annotation;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
