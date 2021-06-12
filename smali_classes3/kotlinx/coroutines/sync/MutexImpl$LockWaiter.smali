.class abstract Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LockWaiter"
.end annotation


# instance fields
.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->d()Z

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b()Ljava/lang/Object;
.end method
