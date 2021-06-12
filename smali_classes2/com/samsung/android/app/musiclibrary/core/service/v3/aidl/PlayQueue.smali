.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$EnqueueAction;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract add(II[JZILandroid/os/Bundle;)V
.end method

.method public abstract move(II)V
.end method

.method public abstract open(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)V
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
.end method

.method public abstract openPosition(IIZ)V
.end method

.method public abstract removeByIds([J)V
.end method

.method public abstract removeByPositions([I)V
.end method

.method public abstract toggleMode(I)V
.end method
