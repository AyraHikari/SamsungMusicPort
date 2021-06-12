.class public final Lkotlinx/coroutines/scheduling/NanoTimeSource;
.super Lkotlinx/coroutines/scheduling/TimeSource;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/NanoTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/NanoTimeSource;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->a:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/TimeSource;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
