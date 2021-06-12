.class public final Lkotlinx/coroutines/JobImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    const/4 v0, 0x1

    .line 1185
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 1186
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobImpl;->a(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1185
    check-cast p1, Lkotlinx/coroutines/Job;

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method


# virtual methods
.method protected E_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
