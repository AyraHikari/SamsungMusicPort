.class public interface abstract Lkotlin/coroutines/experimental/ContinuationInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;->a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    sput-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation
.end method
