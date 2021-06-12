.class Landroid/support/transition/ViewGroupOverlayApi18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/ViewGroupOverlayImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method
