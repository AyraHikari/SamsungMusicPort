.class public final Lcom/samsung/android/app/music/util/player/UnsupportedRadioPlaylistException;
.super Lcom/samsung/android/app/music/util/player/OnlinePlayException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayException;-><init>(Ljava/lang/String;)V

    return-void
.end method
