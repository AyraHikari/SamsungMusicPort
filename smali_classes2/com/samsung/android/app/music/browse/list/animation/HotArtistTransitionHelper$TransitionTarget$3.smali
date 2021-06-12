.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$3;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 587
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$3;->a(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
