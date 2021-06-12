.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastFrameStart:J

.field mRealignRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->mRealignRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-GLBaseLayout"

    const-string v0, "skipped not aligned"

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iput p2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iput p3, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    .line 245
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    const/4 p3, 0x0

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Z)Z

    .line 246
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    invoke-static {p3, p3, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 249
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iput-boolean p3, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->mRealignRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Z)Z

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method
