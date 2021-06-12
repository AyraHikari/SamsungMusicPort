.class final Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $removed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;


# direct methods
.method constructor <init>(Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->this$0:Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;

    iput-object p2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->$removed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1434
    invoke-virtual {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->invoke(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1437
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->$removed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->this$0:Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;

    iget-object v0, v0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1;->b:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->$removed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x0

    :cond_0
    return v1
.end method
