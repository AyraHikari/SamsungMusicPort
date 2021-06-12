.class Landroid/support/v7/widget/RecyclerView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 3449
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$10;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3463
    :try_start_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$10;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView;->access$4802(Landroid/support/v7/widget/RecyclerView;I)I

    .line 3464
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$10;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView;->access$4000(Landroid/support/v7/widget/RecyclerView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3454
    :try_start_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$10;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView;->access$4802(Landroid/support/v7/widget/RecyclerView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
