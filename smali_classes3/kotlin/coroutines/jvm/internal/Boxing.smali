.class public final Lkotlin/coroutines/jvm/internal/Boxing;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Z)Ljava/lang/Boolean;
    .locals 0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final a(C)Ljava/lang/Character;
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public static final a(D)Ljava/lang/Double;
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static final a(I)Ljava/lang/Integer;
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static final a(J)Ljava/lang/Long;
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method
