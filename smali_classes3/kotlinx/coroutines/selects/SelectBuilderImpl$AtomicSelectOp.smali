.class final Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;
.super Lkotlinx/coroutines/internal/AtomicOp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/SelectBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AtomicSelectOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/AtomicOp<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/internal/AtomicDesc;

.field public final b:Z

.field final synthetic c:Lkotlinx/coroutines/selects/SelectBuilderImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/AtomicDesc;",
            "Z)V"
        }
    .end annotation

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 358
    invoke-direct {p0}, Lkotlinx/coroutines/internal/AtomicOp;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->a:Lkotlinx/coroutines/internal/AtomicDesc;

    iput-boolean p3, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->b:Z

    return-void
.end method

.method private final d(Ljava/lang/Object;)V
    .locals 3

    .line 389
    iget-boolean v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->b:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 390
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 391
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    sget-object v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 393
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->a(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 366
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->a:Lkotlinx/coroutines/internal/AtomicDesc;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/AtomicOp;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/AtomicDesc;->a(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 370
    invoke-direct {p0, p2}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->d(Ljava/lang/Object;)V

    .line 371
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->a:Lkotlinx/coroutines/internal/AtomicDesc;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/AtomicOp;

    invoke-virtual {p1, v0, p2}, Lkotlinx/coroutines/internal/AtomicDesc;->a(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 5

    .line 375
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 431
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->a:Ljava/lang/Object;

    .line 377
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return-object v3

    .line 378
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v2, :cond_2

    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 379
    :cond_2
    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    if-ne v1, v2, :cond_3

    .line 380
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    sget-object v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v4, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-virtual {v2, v1, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    .line 383
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
