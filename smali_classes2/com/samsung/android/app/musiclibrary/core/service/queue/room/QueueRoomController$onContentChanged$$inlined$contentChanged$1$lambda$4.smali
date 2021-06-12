.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic $comparator$inlined:Ljava/util/Comparator;

.field final synthetic $exist$inlined:Ljava/util/List;

.field final synthetic $it:Ljava/util/List;

.field final synthetic $it$inlined:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;Lkotlinx/coroutines/CoroutineScope;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->$it:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->$exist$inlined:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->$comparator$inlined:Ljava/util/Comparator;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->$it$inlined:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentChanged isNeedRestore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->access$isNeedRestore$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " restore size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$onContentChanged$$inlined$contentChanged$1$lambda$4;->$it:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
