.class public interface abstract Landroid/support/v4/view/NestedScrollingChild;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dispatchNestedFling(FFZ)Z
.end method

.method public abstract dispatchNestedPreFling(FF)Z
.end method

.method public abstract dispatchNestedPreScroll(II[I[I)Z
    .param p3    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract dispatchNestedScroll(IIII[I)Z
    .param p5    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract hasNestedScrollingParent()Z
.end method

.method public abstract isNestedScrollingEnabled()Z
.end method

.method public abstract setNestedScrollingEnabled(Z)V
.end method

.method public abstract startNestedScroll(I)Z
.end method

.method public abstract stopNestedScroll()V
.end method
