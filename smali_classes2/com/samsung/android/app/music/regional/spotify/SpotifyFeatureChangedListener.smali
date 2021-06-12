.class public Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;


# instance fields
.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->c:Ljava/lang/ref/WeakReference;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;
    .locals 5

    const-class v0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    if-nez v1, :cond_1

    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/MusicApplication;->b()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It\'s not UI process : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 37
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    .line 44
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;)V
    .locals 3

    const-string v0, "SpotifyFeatureChangedListener"

    const-string v1, "addListener"

    .line 65
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const-string p1, "SpotifyFeatureChangedListener"

    const-string v0, "addListener - mListeners is null"

    .line 67
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "SpotifyFeatureChangedListener"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener - listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "SpotifyFeatureChangedListener"

    const-string v1, "notifyToListener"

    .line 85
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;Z)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;)V

    .line 111
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;)V
    .locals 3

    const-string v0, "SpotifyFeatureChangedListener"

    const-string v1, "removeListener"

    .line 75
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const-string p1, "SpotifyFeatureChangedListener"

    const-string v0, "removeListener - mListeners is null"

    .line 77
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "SpotifyFeatureChangedListener"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener - listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
