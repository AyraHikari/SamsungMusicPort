.class Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;Z)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;->b:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;->b:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "mListeners is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;->b:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 96
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "listeners\'s size is 0"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;

    const-string v2, "SpotifyFeatureChangedListener"

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyToListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-boolean v2, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;->a:Z

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;->a(Z)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
