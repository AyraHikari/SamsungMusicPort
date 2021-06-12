.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty$getPlayQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(II[JZILandroid/os/Bundle;)V
    .locals 0

    const-string p1, "ids"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public move(II)V
    .locals 0

    return-void
.end method

.method public open(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string p1, "keyWord"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ids"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "queue"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public openPosition(IIZ)V
    .locals 0

    return-void
.end method

.method public removeByIds([J)V
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public removeByPositions([I)V
    .locals 1

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public toggleMode(I)V
    .locals 0

    return-void
.end method
