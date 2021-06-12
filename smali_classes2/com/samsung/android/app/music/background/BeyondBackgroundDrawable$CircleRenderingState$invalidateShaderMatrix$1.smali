.class final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateShaderMatrix$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateShaderMatrix$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 289
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateShaderMatrix$1;->invoke(F)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 1

    .line 366
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$invalidateShaderMatrix$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    move-result-object p1

    const/4 v0, 0x1

    .line 913
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->b(Z)V

    return-void
.end method
