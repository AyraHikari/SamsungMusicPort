.class Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$2;->a:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
