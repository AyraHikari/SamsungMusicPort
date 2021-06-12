.class public Lcom/airbnb/lottie/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;)V
    .locals 0
    .param p4    # Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->c:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->a:Z

    .line 24
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->b:Landroid/graphics/Path$FillType;

    .line 25
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->d:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 26
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->e:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1

    .line 46
    new-instance v0, Lcom/airbnb/lottie/animation/content/FillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->d:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->e:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public d()Landroid/graphics/Path$FillType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
