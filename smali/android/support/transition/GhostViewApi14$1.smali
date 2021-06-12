.class Landroid/support/transition/GhostViewApi14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/GhostViewApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/GhostViewApi14;


# direct methods
.method constructor <init>(Landroid/support/transition/GhostViewApi14;)V
    .locals 0

    .line 114
    iput-object p1, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 118
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iget-object v1, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iget-object v1, v1, Landroid/support/transition/GhostViewApi14;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, v0, Landroid/support/transition/GhostViewApi14;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 120
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iget-object v0, v0, Landroid/support/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iget-object v0, v0, Landroid/support/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iget-object v0, v0, Landroid/support/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iget-object v1, v1, Landroid/support/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iget-object v0, v0, Landroid/support/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    .line 125
    iget-object v0, p0, Landroid/support/transition/GhostViewApi14$1;->this$0:Landroid/support/transition/GhostViewApi14;

    iput-object v1, v0, Landroid/support/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
