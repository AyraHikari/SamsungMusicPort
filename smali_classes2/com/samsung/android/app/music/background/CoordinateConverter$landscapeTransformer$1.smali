.class public final Lcom/samsung/android/app/music/background/CoordinateConverter$landscapeTransformer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/CoordinateConverter;-><init>(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/samsung/android/app/music/background/FrameState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/background/FrameState;)V
    .locals 2

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object p1

    .line 182
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 183
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 184
    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    check-cast p1, Lcom/samsung/android/app/music/background/FrameState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/CoordinateConverter$landscapeTransformer$1;->a(Lcom/samsung/android/app/music/background/FrameState;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
