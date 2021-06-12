.class public final Lkotlinx/coroutines/TimeSourceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lkotlinx/coroutines/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lkotlinx/coroutines/DefaultTimeSource;->a:Lkotlinx/coroutines/DefaultTimeSource;

    check-cast v0, Lkotlinx/coroutines/TimeSource;

    sput-object v0, Lkotlinx/coroutines/TimeSourceKt;->a:Lkotlinx/coroutines/TimeSource;

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/TimeSource;
    .locals 1

    .line 39
    sget-object v0, Lkotlinx/coroutines/TimeSourceKt;->a:Lkotlinx/coroutines/TimeSource;

    return-object v0
.end method
