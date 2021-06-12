.class Landroid/support/v7/app/MediaRouteControllerDialog$7;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

.field final synthetic val$endValue:I

.field final synthetic val$startValue:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;IILandroid/view/View;)V
    .locals 0

    .line 713
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iput p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->val$startValue:I

    iput p3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->val$endValue:I

    iput-object p4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 716
    iget p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->val$startValue:I

    iget v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->val$startValue:I

    iget v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->val$endValue:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    sub-int/2addr p2, p1

    .line 717
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    return-void
.end method
