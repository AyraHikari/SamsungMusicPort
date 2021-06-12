.class public final Lkotlinx/coroutines/scheduling/WorkQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile a:I

.field volatile c:I

.field private final e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/scheduling/Task;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/scheduling/WorkQueue;

    const-class v1, Ljava/lang/Object;

    const-string v2, "f"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/WorkQueue;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/WorkQueue;

    const-string v1, "c"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->a:I

    .line 58
    iput v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->c:I

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 35
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method private final a(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V
    .locals 0

    .line 153
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/scheduling/GlobalQueue;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "GlobalQueue could not be closed yet"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(JLkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 4

    .line 123
    iget-object v0, p3, Lkotlinx/coroutines/scheduling/WorkQueue;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 124
    iget-wide v2, v0, Lkotlinx/coroutines/scheduling/Task;->f:J

    sub-long/2addr p1, v2

    sget-wide v2, Lkotlinx/coroutines/scheduling/TasksKt;->a:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_0

    return v1

    .line 128
    :cond_0
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0, v0, p4}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private final a(Lkotlinx/coroutines/scheduling/Task;)Z
    .locals 3

    .line 184
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    return v1

    .line 185
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->a:I

    and-int/2addr v0, v2

    .line 193
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    .line 197
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 198
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x1

    return p1
.end method

.method private final b(Lkotlinx/coroutines/scheduling/GlobalQueue;)V
    .locals 7

    .line 141
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 229
    :cond_0
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->c:I

    .line 230
    iget v3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->a:I

    sub-int v3, v2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x7f

    .line 232
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v5, :cond_0

    .line 237
    sget-object v5, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, p0, v2, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/scheduling/Task;

    :goto_1
    if-eqz v4, :cond_2

    .line 143
    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 50
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->a:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Lkotlinx/coroutines/scheduling/GlobalQueue;)V
    .locals 5

    const-string v0, "globalQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    .line 242
    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->c:I

    .line 243
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->a:I

    sub-int v2, v0, v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    .line 245
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v3, :cond_0

    .line 250
    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    :goto_1
    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->b(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "victim"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "globalQueue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v3, Lkotlinx/coroutines/scheduling/TasksKt;->g:Lkotlinx/coroutines/scheduling/TimeSource;

    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/TimeSource;->a()J

    move-result-wide v3

    .line 100
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a()I

    move-result v5

    if-nez v5, :cond_0

    .line 101
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(JLkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result v1

    return v1

    .line 107
    :cond_0
    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_7

    .line 217
    :cond_1
    iget v10, v1, Lkotlinx/coroutines/scheduling/WorkQueue;->c:I

    .line 218
    iget v11, v1, Lkotlinx/coroutines/scheduling/WorkQueue;->a:I

    sub-int v11, v10, v11

    const/4 v12, 0x0

    if-nez v11, :cond_2

    goto :goto_3

    :cond_2
    and-int/lit8 v11, v10, 0x7f

    .line 220
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v13, :cond_1

    .line 109
    iget-wide v13, v13, Lkotlinx/coroutines/scheduling/Task;->f:J

    sub-long v13, v3, v13

    sget-wide v15, Lkotlinx/coroutines/scheduling/TasksKt;->a:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a()I

    move-result v13

    sget v14, Lkotlinx/coroutines/scheduling/TasksKt;->b:I

    if-le v13, v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v13, 0x1

    :goto_2
    if-nez v13, :cond_5

    goto :goto_3

    .line 224
    :cond_5
    sget-object v13, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v1, v10, v14}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 226
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lkotlinx/coroutines/scheduling/Task;

    :goto_3
    if-eqz v12, :cond_6

    .line 113
    invoke-virtual {v0, v12, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    return v9

    :cond_7
    return v9
.end method

.method public final b()Lkotlinx/coroutines/scheduling/Task;
    .locals 5

    .line 65
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 205
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->c:I

    .line 206
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->a:I

    sub-int v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    .line 208
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v3, :cond_0

    .line 213
    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    :goto_0
    return-object v1
.end method

.method public final b(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 86
    :goto_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/Task;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-direct {p0, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->b(Lkotlinx/coroutines/scheduling/GlobalQueue;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final c()I
    .locals 1

    .line 135
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->a()I

    move-result v0

    :goto_0
    return v0
.end method
