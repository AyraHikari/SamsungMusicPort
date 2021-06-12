.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1$lambda$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1$lambda$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "metaItems size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1$lambda$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$remove$$inlined$update$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$getMetaItems$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
