.class public interface abstract Lorg/simpleframework/xml/stream/NodeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/simpleframework/xml/stream/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
