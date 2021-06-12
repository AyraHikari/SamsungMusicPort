.class Landroid/support/v7/widget/TooltipPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/TooltipPopup;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/TooltipPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/TooltipPopup;)V
    .locals 0

    .line 80
    iput-object p1, p0, Landroid/support/v7/widget/TooltipPopup$1;->this$0:Landroid/support/v7/widget/TooltipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 84
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup$1;->this$0:Landroid/support/v7/widget/TooltipPopup;

    invoke-virtual {p1}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    return v0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 88
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup$1;->this$0:Landroid/support/v7/widget/TooltipPopup;

    invoke-virtual {p1}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
