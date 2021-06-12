.class final Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;
.super Lkotlinx/coroutines/CancelHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/AwaitAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisposeHandlersOnCancel"
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/AwaitAll;

.field private final b:[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.AwaitAllNode;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.AwaitAllNode;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->a:Lkotlinx/coroutines/AwaitAll;

    invoke-direct {p0}, Lkotlinx/coroutines/CancelHandler;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->b:[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 87
    iget-object v0, p0, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->b:[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    .line 118
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->F_()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/DisposableHandle;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->a()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisposeHandlersOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->b:[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
