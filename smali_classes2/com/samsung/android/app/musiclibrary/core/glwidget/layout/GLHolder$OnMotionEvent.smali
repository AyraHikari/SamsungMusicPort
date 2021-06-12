.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMotionEvent"
.end annotation


# instance fields
.field public event:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;)V
    .locals 0

    .line 819
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->event:Landroid/view/MotionEvent;

    return-void
.end method

.method public run()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 827
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 829
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$1100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    return-void
.end method
