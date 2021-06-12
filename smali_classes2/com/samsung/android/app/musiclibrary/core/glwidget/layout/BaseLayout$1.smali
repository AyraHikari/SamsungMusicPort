.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onDown(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
