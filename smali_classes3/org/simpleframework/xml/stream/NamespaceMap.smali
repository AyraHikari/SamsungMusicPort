.class public interface abstract Lorg/simpleframework/xml/stream/NamespaceMap;
.super Ljava/lang/Object;
.source "NamespaceMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getReference(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setReference(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
