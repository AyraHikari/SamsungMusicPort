.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_TAG:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "FlatResizeLayoutVBOCache"


# instance fields
.field private mCircleVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private final mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

.field private final mVBOs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->FULL_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mVBOs:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    .line 30
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->FULL_TAG:Ljava/lang/String;

    const-string v0, "FlatResizeLayoutVBOCache initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createVBO(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;
    .locals 9

    .line 67
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache$1;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$layout$FlatResizeLayoutConfig$Shape:[I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find mesh for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mRoundedRectRadius:I

    int-to-float v2, v2

    mul-float v8, v2, v0

    .line 73
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    move-result v3

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSegmentCount:I

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getRoundedRectCoords(FIFFFF)[F

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    return-object v0

    .line 69
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getTexturedRectangle(F)[F

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getVBO(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;
    .locals 7
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    if-ne v0, v1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mCircleVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v6, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSegmentCount:I

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3fc90fdb

    const v5, 0x40fb53d1

    .line 46
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object p1

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mCircleVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mCircleVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    return-object p1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mVBOs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    if-nez v0, :cond_2

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->createVBO(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mVBOs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mVBOs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;->mCircleVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    return-void
.end method
