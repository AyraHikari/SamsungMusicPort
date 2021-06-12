.class public final Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/random/FallbackThreadLocalRandom;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Random;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Random;
    .locals 1

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method

.method public synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;->a()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method
