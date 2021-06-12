.class public final Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$ErrorPlayingUri;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2

    .line 71
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const-string v0, "SMUSIC-SV-Player"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayingUriFactory.obtain cpType 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10001

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " not supported type please check your content provider : 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMUSIC-SV-Player"

    .line 63
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p0, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$ErrorPlayingUri;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$ErrorPlayingUri;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$1;)V

    return-object p0

    .line 56
    :pswitch_0
    invoke-static {p0, p2, p4}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
