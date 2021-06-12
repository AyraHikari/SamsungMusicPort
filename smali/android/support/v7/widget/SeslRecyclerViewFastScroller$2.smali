.class Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslRecyclerViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)V
    .locals 0

    .line 265
    iput-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;->this$0:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 268
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;->this$0:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;->this$0:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->access$100(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->access$102(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;Z)Z

    return-void
.end method
