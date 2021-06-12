.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "FolderTreeFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.list.local.folder.FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6"
.end annotation


# instance fields
.field final synthetic $audioIds:Ljava/util/ArrayList;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->$audioIds:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->$audioIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 510
    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->label:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 511
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->$audioIds:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;[J)Z

    move-result p1

    if-nez p1, :cond_0

    .line 512
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->b(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl$deleteItems$1$6;->$audioIds:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;->a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;Landroid/app/Activity;[J)V

    .line 514
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 510
    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 514
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
