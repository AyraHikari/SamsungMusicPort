.class public final Lkotlinx/coroutines/NonDisposableHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/ChildHandle;
.implements Lkotlinx/coroutines/DisposableHandle;


# static fields
.field public static final a:Lkotlinx/coroutines/NonDisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 557
    new-instance v0, Lkotlinx/coroutines/NonDisposableHandle;

    invoke-direct {v0}, Lkotlinx/coroutines/NonDisposableHandle;-><init>()V

    sput-object v0, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
