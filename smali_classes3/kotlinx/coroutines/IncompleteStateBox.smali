.class final Lkotlinx/coroutines/IncompleteStateBox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/Incomplete;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Incomplete;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/IncompleteStateBox;->a:Lkotlinx/coroutines/Incomplete;

    return-void
.end method
