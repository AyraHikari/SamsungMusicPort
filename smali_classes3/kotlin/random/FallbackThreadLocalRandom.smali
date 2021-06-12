.class public final Lkotlin/random/FallbackThreadLocalRandom;
.super Lkotlin/random/AbstractPlatformRandom;
.source "SourceFile"


# instance fields
.field private final c:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lkotlin/random/AbstractPlatformRandom;-><init>()V

    .line 54
    new-instance v0, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    invoke-direct {v0}, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;-><init>()V

    iput-object v0, p0, Lkotlin/random/FallbackThreadLocalRandom;->c:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Random;
    .locals 2

    .line 60
    iget-object v0, p0, Lkotlin/random/FallbackThreadLocalRandom;->c:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    invoke-virtual {v0}, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
