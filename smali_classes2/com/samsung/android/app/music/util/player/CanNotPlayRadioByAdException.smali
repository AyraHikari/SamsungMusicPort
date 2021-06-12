.class public final Lcom/samsung/android/app/music/util/player/CanNotPlayRadioByAdException;
.super Lcom/samsung/android/app/music/util/player/OnlinePlayException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "can\'t request to play radio when ad is playing"

    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/util/player/OnlinePlayException;-><init>(Ljava/lang/String;)V

    return-void
.end method
