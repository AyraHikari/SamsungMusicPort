.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayingItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayingItem(Landroid/content/Context;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;-><init>(Landroid/content/Context;JLcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    return-object v0
.end method
