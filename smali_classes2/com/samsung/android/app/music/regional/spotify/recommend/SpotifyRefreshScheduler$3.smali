.class Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;Lcom/samsung/android/app/music/recommend/SeedConfiguration;Landroid/content/Context;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;->c:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/CompletableEmitter;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iget-object v0, v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iget v2, v2, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->d:I

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;->c:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;

    .line 78
    invoke-static {v3}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;)Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/recommend/SeedCompounder;->a(Landroid/content/Context;ILcom/samsung/android/app/music/recommend/SeedCpIdGetter;)V

    .line 79
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method
