.class public interface abstract Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Scene"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene$Animator;
    }
.end annotation


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public abstract a(Landroid/view/ViewGroup;)V
.end method

.method public abstract a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .param p2    # Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .param p1    # Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
