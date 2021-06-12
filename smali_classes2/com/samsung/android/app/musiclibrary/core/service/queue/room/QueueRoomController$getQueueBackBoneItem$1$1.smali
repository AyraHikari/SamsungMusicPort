.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getQueueBackBoneItem$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getQueueBackBoneItem(Lcom/samsung/android/app/musiclibrary/core/service/queue/ReloadCursor;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getQueueBackBoneItem$1$1;->$this_apply:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getQueueBackBoneItem$1$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQueueBackBoneItem but wrong information. audioId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getQueueBackBoneItem$1$1;->$this_apply:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getAudioId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " sourceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getQueueBackBoneItem$1$1;->$this_apply:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
