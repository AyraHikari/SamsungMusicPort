.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isEmpty(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Z
    .locals 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getMediaId()J

    move-result-wide v0

    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getMediaId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isNotEmpty(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Z
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItemKt;->isEmpty(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
