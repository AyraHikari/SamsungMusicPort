.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->replaceVisibleView(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

.field final synthetic val$endView:Landroid/view/View;

.field final synthetic val$mode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

.field final synthetic val$startView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$mode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$endView:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$startView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$mode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$endView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$startView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$startView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;Z)Z

    .line 117
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applied rendering mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;->val$mode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
