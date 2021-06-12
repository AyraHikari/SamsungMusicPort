.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic onPlayingItemChanged$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;->onPlayingItemChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onPlayingItemChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
