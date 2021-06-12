.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty;


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
        "Lcom/samsung/android/app/musiclibrary/ui/util/FloatReadWriteProperty<",
        "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:F

.field private c:F


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->a:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->b:F

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->c:F

    .line 320
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;",
            "Lkotlin/reflect/KProperty<",
            "*>;)F"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->c:F

    return p1
.end method

.method public final a(F)V
    .locals 1

    .line 313
    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->c:F

    cmpg-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 314
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->c:F

    .line 315
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->a:Lkotlin/jvm/functions/Function1;

    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lkotlin/reflect/KProperty;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;",
            "Lkotlin/reflect/KProperty<",
            "*>;F)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$floatObservableWithInitial$2;->a(F)V

    return-void
.end method
