.class final Landroid/support/transition/ViewUtils$2;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 79
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewUtils$2;->get(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 84
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ViewUtils$2;->set(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
