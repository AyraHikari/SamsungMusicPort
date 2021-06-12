.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;
    }
.end annotation


# instance fields
.field private mMarkerChildIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

.field private mNeedReload:Z

.field private mOriginalModelSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    return-void
.end method

.method private injectOriginalModelSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->getMatrixGenerator()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;

    .line 67
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mOriginalModelSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->setOriginalModelSize(F)V

    .line 68
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mOriginalModelSize:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setOriginalModelSize(I)V

    return-void
.end method

.method private reloadMarkerModel(I)V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    aget-object p1, v1, p1

    .line 74
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->x:F

    .line 75
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->y:F

    .line 76
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setSize(FF)V

    const/4 v3, 0x1

    .line 83
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setVisibility(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setPosition(FFF)V

    .line 85
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->contentDescription:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mContentDescription:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 78
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setVisibility(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildCount()I
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getMarkers(I)[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;
    .locals 5

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mNeedReload:Z

    .line 28
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    array-length v1, v1

    if-ge v1, p1, :cond_2

    .line 29
    :cond_0
    new-array v1, p1, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 31
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 35
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;-><init>()V

    .line 37
    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setInheritAlpha(Z)V

    .line 38
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;

    invoke-direct {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V

    .line 39
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->injectOriginalModelSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;)V

    .line 40
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, p1

    .line 44
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setVisibility(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v2, p1, :cond_4

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    aget-object v0, v0, v2

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->contentDescription:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 52
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reloadMarkers()V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mNeedReload:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 59
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->reloadMarkerModel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mNeedReload:Z

    :cond_1
    return-void
.end method

.method public bridge synthetic setChild(ILcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->setChild(ILcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    move-result p1

    return p1
.end method

.method public setOriginalModelSize(I)V
    .locals 1

    .line 20
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mOriginalModelSize:I

    .line 21
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->injectOriginalModelSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method
