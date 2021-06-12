.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerView"
.end annotation


# instance fields
.field private final mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 394
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->onDraw(Landroid/graphics/Canvas;II)V

    return-void
.end method
