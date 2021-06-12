.class final Lkotlinx/coroutines/CompletedIdempotentResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlinx/coroutines/NotCompleted;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/NotCompleted;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/CompletedIdempotentResult;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/CompletedIdempotentResult;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/CompletedIdempotentResult;->c:Lkotlinx/coroutines/NotCompleted;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompletedIdempotentResult["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/CompletedIdempotentResult;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
