.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static cancel(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->cancel(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;)V

    return-void
.end method

.method public static getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Landroid/os/Bundle;
    .locals 0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static makeCache(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;J)V
    .locals 0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->makeCache(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;J)V

    return-void
.end method

.method public static reset(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->reset(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;)V

    return-void
.end method

.method public static synthetic sendCustomAction$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 13
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendCustomAction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
