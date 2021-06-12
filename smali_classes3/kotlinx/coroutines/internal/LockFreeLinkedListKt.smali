.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->a:Ljava/lang/Object;

    .line 25
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ALREADY_REMOVED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->b:Ljava/lang/Object;

    .line 28
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->c:Ljava/lang/Object;

    .line 30
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final a()Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    instance-of v0, p0, Lkotlinx/coroutines/internal/Removed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/Removed;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :goto_1
    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->d:Ljava/lang/Object;

    return-object v0
.end method
