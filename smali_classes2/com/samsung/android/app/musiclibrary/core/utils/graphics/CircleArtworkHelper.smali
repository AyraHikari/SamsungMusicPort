.class public final Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sColors:[I

.field private static sPositions:[F

.field private static sRotationDegrees:Ljava/lang/Float;


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 2

    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sColors:[I

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$array;->music_library_circle_artwork_effect_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sColors:[I

    .line 32
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sColors:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 7

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sPositions:[F

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$array;->music_library_circle_artwork_effect_positions:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 39
    array-length v1, v0

    new-array v1, v1, [F

    .line 41
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 42
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 44
    :cond_0
    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sPositions:[F

    .line 46
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sPositions:[F

    return-object v0
.end method

.method public getRotationDegrees()F
    .locals 2

    .line 50
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sRotationDegrees:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$integer;->music_library_circle_artwork_effect_angle:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 51
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sRotationDegrees:Ljava/lang/Float;

    .line 54
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->sRotationDegrees:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
