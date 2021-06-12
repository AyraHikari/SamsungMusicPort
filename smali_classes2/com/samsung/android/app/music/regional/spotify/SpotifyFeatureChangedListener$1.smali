.class Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


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
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$1;->a:Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "SpotifyFeatureChangedListener"

    const-string v0, "notifyToListener - onNext"

    .line 125
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "SpotifyFeatureChangedListener"

    const-string v1, "notifyToListener - onComplete"

    .line 114
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "SpotifyFeatureChangedListener"

    const-string v1, "notifyToListener - onError"

    .line 119
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
