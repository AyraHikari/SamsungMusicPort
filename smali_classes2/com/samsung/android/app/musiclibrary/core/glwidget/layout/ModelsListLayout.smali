.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ModelsListLayout"


# instance fields
.field private mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field protected final mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPendingSelectedAlbumSizeChangedRequest:Z

.field private mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    .line 139
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    .line 151
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    .line 38
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    return-void
.end method


# virtual methods
.method protected abstract animateToChild(I)V
.end method

.method protected doRealign()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign()V

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->fireOnSelectedAlbumSizeChanged()V

    :cond_0
    return-void
.end method

.method protected doReload()V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll()V

    :cond_0
    return-void
.end method

.method protected fireOnSelectedAlbumSizeChanged()V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    return-void

    .line 186
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 188
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const-wide/16 v2, 0xa

    .line 190
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "SMUSIC-ModelsListLayout"

    const-string v1, "unable to fireOnSelectedAlbumSizeChanged"

    .line 194
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getSelection()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedAdapterIndex()I

    move-result v0

    return v0
.end method

.method protected abstract obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation
.end method

.method protected abstract recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            ")V"
        }
    .end annotation
.end method

.method public reloadItem(I)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadItem(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    :cond_0
    return-void
.end method

.method protected abstract reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            "IZ)V"
        }
    .end annotation
.end method

.method public reloadView()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doReload()V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->stopAnimation()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, p2, :cond_1

    const/4 v1, 0x1

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    if-eqz v1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doRealign()V

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doReload()V

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->fireOnSelectedAlbumSizeChanged()V

    return-void
.end method

.method public setAdapterWrap(Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setAdapterWrap(Z)V

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->setAdapterWrap(Z)V

    return-void
.end method

.method protected setListParams(II)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setDimensions(III)V

    :cond_0
    return-void
.end method

.method public setSelection(IZ)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAligned:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->getSelection()I

    move-result v0

    if-eq v0, p1, :cond_5

    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->animateToChild(I)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->getSelection()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 96
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->loadedAdapterIndex(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->getSelection()I

    move-result v0

    if-ge v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->updateSelectedAdapterIndex(Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doRealign()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->fireOnSelectedAlbumSizeChanged()V

    goto :goto_1

    .line 104
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doRealign()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->fireOnSelectedAlbumSizeChanged()V

    :cond_5
    :goto_1
    return-void

    .line 83
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAligned:Z

    return-void
.end method
