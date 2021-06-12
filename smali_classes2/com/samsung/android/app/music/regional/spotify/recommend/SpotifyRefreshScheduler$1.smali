.class Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$1;->a:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "SpotifyRefreshScheduler"

    const-string v1, "schedule. seed refresh done."

    .line 86
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
