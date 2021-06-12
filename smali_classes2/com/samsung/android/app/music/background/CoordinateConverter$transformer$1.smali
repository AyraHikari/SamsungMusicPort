.class public final Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;
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


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/CoordinateConverter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/CoordinateConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;->a:Lcom/samsung/android/app/music/background/CoordinateConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/background/FrameState;)V
    .locals 3

    const-string v0, "originalFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;->a:Lcom/samsung/android/app/music/background/CoordinateConverter;

    invoke-static {v2}, Lcom/samsung/android/app/music/background/CoordinateConverter;->a(Lcom/samsung/android/app/music/background/CoordinateConverter;)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;->a:Lcom/samsung/android/app/music/background/CoordinateConverter;

    invoke-static {v1}, Lcom/samsung/android/app/music/background/CoordinateConverter;->b(Lcom/samsung/android/app/music/background/CoordinateConverter;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p1, Lcom/samsung/android/app/music/background/FrameState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;->a(Lcom/samsung/android/app/music/background/FrameState;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
