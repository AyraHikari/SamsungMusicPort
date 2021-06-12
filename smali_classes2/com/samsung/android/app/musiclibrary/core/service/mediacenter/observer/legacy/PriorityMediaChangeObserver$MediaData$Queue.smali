.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData$Queue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$MediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Queue"
.end annotation


# instance fields
.field extra:Landroid/os/Bundle;

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
