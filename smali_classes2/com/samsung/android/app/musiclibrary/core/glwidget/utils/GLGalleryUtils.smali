.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;
    }
.end annotation


# static fields
.field public static final DEBUG_SURFACE_FORMAT:Z

.field public static final PERFORMANCE_TEST:Z

.field public static final PROFILING:Z

.field static mHSV1:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

.field static mHSV2:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

.field static mRes:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV1:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV2:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    .line 127
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mRes:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mix(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static mix(IIF)I
    .locals 1

    int-to-float p0, p0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method

.method public static mix(JJF)J
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    long-to-float p0, p0

    mul-float v0, v0, p0

    long-to-float p0, p2

    mul-float p4, p4, p0

    add-float/2addr v0, p4

    float-to-long p0, v0

    return-wide p0
.end method

.method public static mixColorsHSV(IIF)I
    .locals 6

    .line 105
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV1:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 106
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mHSV2:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 107
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mRes:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils$ThreadLoacalFloatBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 108
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 109
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 111
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 112
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x3

    if-ge p0, p1, :cond_0

    .line 114
    aget p1, v0, p0

    aget v5, v1, p0

    invoke-static {p1, v5, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(FFF)F

    move-result p1

    aput p1, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v3, v4, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result p0

    invoke-static {p0, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static mixColorsRGB(IIF)I
    .locals 6

    .line 83
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 84
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 85
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 87
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 88
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 89
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 90
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 91
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result p0

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result p1

    invoke-static {v2, v3, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result v0

    .line 92
    invoke-static {v4, v5, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLGalleryUtils;->mix(IIF)I

    move-result p2

    .line 91
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static modMax(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 154
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static modMin(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 145
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    .line 147
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
