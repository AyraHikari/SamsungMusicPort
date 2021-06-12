.class Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtworkCacheSettingsProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Z

.field private final c:Z

.field private d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;


# direct methods
.method constructor <init>(Landroid/app/Application;ZZ)V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->a:Landroid/app/Application;

    .line 377
    iput-boolean p2, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->b:Z

    .line 378
    iput-boolean p3, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->c:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->a:Landroid/app/Application;

    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->g()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;-><init>(Landroid/content/Context;[I)V

    iget-boolean v1, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->b:Z

    .line 388
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->b(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->c:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 382
    monitor-exit p0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    move-result-object v0

    return-object v0
.end method
