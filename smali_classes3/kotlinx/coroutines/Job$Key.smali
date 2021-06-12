.class public final Lkotlinx/coroutines/Job$Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$Key<",
        "Lkotlinx/coroutines/Job;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lkotlinx/coroutines/Job$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lkotlinx/coroutines/Job$Key;

    invoke-direct {v0}, Lkotlinx/coroutines/Job$Key;-><init>()V

    sput-object v0, Lkotlinx/coroutines/Job$Key;->a:Lkotlinx/coroutines/Job$Key;

    .line 95
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
