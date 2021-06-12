.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EvictionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 433
    check-cast p1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction;->a(Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;)V

    return-void
.end method
