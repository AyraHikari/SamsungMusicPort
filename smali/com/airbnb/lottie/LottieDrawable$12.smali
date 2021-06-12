.class Lcom/airbnb/lottie/LottieDrawable$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->a(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/model/KeyPath;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/airbnb/lottie/value/LottieValueCallback;

.field final synthetic d:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$12;->d:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$12;->a:Lcom/airbnb/lottie/model/KeyPath;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$12;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/LottieDrawable$12;->c:Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .line 773
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$12;->d:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$12;->a:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$12;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$12;->c:Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->a(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method
