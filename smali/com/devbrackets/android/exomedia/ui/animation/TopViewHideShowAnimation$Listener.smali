.class Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->a:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;-><init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->a:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-static {p1}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->a(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->a:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->b(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->a:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-static {p1}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->a(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
