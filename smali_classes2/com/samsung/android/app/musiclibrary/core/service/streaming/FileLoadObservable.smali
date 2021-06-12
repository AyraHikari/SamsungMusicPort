.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "FileLoadObservable"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->mListeners:Ljava/util/List;

    return-void
.end method

.method private hasItem(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 50
    monitor-exit p0

    return p1

    .line 53
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileLoadObservable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 76
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasObserver()Z
    .locals 1

    .line 85
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyObservers()V
    .locals 2

    .line 94
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;

    if-nez v1, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;->onChangedFileLoad()V

    goto :goto_0

    .line 107
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->hasItem(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 30
    :cond_1
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 72
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
