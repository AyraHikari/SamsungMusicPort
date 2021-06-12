.class final Landroid/support/v7/widget/SeslToast$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslToast;->makeTextForTooltip(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/support/v7/widget/SeslToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Landroid/support/v7/widget/SeslToast;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslToast;)V
    .locals 0

    .line 98
    iput-object p1, p0, Landroid/support/v7/widget/SeslToast$2;->val$result:Landroid/support/v7/widget/SeslToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 102
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslToast$2;->val$result:Landroid/support/v7/widget/SeslToast;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslToast;->cancel()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
