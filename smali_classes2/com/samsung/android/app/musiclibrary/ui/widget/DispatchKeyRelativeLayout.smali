.class public Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DispatchKeyRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:I

.field public final c:Landroid/graphics/Rect;

.field public final d:I

.field public e:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->a:Landroid/os/Handler;

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->b:I

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->c:Landroid/graphics/Rect;

    .line 5
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 6
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 7
    iget p1, p2, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->d:I

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->b:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->b:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 3
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 5
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->d:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$a;

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    const-string v3, ""

    if-le v2, v1, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$a;->a(Z)V

    const-string v0, "IME is showing"

    .line 8
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$a;->a(Z)V

    const-string v0, "IME is gone"

    .line 10
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/DispatchKeyRelativeLayout$a;

    return-void
.end method
