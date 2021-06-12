.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;
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
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

.field private c:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->c:I

    .line 371
    iget-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/music/background/CircleDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/background/CircleDrawable;->setTint(I)V

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
    iget p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->c:I

    return p1
.end method

.method public final a(I)V
    .locals 1

    .line 282
    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->c:I

    if-eq v0, p1, :cond_0

    .line 283
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->c:I

    .line 284
    iget p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->c:I

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/music/background/CircleDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/CircleDrawable;->setTint(I)V

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
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$intObservableWithInitial$1;->a(I)V

    return-void
.end method
