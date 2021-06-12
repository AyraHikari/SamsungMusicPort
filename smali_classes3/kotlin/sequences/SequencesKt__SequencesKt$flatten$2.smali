.class final Lkotlin/sequences/SequencesKt__SequencesKt$flatten$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/sequences/SequencesKt__SequencesKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Iterable<",
        "+TT;>;",
        "Ljava/util/Iterator<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/sequences/SequencesKt__SequencesKt$flatten$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$flatten$2;

    invoke-direct {v0}, Lkotlin/sequences/SequencesKt__SequencesKt$flatten$2;-><init>()V

    sput-object v0, Lkotlin/sequences/SequencesKt__SequencesKt$flatten$2;->INSTANCE:Lkotlin/sequences/SequencesKt__SequencesKt$flatten$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lkotlin/sequences/SequencesKt__SequencesKt$flatten$2;->invoke(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
