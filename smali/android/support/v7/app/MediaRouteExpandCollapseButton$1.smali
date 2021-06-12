.class Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteExpandCollapseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-boolean v1, v1, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mIsGroupExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mIsGroupExpanded:Z

    .line 73
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-boolean v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mIsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 76
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseGroupDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 80
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandGroupDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;->this$0:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
