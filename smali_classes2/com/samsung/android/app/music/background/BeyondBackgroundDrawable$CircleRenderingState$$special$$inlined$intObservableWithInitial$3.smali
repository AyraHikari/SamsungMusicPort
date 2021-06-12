.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty<",
        "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:I

.field private c:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->a:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->b:I

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->c:I

    .line 289
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;",
            "Lkotlin/reflect/KProperty<",
            "*>;)I"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->c:I

    return p1
.end method

.method public final a(I)V
    .locals 1

    .line 282
    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->c:I

    if-eq v0, p1, :cond_0

    .line 283
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->c:I

    .line 284
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->a:Lkotlin/jvm/functions/Function1;

    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;",
            "Lkotlin/reflect/KProperty<",
            "*>;I)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$3;->a(I)V

    return-void
.end method
