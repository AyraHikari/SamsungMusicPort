.class public Lorg/simpleframework/xml/util/ConcurrentCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/util/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lorg/simpleframework/xml/util/Cache<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/util/ConcurrentCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/ConcurrentCache;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fetch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/ConcurrentCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public take(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/ConcurrentCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
