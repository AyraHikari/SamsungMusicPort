.class Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultSeedCompounder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedCompounder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/recommend/SeedConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSeedCompounder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultSeedCompounder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;II)Ljava/util/List;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;ILcom/samsung/android/app/music/recommend/SeedCpIdGetter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
