.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->cancel(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;)V

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 57
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1

    .line 59
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v0, "Uri.EMPTY"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->makeCache(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;J)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$DefaultImpls;->reset(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;)V

    return-void
.end method
