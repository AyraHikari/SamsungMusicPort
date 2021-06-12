.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 549
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    const/4 p1, 0x0

    .line 550
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 543
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-le p2, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    .line 544
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 581
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 585
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 586
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 588
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 589
    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v3, v3

    int-to-float v2, v2

    mul-float v3, v3, v2

    iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    mul-float v3, v3, v4

    int-to-float v1, v1

    mul-float v3, v3, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_2

    .line 592
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    if-nez v0, :cond_2

    .line 593
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 594
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 597
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 598
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPosition()F
    .locals 1

    .line 564
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    return v0
.end method

.method public setOffset(F)V
    .locals 0

    .line 575
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    .line 576
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    .line 559
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    .line 560
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    return-void
.end method
