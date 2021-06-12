.class public Lcom/airbnb/lottie/model/LottieCompositionCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Lcom/airbnb/lottie/model/LottieCompositionCache;


# instance fields
.field private final b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/airbnb/lottie/model/LottieCompositionCache;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->a:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->b:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public static a()Lcom/airbnb/lottie/model/LottieCompositionCache;
    .locals 1

    .line 17
    sget-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->a:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
