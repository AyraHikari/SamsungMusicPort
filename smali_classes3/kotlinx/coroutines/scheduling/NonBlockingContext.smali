.class public final Lkotlinx/coroutines/scheduling/NonBlockingContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/scheduling/TaskContext;


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/NonBlockingContext;

.field private static final b:Lkotlinx/coroutines/scheduling/TaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/NonBlockingContext;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->a:Lkotlinx/coroutines/scheduling/NonBlockingContext;

    .line 78
    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    sput-object v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->b:Lkotlinx/coroutines/scheduling/TaskMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lkotlinx/coroutines/scheduling/TaskMode;
    .locals 1

    .line 78
    sget-object v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->b:Lkotlinx/coroutines/scheduling/TaskMode;

    return-object v0
.end method
