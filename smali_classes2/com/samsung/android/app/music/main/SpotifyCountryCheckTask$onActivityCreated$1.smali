.class public final Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

.field final synthetic c:Lcom/samsung/android/app/music/update/AppUpdateChecker;

.field final synthetic d:Lcom/samsung/android/app/music/main/MainActivity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/update/AppUpdateChecker;Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iput-object p3, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->c:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    iput-object p4, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->d:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "supportedCountry"

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->a:Landroid/content/Context;

    const-string v1, "key_spotify_oobe_show_tip"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->c:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a()V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "spotify_country"

    const-string v2, "yes"

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "undefined"

    .line 51
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    const-string v0, "spotify_not_supported"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->d:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->l(Landroid/content/Context;)V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "spotify_country"

    const-string v2, "no"

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "SMUSIC-SpotifyCountryCheckTask"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSupportedCountryFromServer countryCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask$onActivityCreated$1;->a(Ljava/lang/String;)V

    return-void
.end method
