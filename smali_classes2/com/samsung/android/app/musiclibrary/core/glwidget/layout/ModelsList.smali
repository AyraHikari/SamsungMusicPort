.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "T",
        "ListModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ModelsList"


# instance fields
.field private mAdapterSize:I

.field private mAdapterWrap:Z

.field private mEmptyIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

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

.field private mInitialized:Z

.field private mListFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListSize:I

.field private mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSelectedAdapterIndex:I

.field private mSelectedModelIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory<",
            "T",
            "ListModel;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload<",
            "T",
            "ListModel;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterator:Ljava/util/Iterator;

    .line 100
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterable:Ljava/lang/Iterable;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    .line 109
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    .line 110
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)Ljava/util/Iterator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterator:Ljava/util/Iterator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    return-object p0
.end method

.method private reloadAll(Z)V
    .locals 4

    .line 399
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    .line 403
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 406
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 409
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    move v0, v3

    goto :goto_0

    .line 411
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 414
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v3, :cond_3

    if-gez v0, :cond_3

    .line 415
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v3, v0, -0x1

    .line 417
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    move v0, v3

    goto :goto_1

    :cond_4
    return-void
.end method

.method private reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            "IZ)V"
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 422
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    if-ge p2, v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;->reload(Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;->hide(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private selectNext()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->getLeft()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 312
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 314
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 315
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    sub-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    .line 318
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->updateSelection(Z)V

    .line 321
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 322
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    .line 323
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    :cond_1
    return-void
.end method

.method private selectPrev()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->getRight()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 291
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 293
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v2, :cond_0

    if-gez v1, :cond_0

    .line 294
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    .line 297
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->updateSelection(Z)V

    .line 300
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 301
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    if-gez v0, :cond_1

    .line 302
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getLeftFromSelected()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterable:Ljava/lang/Iterable;

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->toLeft()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getModelsCount()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    return v0
.end method

.method public getRightFromSelected()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterable:Ljava/lang/Iterable;

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->toRight()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAdapterIndex()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    return v0
.end method

.method public getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->getSelected()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    return-object v0
.end method

.method public getSelectedModelIndex()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation

    .line 214
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterator:Ljava/util/Iterator;

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadedAdapterIndex(I)Z
    .locals 6

    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 342
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    sub-int/2addr v0, v2

    .line 343
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 344
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 345
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 346
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/2addr v2, v3

    .line 348
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v4, :cond_2

    .line 349
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    rem-int/2addr v0, v4

    .line 350
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    rem-int/2addr v2, v4

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 355
    :cond_3
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    sub-int/2addr v4, v3

    if-le v2, v4, :cond_4

    .line 356
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    sub-int/2addr v2, v3

    :cond_4
    :goto_0
    if-le v0, v2, :cond_7

    if-ge p1, v0, :cond_5

    if-gt p1, v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    if-gt v0, p1, :cond_8

    if-gt p1, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public reloadAll()V
    .locals 1

    const/4 v0, 0x1

    .line 377
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V

    return-void
.end method

.method public reloadItem(I)Z
    .locals 5

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 383
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, p1, :cond_0

    .line 384
    invoke-direct {p0, v2, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setAdapterWrap(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    const/4 p1, 0x0

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V

    return-void
.end method

.method public declared-synchronized setDimensions(III)V
    .locals 4

    monitor-enter p0

    .line 132
    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    if-ne p3, v0, :cond_0

    .line 137
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    if-eqz v2, :cond_1

    .line 144
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    invoke-interface {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;->recycle(Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;

    invoke-direct {v0, p2, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;-><init>(IILcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    .line 149
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    .line 150
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    .line 151
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    .line 154
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit p0

    throw p1
.end method

.method public setSelectedAdapterIndex(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    const/4 p1, 0x0

    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V

    return-void
.end method

.method public updateSelectedAdapterIndex(Z)Z
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 260
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    .line 268
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    if-gtz v0, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->selectNext()V

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->selectPrev()V

    :goto_0
    return v2
.end method
