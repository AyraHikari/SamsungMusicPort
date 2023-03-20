.class Lorg/simpleframework/xml/convert/ScannerBuilder;
.super Lorg/simpleframework/xml/util/ConcurrentCache;
.source "ScannerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/ConcurrentCache<",
        "Lorg/simpleframework/xml/convert/Scanner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Scanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/simpleframework/xml/convert/Scanner;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Scanner;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;-><init>(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
