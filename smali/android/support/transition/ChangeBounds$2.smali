.class final Landroid/support/transition/ChangeBounds$2;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$2;->get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .locals 0

    .line 90
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$2;->set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
