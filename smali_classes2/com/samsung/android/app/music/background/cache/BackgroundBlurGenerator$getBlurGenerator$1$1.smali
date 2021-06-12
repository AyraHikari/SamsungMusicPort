.class final Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurGenerator$1$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurGenerator$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    .line 74
    invoke-static {v0}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;)Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "blurGenerator"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getBlurGenerator()Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurGenerator$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    .line 74
    check-cast p1, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;)V

    return-void
.end method
