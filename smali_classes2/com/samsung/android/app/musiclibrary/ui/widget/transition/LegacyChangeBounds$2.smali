.class final Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$2;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .locals 0

    .line 53
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$2;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$2;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
