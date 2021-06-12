.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;->getItemsFromCursor(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Ljava/util/List;
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
.field final synthetic $baseUri$inlined:Landroid/net/Uri;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $job$inlined:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $list$inlined:Ljava/util/List;

.field final synthetic $newItems$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->$job$inlined:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->$list$inlined:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->$context$inlined:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->$baseUri$inlined:Landroid/net/Uri;

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->$newItems$inlined:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start query #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$getItemsFromCursor$$inlined$tsp$lambda$1;->$job$inlined:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
