.class public final synthetic Lkotlinx/coroutines/CoroutineStart$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/CoroutineStart;->values()[Lkotlinx/coroutines/CoroutineStart;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->a:[I

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->a:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->a:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->a:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->a:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lkotlinx/coroutines/CoroutineStart;->values()[Lkotlinx/coroutines/CoroutineStart;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->b:[I

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->b:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->b:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->b:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lkotlinx/coroutines/CoroutineStart$WhenMappings;->b:[I

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineStart;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
