.class Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObservableManager"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method a(Ljava/lang/Class;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;",
            ")V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    .line 177
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
