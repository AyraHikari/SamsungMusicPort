.class final Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "CheckableListImpl.kt"
    c = {
        0x20
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.ui.list.CheckableListImpl$getCheckedItemIdsAsync$1"
.end annotation


# instance fields
.field final synthetic $idType:I

.field final synthetic $listener:Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->$idType:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->$listener:Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->$idType:I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->$listener:Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, [J

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    .line 28
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->$idType:I

    .line 29
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v3

    .line 27
    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILandroid/util/SparseBooleanArray;I)[J

    move-result-object p1

    .line 32
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;[JLkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$getCheckedItemIdsAsync$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 33
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 26
    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
