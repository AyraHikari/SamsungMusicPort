.class final Landroid/support/transition/Slide$3;
.super Landroid/support/transition/Slide$CalculateSlideVertical;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Landroid/support/transition/Slide$CalculateSlideVertical;-><init>(Landroid/support/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    return p2
.end method
