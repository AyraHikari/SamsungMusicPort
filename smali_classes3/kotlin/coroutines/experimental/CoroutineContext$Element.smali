.class public interface abstract Lkotlin/coroutines/experimental/CoroutineContext$Element;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/experimental/CoroutineContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Element"
.end annotation


# virtual methods
.method public abstract a(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract a()Lkotlin/coroutines/experimental/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation
.end method
