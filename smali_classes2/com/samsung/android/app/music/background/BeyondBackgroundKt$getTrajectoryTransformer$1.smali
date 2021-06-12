.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundKt$getTrajectoryTransformer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Lcom/samsung/android/app/music/background/Trajectory;",
        "Lcom/samsung/android/app/music/background/CoordinateConverter;",
        "Landroid/graphics/Rect;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/background/Trajectory;Lcom/samsung/android/app/music/background/CoordinateConverter;Landroid/graphics/Rect;Z)V
    .locals 3

    const-string v0, "trajectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 902
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-direct {p4, v1, v1, v2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x2

    .line 903
    new-array p3, p3, [Lkotlin/jvm/functions/Function1;

    .line 904
    invoke-virtual {p2, p4}, Lcom/samsung/android/app/music/background/CoordinateConverter;->a(Landroid/graphics/Rect;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    aput-object v2, p3, v1

    .line 905
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->a()Z

    move-result v1

    invoke-virtual {p2, p4, v1}, Lcom/samsung/android/app/music/background/CoordinateConverter;->a(Landroid/graphics/Rect;Z)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    aput-object p2, p3, v0

    .line 903
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/background/Trajectory;->a([Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 908
    :cond_0
    new-array p4, v0, [Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/background/CoordinateConverter;->a(Landroid/graphics/Rect;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-virtual {p1, p4}, Lcom/samsung/android/app/music/background/Trajectory;->a([Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 891
    check-cast p1, Lcom/samsung/android/app/music/background/Trajectory;

    check-cast p2, Lcom/samsung/android/app/music/background/CoordinateConverter;

    check-cast p3, Landroid/graphics/Rect;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$getTrajectoryTransformer$1;->a(Lcom/samsung/android/app/music/background/Trajectory;Lcom/samsung/android/app/music/background/CoordinateConverter;Landroid/graphics/Rect;Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
