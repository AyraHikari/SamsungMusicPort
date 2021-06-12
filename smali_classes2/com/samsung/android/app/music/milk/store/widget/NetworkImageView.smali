.class public Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "NetworkImageView"

.field private static f:F = 1.0f


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/lang/String;

.field public d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

.field private final g:Landroid/os/Handler$Callback;

.field private final h:Landroid/os/Handler;

.field private i:F

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a:I

    .line 34
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->b:I

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->g:Landroid/os/Handler$Callback;

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->g:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->i:F

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->j:I

    .line 77
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->k:I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    if-eqz p2, :cond_5

    .line 103
    sget-object p3, Lcom/samsung/android/app/music/R$styleable;->MilkNetworkImageView:[I

    .line 104
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setShowImageOnError(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 111
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setShowImageOnLoading(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 113
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->j:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 115
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->k:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 243
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/"

    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    .line 252
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 255
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 257
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 262
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeUri : Encoding URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 175
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;ILandroid/graphics/Bitmap$Config;)V
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;ILandroid/graphics/Bitmap$Config;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    sget-object p2, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadImage :  url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1000b6

    if-eqz p3, :cond_1

    .line 162
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->d:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->c:Ljava/lang/String;

    .line 164
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p2

    .line 165
    invoke-virtual {p2, p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->h:Landroid/os/Handler;

    .line 166
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p2

    .line 169
    invoke-virtual {p2, p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p0, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 149
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->e:Ljava/lang/String;

    const-string p2, "loadImage : url is null!!"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 152
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTargetHeight()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->k:I

    return v0
.end method

.method protected getTargetWidth()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->j:I

    return v0
.end method

.method protected getViewHeight()I
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getViewWidth()I
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 230
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 232
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-lez p1, :cond_0

    int-to-float p2, p1

    .line 234
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->i:F

    mul-float p2, p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 236
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setDimensRatio(F)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->i:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setShowImageOnError(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->a:I

    return-void
.end method

.method public setShowImageOnLoading(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->b:I

    return-void
.end method
