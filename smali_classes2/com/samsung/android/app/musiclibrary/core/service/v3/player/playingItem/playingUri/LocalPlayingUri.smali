.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final path:Ljava/lang/String;

.field private final sourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->sourceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 34
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;Ljava/lang/String;)V

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 8
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1

    .line 17
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->sourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "MediaStore.Audio.Media.E\u2026endPath(sourceId).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->makeCache(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;J)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/LocalPlayingUri$Companion;Ljava/lang/String;)V

    return-void
.end method
