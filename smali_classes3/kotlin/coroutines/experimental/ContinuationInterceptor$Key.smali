.class public final Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/experimental/ContinuationInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
        "Lkotlin/coroutines/experimental/ContinuationInterceptor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    invoke-direct {v0}, Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;->a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
