.class Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultRefreshScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/recommend/SeedConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultRefreshScheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultRefreshScheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/recommend/SeedConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
