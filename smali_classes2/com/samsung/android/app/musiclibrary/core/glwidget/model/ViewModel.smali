.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;
.source "SourceFile"


# instance fields
.field private mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;-><init>()V

    return-void
.end method


# virtual methods
.method public bindToView(Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->getView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 20
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 21
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 22
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-direct {v2, p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setSize(FF)V

    :cond_1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mView:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBitmapMutable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
