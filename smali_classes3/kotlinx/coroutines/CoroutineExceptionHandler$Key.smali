.class public final Lkotlinx/coroutines/CoroutineExceptionHandler$Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/CoroutineExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$Key<",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
