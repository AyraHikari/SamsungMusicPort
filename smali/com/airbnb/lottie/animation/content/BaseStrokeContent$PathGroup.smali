.class final Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathGroup"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/airbnb/lottie/animation/content/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/animation/content/TrimPathContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->a:Ljava/util/List;

    .line 330
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->b:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->b:Lcom/airbnb/lottie/animation/content/TrimPathContent;

    return-object p0
.end method
