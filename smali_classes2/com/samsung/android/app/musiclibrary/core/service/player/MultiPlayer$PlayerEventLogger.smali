.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerEventLogger"
.end annotation


# instance fields
.field private final mDebugInformations:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->mDebugInformations:Landroid/util/LruCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;)V
    .locals 0

    .line 1410
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;-><init>()V

    return-void
.end method

.method private printMap(Ljava/io/PrintWriter;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1439
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 1440
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "# PlayerEvent callstack"

    .line 1434
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->mDebugInformations:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->printMap(Ljava/io/PrintWriter;Ljava/util/Map;)V

    return-void
.end method

.method saveStack()V
    .locals 6

    .line 1415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1416
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->mDebugInformations:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger$1;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1417
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v4, p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1416
    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
