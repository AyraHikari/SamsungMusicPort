.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->cancel(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 16
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri$Empty;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->makeCache(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;J)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->reset(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
