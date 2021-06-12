.class Landroid/support/design/internal/SeslTabRoundRectIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/SeslTabRoundRectIndicator;->onPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/SeslTabRoundRectIndicator;


# direct methods
.method constructor <init>(Landroid/support/design/internal/SeslTabRoundRectIndicator;)V
    .locals 0

    .line 110
    iput-object p1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator$1;->this$0:Landroid/support/design/internal/SeslTabRoundRectIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 121
    iget-object p1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator$1;->this$0:Landroid/support/design/internal/SeslTabRoundRectIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->access$002(Landroid/support/design/internal/SeslTabRoundRectIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
